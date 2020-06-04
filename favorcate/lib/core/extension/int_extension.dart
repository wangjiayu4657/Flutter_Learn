import 'package:favorcate/ui/share/fit_util.dart';

extension IntExtension on int {
  double get px {
    return FitUtil.setPx(this.toDouble());
  }

  double get rpx {
    return FitUtil.setRpx(this.toDouble());
  }
}