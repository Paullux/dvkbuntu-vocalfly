#ifndef QLAUNCHER_H
#define QLAUNCHER_H

#include <QQuickItem>
#include <QObject>
#include <QProcess>

class QLauncher : public QObject
{
    Q_OBJECT

public:
    explicit QLauncher(QObject *parent = 0);
    ~QLauncher();
    Q_INVOKABLE QString launch(const QString &program);

protected:
    QProcess *m_process;
};

#endif // QLAUNCHER_H
