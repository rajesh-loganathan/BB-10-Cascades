/****************************************************************************
** Meta object code from reading C++ file 'applicationui.hpp'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.5)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../src/applicationui.hpp"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'applicationui.hpp' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.5. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_ApplicationUI[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
      16,   14, // methods
      12,   94, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
      12,       // signalCount

 // signals: signature, parameters, type, tag, flags
      15,   14,   14,   14, 0x05,
      36,   14,   14,   14, 0x05,
      48,   14,   14,   14, 0x05,
      65,   14,   14,   14, 0x05,
      82,   14,   14,   14, 0x05,
      99,   14,   14,   14, 0x05,
     117,   14,   14,   14, 0x05,
     134,   14,   14,   14, 0x05,
     150,   14,   14,   14, 0x05,
     167,   14,   14,   14, 0x05,
     186,   14,   14,   14, 0x05,
     202,   14,   14,   14, 0x05,

 // slots: signature, parameters, type, tag, flags
     218,   14,   14,   14, 0x0a,
     311,  244,   14,   14, 0x0a,
     398,   14,   14,   14, 0x0a,
     412,   14,   14,   14, 0x08,

 // properties: name, type, flags
     433,  425, 0x0a495003,
     445,  425, 0x0a495003,
     448,  425, 0x0a495003,
     456,  425, 0x0a495003,
     464,  425, 0x0a495003,
     472,  425, 0x0a495003,
     481,  425, 0x0a495003,
     489,  425, 0x0a495003,
     496,  425, 0x0a495003,
     504,  425, 0x0a495003,
     519,  514, 0x01495001,
     529,  514, 0x01495001,

 // properties: notify_signal_id
       0,
       1,
       2,
       3,
       4,
       5,
       6,
       7,
       8,
       9,
      10,
      11,

       0        // eod
};

static const char qt_meta_stringdata_ApplicationUI[] = {
    "ApplicationUI\0\0companynameChanged()\0"
    "hrChanged()\0emailidChanged()\0"
    "addressChanged()\0phonenoChanged()\0"
    "passwordChanged()\0vnumberChanged()\0"
    "vmodelChanged()\0urllinkChanged()\0"
    "urlResultChanged()\0statusChanged()\0"
    "activeChanged()\0onSystemLanguageChanged()\0"
    "company,hr,emailid,address,phoneno,password,vnumber,vmodel,urllink\0"
    "clickedButton(QString,QString,QString,QString,QString,QString,QString,"
    "QString,QString)\0"
    "sendRequest()\0onFinished()\0QString\0"
    "companyname\0hr\0emailid\0address\0phoneno\0"
    "password\0vnumber\0vmodel\0urllink\0"
    "urlResult\0bool\0succeeded\0active\0"
};

void ApplicationUI::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        ApplicationUI *_t = static_cast<ApplicationUI *>(_o);
        switch (_id) {
        case 0: _t->companynameChanged(); break;
        case 1: _t->hrChanged(); break;
        case 2: _t->emailidChanged(); break;
        case 3: _t->addressChanged(); break;
        case 4: _t->phonenoChanged(); break;
        case 5: _t->passwordChanged(); break;
        case 6: _t->vnumberChanged(); break;
        case 7: _t->vmodelChanged(); break;
        case 8: _t->urllinkChanged(); break;
        case 9: _t->urlResultChanged(); break;
        case 10: _t->statusChanged(); break;
        case 11: _t->activeChanged(); break;
        case 12: _t->onSystemLanguageChanged(); break;
        case 13: _t->clickedButton((*reinterpret_cast< const QString(*)>(_a[1])),(*reinterpret_cast< const QString(*)>(_a[2])),(*reinterpret_cast< const QString(*)>(_a[3])),(*reinterpret_cast< const QString(*)>(_a[4])),(*reinterpret_cast< const QString(*)>(_a[5])),(*reinterpret_cast< const QString(*)>(_a[6])),(*reinterpret_cast< const QString(*)>(_a[7])),(*reinterpret_cast< const QString(*)>(_a[8])),(*reinterpret_cast< const QString(*)>(_a[9]))); break;
        case 14: _t->sendRequest(); break;
        case 15: _t->onFinished(); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData ApplicationUI::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject ApplicationUI::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_ApplicationUI,
      qt_meta_data_ApplicationUI, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &ApplicationUI::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *ApplicationUI::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *ApplicationUI::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_ApplicationUI))
        return static_cast<void*>(const_cast< ApplicationUI*>(this));
    return QObject::qt_metacast(_clname);
}

int ApplicationUI::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 16)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 16;
    }
#ifndef QT_NO_PROPERTIES
      else if (_c == QMetaObject::ReadProperty) {
        void *_v = _a[0];
        switch (_id) {
        case 0: *reinterpret_cast< QString*>(_v) = companyname(); break;
        case 1: *reinterpret_cast< QString*>(_v) = hr(); break;
        case 2: *reinterpret_cast< QString*>(_v) = emailid(); break;
        case 3: *reinterpret_cast< QString*>(_v) = address(); break;
        case 4: *reinterpret_cast< QString*>(_v) = phoneno(); break;
        case 5: *reinterpret_cast< QString*>(_v) = password(); break;
        case 6: *reinterpret_cast< QString*>(_v) = vnumber(); break;
        case 7: *reinterpret_cast< QString*>(_v) = vmodel(); break;
        case 8: *reinterpret_cast< QString*>(_v) = urllink(); break;
        case 9: *reinterpret_cast< QString*>(_v) = urlResult(); break;
        case 10: *reinterpret_cast< bool*>(_v) = succeeded(); break;
        case 11: *reinterpret_cast< bool*>(_v) = active(); break;
        }
        _id -= 12;
    } else if (_c == QMetaObject::WriteProperty) {
        void *_v = _a[0];
        switch (_id) {
        case 0: setcompanyname(*reinterpret_cast< QString*>(_v)); break;
        case 1: sethr(*reinterpret_cast< QString*>(_v)); break;
        case 2: setemailid(*reinterpret_cast< QString*>(_v)); break;
        case 3: setaddress(*reinterpret_cast< QString*>(_v)); break;
        case 4: setphoneno(*reinterpret_cast< QString*>(_v)); break;
        case 5: setpassword(*reinterpret_cast< QString*>(_v)); break;
        case 6: setvnumber(*reinterpret_cast< QString*>(_v)); break;
        case 7: setvmodel(*reinterpret_cast< QString*>(_v)); break;
        case 8: seturllink(*reinterpret_cast< QString*>(_v)); break;
        case 9: seturlResult(*reinterpret_cast< QString*>(_v)); break;
        }
        _id -= 12;
    } else if (_c == QMetaObject::ResetProperty) {
        _id -= 12;
    } else if (_c == QMetaObject::QueryPropertyDesignable) {
        _id -= 12;
    } else if (_c == QMetaObject::QueryPropertyScriptable) {
        _id -= 12;
    } else if (_c == QMetaObject::QueryPropertyStored) {
        _id -= 12;
    } else if (_c == QMetaObject::QueryPropertyEditable) {
        _id -= 12;
    } else if (_c == QMetaObject::QueryPropertyUser) {
        _id -= 12;
    }
#endif // QT_NO_PROPERTIES
    return _id;
}

// SIGNAL 0
void ApplicationUI::companynameChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 0, 0);
}

// SIGNAL 1
void ApplicationUI::hrChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 1, 0);
}

// SIGNAL 2
void ApplicationUI::emailidChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 2, 0);
}

// SIGNAL 3
void ApplicationUI::addressChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 3, 0);
}

// SIGNAL 4
void ApplicationUI::phonenoChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 4, 0);
}

// SIGNAL 5
void ApplicationUI::passwordChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 5, 0);
}

// SIGNAL 6
void ApplicationUI::vnumberChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 6, 0);
}

// SIGNAL 7
void ApplicationUI::vmodelChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 7, 0);
}

// SIGNAL 8
void ApplicationUI::urllinkChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 8, 0);
}

// SIGNAL 9
void ApplicationUI::urlResultChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 9, 0);
}

// SIGNAL 10
void ApplicationUI::statusChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 10, 0);
}

// SIGNAL 11
void ApplicationUI::activeChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 11, 0);
}
QT_END_MOC_NAMESPACE
