/****************************************************************************
** Meta object code from reading C++ file 'backend.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.7.0)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../Chatting/backend.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'backend.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.7.0. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_Backend_t {
    QByteArrayData data[14];
    char stringdata0[168];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_Backend_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_Backend_t qt_meta_stringdata_Backend = {
    {
QT_MOC_LITERAL(0, 0, 7), // "Backend"
QT_MOC_LITERAL(1, 8, 15), // "closeConnection"
QT_MOC_LITERAL(2, 24, 0), // ""
QT_MOC_LITERAL(3, 25, 3), // "msg"
QT_MOC_LITERAL(4, 29, 11), // "haveMessage"
QT_MOC_LITERAL(5, 41, 17), // "haveNewConnection"
QT_MOC_LITERAL(6, 59, 11), // "sendSuccess"
QT_MOC_LITERAL(7, 71, 13), // "NewConnection"
QT_MOC_LITERAL(8, 85, 10), // "NewMessage"
QT_MOC_LITERAL(9, 96, 13), // "CloseDetected"
QT_MOC_LITERAL(10, 110, 13), // "onSendSuccess"
QT_MOC_LITERAL(11, 124, 14), // "onStartClicked"
QT_MOC_LITERAL(12, 139, 14), // "onCloseClicked"
QT_MOC_LITERAL(13, 154, 13) // "onSendClicked"

    },
    "Backend\0closeConnection\0\0msg\0haveMessage\0"
    "haveNewConnection\0sendSuccess\0"
    "NewConnection\0NewMessage\0CloseDetected\0"
    "onSendSuccess\0onStartClicked\0"
    "onCloseClicked\0onSendClicked"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_Backend[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
      11,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       4,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    1,   69,    2, 0x06 /* Public */,
       4,    1,   72,    2, 0x06 /* Public */,
       5,    1,   75,    2, 0x06 /* Public */,
       6,    0,   78,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
       7,    1,   79,    2, 0x08 /* Private */,
       8,    1,   82,    2, 0x08 /* Private */,
       9,    1,   85,    2, 0x08 /* Private */,
      10,    0,   88,    2, 0x08 /* Private */,

 // methods: name, argc, parameters, tag, flags
      11,    0,   89,    2, 0x02 /* Public */,
      12,    0,   90,    2, 0x02 /* Public */,
      13,    1,   91,    2, 0x02 /* Public */,

 // signals: parameters
    QMetaType::Void, QMetaType::QString,    3,
    QMetaType::Void, QMetaType::QByteArray,    3,
    QMetaType::Void, QMetaType::QString,    3,
    QMetaType::Void,

 // slots: parameters
    QMetaType::Void, QMetaType::QString,    3,
    QMetaType::Void, QMetaType::QByteArray,    3,
    QMetaType::Void, QMetaType::QString,    3,
    QMetaType::Void,

 // methods: parameters
    QMetaType::QString,
    QMetaType::QString,
    QMetaType::Void, QMetaType::QByteArray,    3,

       0        // eod
};

void Backend::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Backend *_t = static_cast<Backend *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->closeConnection((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 1: _t->haveMessage((*reinterpret_cast< QByteArray(*)>(_a[1]))); break;
        case 2: _t->haveNewConnection((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 3: _t->sendSuccess(); break;
        case 4: _t->NewConnection((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 5: _t->NewMessage((*reinterpret_cast< QByteArray(*)>(_a[1]))); break;
        case 6: _t->CloseDetected((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 7: _t->onSendSuccess(); break;
        case 8: { QString _r = _t->onStartClicked();
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = _r; }  break;
        case 9: { QString _r = _t->onCloseClicked();
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = _r; }  break;
        case 10: _t->onSendClicked((*reinterpret_cast< QByteArray(*)>(_a[1]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        void **func = reinterpret_cast<void **>(_a[1]);
        {
            typedef void (Backend::*_t)(QString );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&Backend::closeConnection)) {
                *result = 0;
                return;
            }
        }
        {
            typedef void (Backend::*_t)(QByteArray );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&Backend::haveMessage)) {
                *result = 1;
                return;
            }
        }
        {
            typedef void (Backend::*_t)(QString );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&Backend::haveNewConnection)) {
                *result = 2;
                return;
            }
        }
        {
            typedef void (Backend::*_t)();
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&Backend::sendSuccess)) {
                *result = 3;
                return;
            }
        }
    }
}

const QMetaObject Backend::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_Backend.data,
      qt_meta_data_Backend,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *Backend::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *Backend::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_Backend.stringdata0))
        return static_cast<void*>(const_cast< Backend*>(this));
    return QObject::qt_metacast(_clname);
}

int Backend::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 11)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 11;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 11)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 11;
    }
    return _id;
}

// SIGNAL 0
void Backend::closeConnection(QString _t1)
{
    void *_a[] = { Q_NULLPTR, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void Backend::haveMessage(QByteArray _t1)
{
    void *_a[] = { Q_NULLPTR, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void Backend::haveNewConnection(QString _t1)
{
    void *_a[] = { Q_NULLPTR, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}

// SIGNAL 3
void Backend::sendSuccess()
{
    QMetaObject::activate(this, &staticMetaObject, 3, Q_NULLPTR);
}
QT_END_MOC_NAMESPACE
