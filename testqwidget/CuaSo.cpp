#include "CuaSo.h"
CuaSo::CuaSo() : QWidget(){
    setFixedSize(200, 100);
    m_lcd = new QLCDNumber(this);
    m_lcd->setSegmentStyle(QLCDNumber::Flat);
    m_lcd->move(50, 20);
    m_thanhGiaTri = new QSlider(Qt::Horizontal, this);
    m_thanhGiaTri->setGeometry(10, 60, 150, 20);

    QObject::connect(m_thanhGiaTri, SIGNAL(valueChanged(int)), this, SLOT(thayDoiChieuRong(int)));

}

void CuaSo::thayDoiChieuRong(int chieuRong){
    setFixedSize(chieuRong, 100);
}
