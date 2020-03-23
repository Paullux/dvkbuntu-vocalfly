#ifndef QLAUNCHER_H
#define QLAUNCHER_H

#include <QQuickItem>
#include <QProcess>
#include <QObject>

class QLauncher : public QObject
{
    Q_OBJECT

public:
    explicit QLauncher(QObject *parent = 0);
    ~QLauncher();
    Q_INVOKABLE QString launch(const QString &program);

protected:
    QProcess *m_process = new QProcess;
};

#endif // QLAUNCHER_H
