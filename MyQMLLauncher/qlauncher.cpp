#include "qlauncher.h"
#include "global.h"
#include <QProcess>
#include <QObject>
#include <QMediaObject>
#include <QMediaPlayer>
#include <QFileInfo>

QLauncher::QLauncher(QObject *parent):
    QObject(parent)//,
    //m_process(new QProcess(this))
{

}

QString QLauncher::launch(const QString &program)
{
    QProcessEnvironment env = QProcessEnvironment::systemEnvironment();

    global::player.stop();
    m_process->kill();
    m_process->start(program);
    m_process->waitForFinished(-1);
    // check if path exists and if yes: Is it a file and no directory?
    path = QUrl::fromLocalFile(env.value("HOME") + "/.local/share/dvkbuntu/sonEnCours.wav");
    pathStr = path.toString();
    fileExists = QFileInfo::exists(pathStr) && QFileInfo(pathStr).isFile();
    if (fileExists) {
        global::player.setVolume(50);
        global::player.setMedia(path);
        global::player.play();
    }
    QByteArray bytes = m_process->readAllStandardOutput();
    QString output = QString::fromLocal8Bit(bytes);
    return output;
}

QLauncher::~QLauncher()
{
}
