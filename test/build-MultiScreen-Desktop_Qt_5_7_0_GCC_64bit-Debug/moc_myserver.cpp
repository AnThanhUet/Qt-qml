/****************************************************************************
** Meta object code from reading C++ file 'myserver.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.7.0)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../Chatting/myserver.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'myserver.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.7.0. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_MyServer_t {
    QByteArrayData data[12];
    char stringdata0[141];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_MyServer_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_MyServer_t qt_meta_stringdata_MyServer = {
    {
QT_MOC_LITERAL(0, 0, 8), // "MyServer"
QT_MOC_LITERAL(1, 9, 16), // "connectionChange"
QT_MOC_LITERAL(2, 26, 0), // ""
QT_MOC_LITERAL(3, 27, 15), // "closeConnection"
QT_MOC_LITERAL(4, 43, 3), // "msg"
QT_MOC_LITERAL(5, 47, 17), // "haveNewConnection"
QT_MOC_LITERAL(6, 65, 11), // "haveMessage"
QT_MOC_LITERAL(7, 77, 11), // "SendMessage"
QT_MOC_LITERAL(8, 89, 11), // "sendSuccess"
QT_MOC_LITERAL(9, 101, 13), // "onDisconected"
QT_MOC_LITERAL(10, 115, 11), // "onReadyRead"
QT_MOC_LITERAL(11, 127, 13) // "onSendSuccess"

    },
    "MyServer\0connectionChange\0\0closeConnection\0"
    "msg\0haveNewConnection\0haveMessage\0"
    "SendMessage\0sendSuccess\0onDisconected\0"
    "onReadyRead\0onSendSuccess"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_MyServer[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       9,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       6,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    0,   59,    2, 0x06 /* Public */,
       3,    1,   60,    2, 0x06 /* Public */,
       5,    1,   63,    2, 0x06 /* Public */,
       6,    1,   66,    2, 0x06 /* Public */,
       7,    1,   69,    2, 0x06 /* Public */,
       8,    0,   72,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
       9,    0,   73,    2, 0x0a /* Public */,
      10,    1,   74,    2, 0x0a /* Public */,
      11,    0,   77,    2, 0x0a /* Public */,

 // signals: parameters
    QMetaType::Void,
    QMetaType::Void, QMetaType::QString,    4,
    QMetaType::Void, QMetaType::QString,    4,
    QMetaType::Void, QMetaType::QByteArray,    4,
    QMetaType::Void, QMetaType::QByteArray,    4,
    QMetaType::Void,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void, QMetaType::QByteArray,    4,
    QMetaType::Void,

       0        // eod
};

void MyServer::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        MyServer *_t = static_cast<MyServer *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->connectionChange(); break;
        case 1: _t->closeConnection((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 2: _t->haveNewConnection((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 3: _t->haveMessage((*reinterpret_cast< QByteArray(*)>(_a[1]))); break;
        case 4: _t->SendMessage((*reinterpret_cast< QByteArray(*)>(_a[1]))); break;
        case 5: _t->sendSuccess(); break;
        case 6: _t->onDisconected(); break;
        case 7: _t->onReadyRead((*reinterpret_cast< QByteArray(*)>(_a[1]))); break;
        case 8: _t->onSendSuccess(); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        void **func = reinterpret_cast<void **>(_a[1]);
        {
            typedef void (MyServer::*_t)();
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&MyServer::connectionChange)) {
                *result = 0;
                return;
            }
        }
        {
            typedef void (MyServer::*_t)(QString );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&MyServer::closeConnection)) {
                *result = 1;
                return;
            }
        }
        {
            typedef void (MyServer::*_t)(QString );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&MyServer::haveNewConnection)) {
                *result = 2;
                return;
            }
        }
        {
            typedef void (MyServer::*_t)(QByteArray );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&MyServer::haveMessage)) {
                *result = 3;
                return;
            }
        }
        {
            typedef void (MyServer::*_t)(QByteArray );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&MyServer::SendMessage)) {
                *result = 4;
                return;
            }
        }
        {
            typedef void (MyServer::*_t)();
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&MyServer::sendSuccess)) {
                *result = 5;
                return;
            }
        }
    }
}

const QMetaObject MyServer::staticMetaObject = {
    { &QTcpServer::staticMetaObject, qt_meta_stringdata_MyServer.data,
      qt_meta_data_MyServer,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *MyServer::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *MyServer::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_MyServer.stringdata0))
        return static_cast<void*>(const_cast< MyServer*>(this));
    return QTcpServer::qt_metacast(_clname);
}

int MyServer::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QTcpServer::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 9)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 9;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 9)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 9;
    }
    return _id;
}

// SIGNAL 0
void MyServer::connectionChange()
{
    QMetaObject::activate(this, &staticMetaObject, 0, Q_NULLPTR);
}

// SIGNAL 1
void MyServer::closeConnection(QString _t1)
{
    void *_a[] = { Q_NULLPTR, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void MyServer::haveNewConnection(QString _t1)
{
    void *_a[] = { Q_NULLPTR, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}

// SIGNAL 3
void MyServer::haveMessage(QByteArray _t1)
{
    void *_a[] = { Q_NULLPTR, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 3, _a);
}

// SIGNAL 4
void MyServer::SendMessage(QByteArray _t1)
{
    void *_a[] = { Q_NULLPTR, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 4, _a);
}

// SIGNAL 5
void MyServer::sendSuccess()
{
    QMetaObject::activate(this, &staticMetaObject, 5, Q_NULLPTR);
}
QT_END_MOC_NAMESPACE
