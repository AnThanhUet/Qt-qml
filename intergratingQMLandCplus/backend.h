#ifndef BACKEND_H
#define BACKEND_H
#include <QObject>
#include <QString>
#include <qqml.h>
class MyTestClass : public QObject
{
    Q_OBJECT
public:
    MyTestClass(QObject *parent = nullptr);
    //public slots or q_INVOKABLE
    Q_INVOKABLE void callFromInvokableMethod();

    Q_PROPERTY(int count READ count WRITE setCount NOTIFY countChanged)
    int getValue();
    void setValue(int value);
    int count() const;
    QString userNameChanged() const;

signals:
    void valueChanged();
    void somethingHasChanged();
    void countChanged(int count);
    void userNameChangedChanged(QString userNameChanged);
private:
    int m_value;
    int m_count;


public slots:
void callFromSlotMethod();
void setCount(int count);

#endif // BACKEND_H
