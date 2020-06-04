import 'dart:ui';


class FitUtil {

 static double dpr;
 static double width;
 static double height;
 static double statusHeight;
 static double rpx;
 static double px;

 static void initialize({double standardWidth = 750}) {
    //手机物理分辨率
    final physicalWidth = window.physicalSize.width;
    final physicalHeight = window.physicalSize.height;

    dpr = window.devicePixelRatio;

    //逻辑分辨率
    width = physicalWidth / dpr;
    height = physicalHeight / dpr;

    //状态栏的高度
    statusHeight = window.padding.top / dpr;

    rpx = width / standardWidth;
    px = height / standardWidth * 2;
  }

   static double setRpx(double size){
     return rpx * size;
   }

   static double setPx(double size) {
     return px * size;
   }
}