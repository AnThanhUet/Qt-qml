#ifndef DEF_CUASO
#define DEF_CUASO
#include <QApplication>
#include <QWidget>
#include <QPushButton>
#include <QLCDNumber>
#include <QSlider>

class CuaSo : public QWidget{
    Q_OBJECT
    public:
      CuaSo();
      void annt(int a);
    private:
      QLCDNumber *m_lcd;
      QSlider *m_thanhGiaTri;
    public slots:
      void thayDoiChieuRong(int chieuRong);
};
#endif
