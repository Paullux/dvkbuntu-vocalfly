#include "qlauncher.h"
#include "global.h"
#include <QProcess>
#include <QObject>
#include <QMediaObject>
#include <QMediaPlayer>

QLauncher::QLauncher(QObject *parent):
    QObject(parent)//,
    //m_process(new QProcess(this))
{

}

QString QLauncher::launch(const QString &program)
{
    //if (global::programdAvant != program) {
        //global::programdAvant = program;
        global::player.stop();
        m_process->kill();
        m_process->start(program);
        m_process->waitForFinished(-1);
        QProcessEnvironment env = QProcessEnvironment::systemEnvironment();
        global::player.setVolume(50);
        global::player.setMedia(QUrl::fromLocalFile(env.value("HOME") + "/.local/share/dvkbuntu/sonEnCours.wav"));
        global::player.play();
        QByteArray bytes = m_process->readAllStandardOutput();
        QString output = QString::fromLocal8Bit(bytes);
        return output;
    /*} else {
        return program;
    }*/
}

QLauncher::~QLauncher()
{
}
