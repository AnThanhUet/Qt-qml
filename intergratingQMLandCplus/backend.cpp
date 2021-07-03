#include "backend.h"
#include <QDebug>

MyTestClass::MyTestClass(QObject *parent):QObject(parent)
{
    m_value = 0;
    //m_userName = "alo";
}

int MyTestClass::getValue()
{
    qDebug() << "MyTestClas::getValue";
    return m_value;
}

void MyTestClass::setValue(int newValue)
{
    qDebug() << "MyTestClass::setValue(int newValue)";
    if (newValue != m_value)
    {
        m_value = newValue;
        emit valueChanged();
    }
    emit somethingHasChanged();
}

void MyTestClass::callFromInvokableMethod()
{
    qDebug() << "MyTestClass::callFromInvokableMethod()";
    setValue(m_value - 5);
}

void MyTestClass::callFromSlotMethod()
{
    qDebug() << "MyTestClass::callFromSlotMethod()";
    setValue(m_value + 5);
}

void MyTestClass::setCount(int count)
{
    if (m_count == count)
        return;

    m_count = count;
    emit countChanged(count);
}

\


int MyTestClass::count() const
{
    return m_count;
}

\
