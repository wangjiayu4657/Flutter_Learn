import 'package:favorcate/ui/share/fit_util.dart';

extension DoubleExtension on double {
  double get px {
    return FitUtil.setPx(this);
  }

  double get rpx {
    return FitUtil.setRpx(this);
  }
}

