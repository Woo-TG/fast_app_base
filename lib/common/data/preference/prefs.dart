// import 'package:fast_app_base/common/data/preference/item/nullable_preference_item.dart';
import 'package:fast_app_base/common/data/preference/item/preference_item.dart';
import 'package:fast_app_base/common/theme/custom_theme.dart';

// import 'item/preference_item.dart';
import 'item/rx_preference_item.dart';
import 'item/rxn_preference_item.dart';


class Prefs {
  static final appTheme = PreferenceItem<CustomTheme>('appTheme', CustomTheme.dark);
  static final isPushOn = PreferenceItem<bool>('isPushOn', false);
  // static final isPush3 = NullablePreferenceItem<String>('isPushOn');  // 예시
  static final isPushOnRx = RxPreferenceItem<bool, RxBool>('isPushOnRx', false);
  static final sliderPosion = RxPreferenceItem<double, RxDouble>('sliderPosion', 0.0);
  static final birthday = RxnPreferenceItem<DateTime, Rxn<DateTime>>('birthday');
  static final number = RxPreferenceItem<int, RxInt>('number', 0);
}
