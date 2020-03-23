#include "qlauncher.h"

QLauncher::QLauncher(QObject *parent):
    QObject(parent),
    m_process(new QProcess(this))
{

}

QString QLauncher::launch(const QString &program)
{
    m_process->start(program);
    m_process->waitForFinished(2000);
    QByteArray bytes = m_process->readAllStandardOutput();
    QString output = QString::fromLocal8Bit(bytes);
    return output;
}

QLauncher::~QLauncher()
{
}
