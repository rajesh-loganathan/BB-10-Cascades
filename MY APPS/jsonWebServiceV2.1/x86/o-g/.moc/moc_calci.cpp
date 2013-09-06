/****************************************************************************
** Meta object code from reading C++ file 'calci.hpp'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.5)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../src/calci.hpp"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'calci.hpp' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.5. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_controller[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       6,   14, // methods
       5,   44, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       4,       // signalCount

 // signals: signature, parameters, type, tag, flags
      12,   11,   11,   11, 0x05,
      28,   11,   11,   11, 0x05,
      44,   11,   11,   11, 0x05,
      65,   11,   11,   11, 0x05,

 // slots: signature, parameters, type, tag, flags
      99,   86,   11,   11, 0x0a,
     120,   11,   11,   11, 0x08,

 // properties: name, type, flags
     158,  133, 0x00095409,
     169,  164, 0x01495001,
     179,  164, 0x01495001,
     194,  186, 0x0a495001,
     206,  186, 0x0a495001,

 // properties: notify_signal_id
       0,
       0,
       1,
       2,
       3,

       0        // eod
};

static const char qt_meta_stringdata_controller[] = {
    "controller\0\0statusChanged()\0activeChanged()\0"
    "temperatureChanged()\0descriptionChanged()\0"
    "CategoryName\0sendRequest(QString)\0"
    "onFinished()\0bb::cascades::DataModel*\0"
    "model\0bool\0succeeded\0active\0QString\0"
    "temperature\0description\0"
};

void controller::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        controller *_t = static_cast<controller *>(_o);
        switch (_id) {
        case 0: _t->statusChanged(); break;
        case 1: _t->activeChanged(); break;
        case 2: _t->temperatureChanged(); break;
        case 3: _t->descriptionChanged(); break;
        case 4: _t->sendRequest((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 5: _t->onFinished(); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData controller::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject controller::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_controller,
      qt_meta_data_controller, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &controller::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *controller::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *controller::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_controller))
        return static_cast<void*>(const_cast< controller*>(this));
    return QObject::qt_metacast(_clname);
}

int controller::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 6)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 6;
    }
#ifndef QT_NO_PROPERTIES
      else if (_c == QMetaObject::ReadProperty) {
        void *_v = _a[0];
        switch (_id) {
        case 0: *reinterpret_cast< bb::cascades::DataModel**>(_v) = model(); break;
        case 1: *reinterpret_cast< bool*>(_v) = succeeded(); break;
        case 2: *reinterpret_cast< bool*>(_v) = active(); break;
        case 3: *reinterpret_cast< QString*>(_v) = temperature(); break;
        case 4: *reinterpret_cast< QString*>(_v) = description(); break;
        }
        _id -= 5;
    } else if (_c == QMetaObject::WriteProperty) {
        _id -= 5;
    } else if (_c == QMetaObject::ResetProperty) {
        _id -= 5;
    } else if (_c == QMetaObject::QueryPropertyDesignable) {
        _id -= 5;
    } else if (_c == QMetaObject::QueryPropertyScriptable) {
        _id -= 5;
    } else if (_c == QMetaObject::QueryPropertyStored) {
        _id -= 5;
    } else if (_c == QMetaObject::QueryPropertyEditable) {
        _id -= 5;
    } else if (_c == QMetaObject::QueryPropertyUser) {
        _id -= 5;
    }
#endif // QT_NO_PROPERTIES
    return _id;
}

// SIGNAL 0
void controller::statusChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 0, 0);
}

// SIGNAL 1
void controller::activeChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 1, 0);
}

// SIGNAL 2
void controller::temperatureChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 2, 0);
}

// SIGNAL 3
void controller::descriptionChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 3, 0);
}
QT_END_MOC_NAMESPACE
