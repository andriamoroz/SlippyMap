QT       += core gui
QT       += network widgets

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++17


# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    lightmaps.cpp \
    main.cpp \
    mainwindow.cpp \
    slippymap.cpp

HEADERS += \
    lightmaps.h \
    mainwindow.h \
    slippymap.h

FORMS += \
    mainwindow.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    map/10/602/349.png \
    map/10/602/350.png \
    map/10/603/349.png \
    map/10/603/350.png \
    map/10/604/349.png \
    map/10/604/350.png \
    map/11/1204/698.png \
    map/11/1204/699.png \
    map/11/1204/700.png \
    map/11/1205/698.png \
    map/11/1205/699.png \
    map/11/1205/700.png \
    map/11/1206/698.png \
    map/11/1206/699.png \
    map/11/1206/700.png \
    map/11/1207/698.png \
    map/11/1207/699.png \
    map/11/1207/700.png \
    map/11/1208/698.png \
    map/11/1208/699.png \
    map/11/1208/700.png \
    map/12/2408/1397.png \
    map/12/2408/1398.png \
    map/12/2408/1399.png \
    map/12/2408/1400.png \
    map/12/2409/1397.png \
    map/12/2409/1398.png \
    map/12/2409/1399.png \
    map/12/2409/1400.png \
    map/12/2410/1397.png \
    map/12/2410/1398.png \
    map/12/2410/1399.png \
    map/12/2410/1400.png \
    map/12/2411/1397.png \
    map/12/2411/1398.png \
    map/12/2411/1399.png \
    map/12/2411/1400.png \
    map/12/2412/1397.png \
    map/12/2412/1398.png \
    map/12/2412/1399.png \
    map/12/2412/1400.png \
    map/12/2413/1397.png \
    map/12/2413/1398.png \
    map/12/2413/1399.png \
    map/12/2413/1400.png \
    map/12/2414/1397.png \
    map/12/2414/1398.png \
    map/12/2414/1399.png \
    map/12/2414/1400.png \
    map/12/2415/1397.png \
    map/12/2415/1398.png \
    map/12/2415/1399.png \
    map/12/2415/1400.png \
    map/12/2416/1397.png \
    map/12/2416/1398.png \
    map/12/2416/1399.png \
    map/12/2416/1400.png \
    map/12/2417/1397.png \
    map/12/2417/1398.png \
    map/12/2417/1399.png \
    map/12/2417/1400.png \
    map/13/4816/2794.png \
    map/13/4816/2795.png \
    map/13/4816/2796.png \
    map/13/4816/2797.png \
    map/13/4816/2798.png \
    map/13/4816/2799.png \
    map/13/4816/2800.png \
    map/13/4816/2801.png \
    map/13/4817/2794.png \
    map/13/4817/2795.png \
    map/13/4817/2796.png \
    map/13/4817/2797.png \
    map/13/4817/2798.png \
    map/13/4817/2799.png \
    map/13/4817/2800.png \
    map/13/4817/2801.png \
    map/13/4818/2794.png \
    map/13/4818/2795.png \
    map/13/4818/2796.png \
    map/13/4818/2797.png \
    map/13/4818/2798.png \
    map/13/4818/2799.png \
    map/13/4818/2800.png \
    map/13/4818/2801.png \
    map/13/4819/2794.png \
    map/13/4819/2795.png \
    map/13/4819/2796.png \
    map/13/4819/2797.png \
    map/13/4819/2798.png \
    map/13/4819/2799.png \
    map/13/4819/2800.png \
    map/13/4819/2801.png \
    map/13/4820/2794.png \
    map/13/4820/2795.png \
    map/13/4820/2796.png \
    map/13/4820/2797.png \
    map/13/4820/2798.png \
    map/13/4820/2799.png \
    map/13/4820/2800.png \
    map/13/4820/2801.png \
    map/13/4821/2794.png \
    map/13/4821/2795.png \
    map/13/4821/2796.png \
    map/13/4821/2797.png \
    map/13/4821/2798.png \
    map/13/4821/2799.png \
    map/13/4821/2800.png \
    map/13/4821/2801.png \
    map/13/4822/2794.png \
    map/13/4822/2795.png \
    map/13/4822/2796.png \
    map/13/4822/2797.png \
    map/13/4822/2798.png \
    map/13/4822/2799.png \
    map/13/4822/2800.png \
    map/13/4822/2801.png \
    map/13/4823/2794.png \
    map/13/4823/2795.png \
    map/13/4823/2796.png \
    map/13/4823/2797.png \
    map/13/4823/2798.png \
    map/13/4823/2799.png \
    map/13/4823/2800.png \
    map/13/4823/2801.png \
    map/13/4824/2794.png \
    map/13/4824/2795.png \
    map/13/4824/2796.png \
    map/13/4824/2797.png \
    map/13/4824/2798.png \
    map/13/4824/2799.png \
    map/13/4824/2800.png \
    map/13/4824/2801.png \
    map/13/4825/2794.png \
    map/13/4825/2795.png \
    map/13/4825/2796.png \
    map/13/4825/2797.png \
    map/13/4825/2798.png \
    map/13/4825/2799.png \
    map/13/4825/2800.png \
    map/13/4825/2801.png \
    map/13/4826/2794.png \
    map/13/4826/2795.png \
    map/13/4826/2796.png \
    map/13/4826/2797.png \
    map/13/4826/2798.png \
    map/13/4826/2799.png \
    map/13/4826/2800.png \
    map/13/4826/2801.png \
    map/13/4827/2794.png \
    map/13/4827/2795.png \
    map/13/4827/2796.png \
    map/13/4827/2797.png \
    map/13/4827/2798.png \
    map/13/4827/2799.png \
    map/13/4827/2800.png \
    map/13/4827/2801.png \
    map/13/4828/2794.png \
    map/13/4828/2795.png \
    map/13/4828/2796.png \
    map/13/4828/2797.png \
    map/13/4828/2798.png \
    map/13/4828/2799.png \
    map/13/4828/2800.png \
    map/13/4828/2801.png \
    map/13/4829/2794.png \
    map/13/4829/2795.png \
    map/13/4829/2796.png \
    map/13/4829/2797.png \
    map/13/4829/2798.png \
    map/13/4829/2799.png \
    map/13/4829/2800.png \
    map/13/4829/2801.png \
    map/13/4830/2794.png \
    map/13/4830/2795.png \
    map/13/4830/2796.png \
    map/13/4830/2797.png \
    map/13/4830/2798.png \
    map/13/4830/2799.png \
    map/13/4830/2800.png \
    map/13/4830/2801.png \
    map/13/4831/2794.png \
    map/13/4831/2795.png \
    map/13/4831/2796.png \
    map/13/4831/2797.png \
    map/13/4831/2798.png \
    map/13/4831/2799.png \
    map/13/4831/2800.png \
    map/13/4831/2801.png \
    map/13/4832/2794.png \
    map/13/4832/2795.png \
    map/13/4832/2796.png \
    map/13/4832/2797.png \
    map/13/4832/2798.png \
    map/13/4832/2799.png \
    map/13/4832/2800.png \
    map/13/4832/2801.png \
    map/13/4833/2794.png \
    map/13/4833/2795.png \
    map/13/4833/2796.png \
    map/13/4833/2797.png \
    map/13/4833/2798.png \
    map/13/4833/2799.png \
    map/13/4833/2800.png \
    map/13/4833/2801.png \
    map/13/4834/2794.png \
    map/13/4834/2795.png \
    map/13/4834/2796.png \
    map/13/4834/2797.png \
    map/13/4834/2798.png \
    map/13/4834/2799.png \
    map/13/4834/2800.png \
    map/13/4834/2801.png \
    map/13/4835/2794.png \
    map/13/4835/2795.png \
    map/13/4835/2796.png \
    map/13/4835/2797.png \
    map/13/4835/2798.png \
    map/13/4835/2799.png \
    map/13/4835/2800.png \
    map/13/4835/2801.png \
    map/14/9633/5589.png \
    map/14/9633/5590.png \
    map/14/9633/5591.png \
    map/14/9633/5592.png \
    map/14/9633/5593.png \
    map/14/9633/5594.png \
    map/14/9633/5595.png \
    map/14/9633/5596.png \
    map/14/9633/5597.png \
    map/14/9633/5598.png \
    map/14/9633/5599.png \
    map/14/9633/5600.png \
    map/14/9633/5601.png \
    map/14/9633/5602.png \
    map/14/9634/5589.png \
    map/14/9634/5590.png \
    map/14/9634/5591.png \
    map/14/9634/5592.png \
    map/14/9634/5593.png \
    map/14/9634/5594.png \
    map/14/9634/5595.png \
    map/14/9634/5596.png \
    map/14/9634/5597.png \
    map/14/9634/5598.png \
    map/14/9634/5599.png \
    map/14/9634/5600.png \
    map/14/9634/5601.png \
    map/14/9634/5602.png \
    map/14/9635/5589.png \
    map/14/9635/5590.png \
    map/14/9635/5591.png \
    map/14/9635/5592.png \
    map/14/9635/5593.png \
    map/14/9635/5594.png \
    map/14/9635/5595.png \
    map/14/9635/5596.png \
    map/14/9635/5597.png \
    map/14/9635/5598.png \
    map/14/9635/5599.png \
    map/14/9635/5600.png \
    map/14/9635/5601.png \
    map/14/9635/5602.png \
    map/14/9636/5589.png \
    map/14/9636/5590.png \
    map/14/9636/5591.png \
    map/14/9636/5592.png \
    map/14/9636/5593.png \
    map/14/9636/5594.png \
    map/14/9636/5595.png \
    map/14/9636/5596.png \
    map/14/9636/5597.png \
    map/14/9636/5598.png \
    map/14/9636/5599.png \
    map/14/9636/5600.png \
    map/14/9636/5601.png \
    map/14/9636/5602.png \
    map/14/9637/5589.png \
    map/14/9637/5590.png \
    map/14/9637/5591.png \
    map/14/9637/5592.png \
    map/14/9637/5593.png \
    map/14/9637/5594.png \
    map/14/9637/5595.png \
    map/14/9637/5596.png \
    map/14/9637/5597.png \
    map/14/9637/5598.png \
    map/14/9637/5599.png \
    map/14/9637/5600.png \
    map/14/9637/5601.png \
    map/14/9637/5602.png \
    map/14/9638/5589.png \
    map/14/9638/5590.png \
    map/14/9638/5591.png \
    map/14/9638/5592.png \
    map/14/9638/5593.png \
    map/14/9638/5594.png \
    map/14/9638/5595.png \
    map/14/9638/5596.png \
    map/14/9638/5597.png \
    map/14/9638/5598.png \
    map/14/9638/5599.png \
    map/14/9638/5600.png \
    map/14/9638/5601.png \
    map/14/9638/5602.png \
    map/14/9639/5589.png \
    map/14/9639/5590.png \
    map/14/9639/5591.png \
    map/14/9639/5592.png \
    map/14/9639/5593.png \
    map/14/9639/5594.png \
    map/14/9639/5595.png \
    map/14/9639/5596.png \
    map/14/9639/5597.png \
    map/14/9639/5598.png \
    map/14/9639/5599.png \
    map/14/9639/5600.png \
    map/14/9639/5601.png \
    map/14/9639/5602.png \
    map/14/9640/5589.png \
    map/14/9640/5590.png \
    map/14/9640/5591.png \
    map/14/9640/5592.png \
    map/14/9640/5593.png \
    map/14/9640/5594.png \
    map/14/9640/5595.png \
    map/14/9640/5596.png \
    map/14/9640/5597.png \
    map/14/9640/5598.png \
    map/14/9640/5599.png \
    map/14/9640/5600.png \
    map/14/9640/5601.png \
    map/14/9640/5602.png \
    map/14/9641/5589.png \
    map/14/9641/5590.png \
    map/14/9641/5591.png \
    map/14/9641/5592.png \
    map/14/9641/5593.png \
    map/14/9641/5594.png \
    map/14/9641/5595.png \
    map/14/9641/5596.png \
    map/14/9641/5597.png \
    map/14/9641/5598.png \
    map/14/9641/5599.png \
    map/14/9641/5600.png \
    map/14/9641/5601.png \
    map/14/9641/5602.png \
    map/14/9642/5589.png \
    map/14/9642/5590.png \
    map/14/9642/5591.png \
    map/14/9642/5592.png \
    map/14/9642/5593.png \
    map/14/9642/5594.png \
    map/14/9642/5595.png \
    map/14/9642/5596.png \
    map/14/9642/5597.png \
    map/14/9642/5598.png \
    map/14/9642/5599.png \
    map/14/9642/5600.png \
    map/14/9642/5601.png \
    map/14/9642/5602.png \
    map/14/9643/5589.png \
    map/14/9643/5590.png \
    map/14/9643/5591.png \
    map/14/9643/5592.png \
    map/14/9643/5593.png \
    map/14/9643/5594.png \
    map/14/9643/5595.png \
    map/14/9643/5596.png \
    map/14/9643/5597.png \
    map/14/9643/5598.png \
    map/14/9643/5599.png \
    map/14/9643/5600.png \
    map/14/9643/5601.png \
    map/14/9643/5602.png \
    map/14/9644/5589.png \
    map/14/9644/5590.png \
    map/14/9644/5591.png \
    map/14/9644/5592.png \
    map/14/9644/5593.png \
    map/14/9644/5594.png \
    map/14/9644/5595.png \
    map/14/9644/5596.png \
    map/14/9644/5597.png \
    map/14/9644/5598.png \
    map/14/9644/5599.png \
    map/14/9644/5600.png \
    map/14/9644/5601.png \
    map/14/9644/5602.png \
    map/14/9645/5589.png \
    map/14/9645/5590.png \
    map/14/9645/5591.png \
    map/14/9645/5592.png \
    map/14/9645/5593.png \
    map/14/9645/5594.png \
    map/14/9645/5595.png \
    map/14/9645/5596.png \
    map/14/9645/5597.png \
    map/14/9645/5598.png \
    map/14/9645/5599.png \
    map/14/9645/5600.png \
    map/14/9645/5601.png \
    map/14/9645/5602.png \
    map/14/9646/5589.png \
    map/14/9646/5590.png \
    map/14/9646/5591.png \
    map/14/9646/5592.png \
    map/14/9646/5593.png \
    map/14/9646/5594.png \
    map/14/9646/5595.png \
    map/14/9646/5596.png \
    map/14/9646/5597.png \
    map/14/9646/5598.png \
    map/14/9646/5599.png \
    map/14/9646/5600.png \
    map/14/9646/5601.png \
    map/14/9646/5602.png \
    map/14/9647/5589.png \
    map/14/9647/5590.png \
    map/14/9647/5591.png \
    map/14/9647/5592.png \
    map/14/9647/5593.png \
    map/14/9647/5594.png \
    map/14/9647/5595.png \
    map/14/9647/5596.png \
    map/14/9647/5597.png \
    map/14/9647/5598.png \
    map/14/9647/5599.png \
    map/14/9647/5600.png \
    map/14/9647/5601.png \
    map/14/9647/5602.png \
    map/14/9648/5589.png \
    map/14/9648/5590.png \
    map/14/9648/5591.png \
    map/14/9648/5592.png \
    map/14/9648/5593.png \
    map/14/9648/5594.png \
    map/14/9648/5595.png \
    map/14/9648/5596.png \
    map/14/9648/5597.png \
    map/14/9648/5598.png \
    map/14/9648/5599.png \
    map/14/9648/5600.png \
    map/14/9648/5601.png \
    map/14/9648/5602.png \
    map/14/9649/5589.png \
    map/14/9649/5590.png \
    map/14/9649/5591.png \
    map/14/9649/5592.png \
    map/14/9649/5593.png \
    map/14/9649/5594.png \
    map/14/9649/5595.png \
    map/14/9649/5596.png \
    map/14/9649/5597.png \
    map/14/9649/5598.png \
    map/14/9649/5599.png \
    map/14/9649/5600.png \
    map/14/9649/5601.png \
    map/14/9649/5602.png \
    map/14/9650/5589.png \
    map/14/9650/5590.png \
    map/14/9650/5591.png \
    map/14/9650/5592.png \
    map/14/9650/5593.png \
    map/14/9650/5594.png \
    map/14/9650/5595.png \
    map/14/9650/5596.png \
    map/14/9650/5597.png \
    map/14/9650/5598.png \
    map/14/9650/5599.png \
    map/14/9650/5600.png \
    map/14/9650/5601.png \
    map/14/9650/5602.png \
    map/14/9651/5589.png \
    map/14/9651/5590.png \
    map/14/9651/5591.png \
    map/14/9651/5592.png \
    map/14/9651/5593.png \
    map/14/9651/5594.png \
    map/14/9651/5595.png \
    map/14/9651/5596.png \
    map/14/9651/5597.png \
    map/14/9651/5598.png \
    map/14/9651/5599.png \
    map/14/9651/5600.png \
    map/14/9651/5601.png \
    map/14/9651/5602.png \
    map/14/9652/5589.png \
    map/14/9652/5590.png \
    map/14/9652/5591.png \
    map/14/9652/5592.png \
    map/14/9652/5593.png \
    map/14/9652/5594.png \
    map/14/9652/5595.png \
    map/14/9652/5596.png \
    map/14/9652/5597.png \
    map/14/9652/5598.png \
    map/14/9652/5599.png \
    map/14/9652/5600.png \
    map/14/9652/5601.png \
    map/14/9652/5602.png \
    map/14/9653/5589.png \
    map/14/9653/5590.png \
    map/14/9653/5591.png \
    map/14/9653/5592.png \
    map/14/9653/5593.png \
    map/14/9653/5594.png \
    map/14/9653/5595.png \
    map/14/9653/5596.png \
    map/14/9653/5597.png \
    map/14/9653/5598.png \
    map/14/9653/5599.png \
    map/14/9653/5600.png \
    map/14/9653/5601.png \
    map/14/9653/5602.png \
    map/14/9654/5589.png \
    map/14/9654/5590.png \
    map/14/9654/5591.png \
    map/14/9654/5592.png \
    map/14/9654/5593.png \
    map/14/9654/5594.png \
    map/14/9654/5595.png \
    map/14/9654/5596.png \
    map/14/9654/5597.png \
    map/14/9654/5598.png \
    map/14/9654/5599.png \
    map/14/9654/5600.png \
    map/14/9654/5601.png \
    map/14/9654/5602.png \
    map/14/9655/5589.png \
    map/14/9655/5590.png \
    map/14/9655/5591.png \
    map/14/9655/5592.png \
    map/14/9655/5593.png \
    map/14/9655/5594.png \
    map/14/9655/5595.png \
    map/14/9655/5596.png \
    map/14/9655/5597.png \
    map/14/9655/5598.png \
    map/14/9655/5599.png \
    map/14/9655/5600.png \
    map/14/9655/5601.png \
    map/14/9655/5602.png \
    map/14/9656/5589.png \
    map/14/9656/5590.png \
    map/14/9656/5591.png \
    map/14/9656/5592.png \
    map/14/9656/5593.png \
    map/14/9656/5594.png \
    map/14/9656/5595.png \
    map/14/9656/5596.png \
    map/14/9656/5597.png \
    map/14/9656/5598.png \
    map/14/9656/5599.png \
    map/14/9656/5600.png \
    map/14/9656/5601.png \
    map/14/9656/5602.png \
    map/14/9657/5589.png \
    map/14/9657/5590.png \
    map/14/9657/5591.png \
    map/14/9657/5592.png \
    map/14/9657/5593.png \
    map/14/9657/5594.png \
    map/14/9657/5595.png \
    map/14/9657/5596.png \
    map/14/9657/5597.png \
    map/14/9657/5598.png \
    map/14/9657/5599.png \
    map/14/9657/5600.png \
    map/14/9657/5601.png \
    map/14/9657/5602.png \
    map/14/9658/5589.png \
    map/14/9658/5590.png \
    map/14/9658/5591.png \
    map/14/9658/5592.png \
    map/14/9658/5593.png \
    map/14/9658/5594.png \
    map/14/9658/5595.png \
    map/14/9658/5596.png \
    map/14/9658/5597.png \
    map/14/9658/5598.png \
    map/14/9658/5599.png \
    map/14/9658/5600.png \
    map/14/9658/5601.png \
    map/14/9658/5602.png \
    map/14/9659/5589.png \
    map/14/9659/5590.png \
    map/14/9659/5591.png \
    map/14/9659/5592.png \
    map/14/9659/5593.png \
    map/14/9659/5594.png \
    map/14/9659/5595.png \
    map/14/9659/5596.png \
    map/14/9659/5597.png \
    map/14/9659/5598.png \
    map/14/9659/5599.png \
    map/14/9659/5600.png \
    map/14/9659/5601.png \
    map/14/9659/5602.png \
    map/14/9660/5589.png \
    map/14/9660/5590.png \
    map/14/9660/5591.png \
    map/14/9660/5592.png \
    map/14/9660/5593.png \
    map/14/9660/5594.png \
    map/14/9660/5595.png \
    map/14/9660/5596.png \
    map/14/9660/5597.png \
    map/14/9660/5598.png \
    map/14/9660/5599.png \
    map/14/9660/5600.png \
    map/14/9660/5601.png \
    map/14/9660/5602.png \
    map/14/9661/5589.png \
    map/14/9661/5590.png \
    map/14/9661/5591.png \
    map/14/9661/5592.png \
    map/14/9661/5593.png \
    map/14/9661/5594.png \
    map/14/9661/5595.png \
    map/14/9661/5596.png \
    map/14/9661/5597.png \
    map/14/9661/5598.png \
    map/14/9661/5599.png \
    map/14/9661/5600.png \
    map/14/9661/5601.png \
    map/14/9661/5602.png \
    map/14/9662/5589.png \
    map/14/9662/5590.png \
    map/14/9662/5591.png \
    map/14/9662/5592.png \
    map/14/9662/5593.png \
    map/14/9662/5594.png \
    map/14/9662/5595.png \
    map/14/9662/5596.png \
    map/14/9662/5597.png \
    map/14/9662/5598.png \
    map/14/9662/5599.png \
    map/14/9662/5600.png \
    map/14/9662/5601.png \
    map/14/9662/5602.png \
    map/14/9663/5589.png \
    map/14/9663/5590.png \
    map/14/9663/5591.png \
    map/14/9663/5592.png \
    map/14/9663/5593.png \
    map/14/9663/5594.png \
    map/14/9663/5595.png \
    map/14/9663/5596.png \
    map/14/9663/5597.png \
    map/14/9663/5598.png \
    map/14/9663/5599.png \
    map/14/9663/5600.png \
    map/14/9663/5601.png \
    map/14/9663/5602.png \
    map/14/9664/5589.png \
    map/14/9664/5590.png \
    map/14/9664/5591.png \
    map/14/9664/5592.png \
    map/14/9664/5593.png \
    map/14/9664/5594.png \
    map/14/9664/5595.png \
    map/14/9664/5596.png \
    map/14/9664/5597.png \
    map/14/9664/5598.png \
    map/14/9664/5599.png \
    map/14/9664/5600.png \
    map/14/9664/5601.png \
    map/14/9664/5602.png \
    map/14/9665/5589.png \
    map/14/9665/5590.png \
    map/14/9665/5591.png \
    map/14/9665/5592.png \
    map/14/9665/5593.png \
    map/14/9665/5594.png \
    map/14/9665/5595.png \
    map/14/9665/5596.png \
    map/14/9665/5597.png \
    map/14/9665/5598.png \
    map/14/9665/5599.png \
    map/14/9665/5600.png \
    map/14/9665/5601.png \
    map/14/9665/5602.png \
    map/14/9666/5589.png \
    map/14/9666/5590.png \
    map/14/9666/5591.png \
    map/14/9666/5592.png \
    map/14/9666/5593.png \
    map/14/9666/5594.png \
    map/14/9666/5595.png \
    map/14/9666/5596.png \
    map/14/9666/5597.png \
    map/14/9666/5598.png \
    map/14/9666/5599.png \
    map/14/9666/5600.png \
    map/14/9666/5601.png \
    map/14/9666/5602.png \
    map/14/9667/5589.png \
    map/14/9667/5590.png \
    map/14/9667/5591.png \
    map/14/9667/5592.png \
    map/14/9667/5593.png \
    map/14/9667/5594.png \
    map/14/9667/5595.png \
    map/14/9667/5596.png \
    map/14/9667/5597.png \
    map/14/9667/5598.png \
    map/14/9667/5599.png \
    map/14/9667/5600.png \
    map/14/9667/5601.png \
    map/14/9667/5602.png \
    map/14/9668/5589.png \
    map/14/9668/5590.png \
    map/14/9668/5591.png \
    map/14/9668/5592.png \
    map/14/9668/5593.png \
    map/14/9668/5594.png \
    map/14/9668/5595.png \
    map/14/9668/5596.png \
    map/14/9668/5597.png \
    map/14/9668/5598.png \
    map/14/9668/5599.png \
    map/14/9668/5600.png \
    map/14/9668/5601.png \
    map/14/9668/5602.png \
    map/14/9669/5589.png \
    map/14/9669/5590.png \
    map/14/9669/5591.png \
    map/14/9669/5592.png \
    map/14/9669/5593.png \
    map/14/9669/5594.png \
    map/14/9669/5595.png \
    map/14/9669/5596.png \
    map/14/9669/5597.png \
    map/14/9669/5598.png \
    map/14/9669/5599.png \
    map/14/9669/5600.png \
    map/14/9669/5601.png \
    map/14/9669/5602.png \
    map/14/9670/5589.png \
    map/14/9670/5590.png \
    map/14/9670/5591.png \
    map/14/9670/5592.png \
    map/14/9670/5593.png \
    map/14/9670/5594.png \
    map/14/9670/5595.png \
    map/14/9670/5596.png \
    map/14/9670/5597.png \
    map/14/9670/5598.png \
    map/14/9670/5599.png \
    map/14/9670/5600.png \
    map/14/9670/5601.png \
    map/14/9670/5602.png \
    map/14/9671/5589.png \
    map/14/9671/5590.png \
    map/14/9671/5591.png \
    map/14/9671/5592.png \
    map/14/9671/5593.png \
    map/14/9671/5594.png \
    map/14/9671/5595.png \
    map/14/9671/5596.png \
    map/14/9671/5597.png \
    map/14/9671/5598.png \
    map/14/9671/5599.png \
    map/14/9671/5600.png \
    map/14/9671/5601.png \
    map/14/9671/5602.png \
    map/tiles.json
