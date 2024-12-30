import 'package:allylearn/core/constants/constants_export.dart';
import 'utils_export.dart';

class Loader {
  Loader._();

  static CancelFunc? _cancel;

  static Widget loaderWidget() {
    return Center(
      child: CupertinoActivityIndicator(
        radius: Sizes.s14.h,
        color: AppColor.primary,
      ),
    );
  }

  static void showLoader() {
    _cancel = BotToast.showCustomLoading(
      toastBuilder: (cancelFunc) {
        return Container(
          height: Sizes.s70.h,
          width: Sizes.s70.h,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(Sizes.s8.r),
          ),
          child: loaderWidget(),
        );
      },
    );
  }

  static void dismiss() {
    if (_cancel != null) _cancel!();
  }
}

showSnackBar({
  String title = kAppName,
  required String message,
  required String type,
  MaterialColor? color,
}) {
  return Get.snackbar(
    title, // title
    message, // message
    backgroundColor: color ?? (type == warning ? AppColor.red : Colors.green),
    colorText: type == warning ? Colors.white : Colors.white,
    icon: Image.asset(
        type == warning ? AppAssets.errorIcon : AppAssets.checkIcon,
        scale: Sizes.imageSize),

    onTap: (_) {},
    shouldIconPulse: true,
    barBlur: 10,
    isDismissible: true,
    duration: const Duration(seconds: 2),
  );
}

class Toast {
  Toast._();

  static void showToast(String message) {
    BotToast.showCustomText(
      toastBuilder: (cancelFunc) {
        return Container(
          margin: kDefaultHorizontalPadding,
          padding: EdgeInsets.symmetric(
            horizontal: Sizes.s15.h,
            vertical: Sizes.s13.h,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Sizes.s50.r),
            color: AppColor.primary,
          ),
          child: Text(
            message,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: Sizes.s14,
              fontWeight: FontWeight.w500,
              height: 1.5,
            ),
          ),
        );
      },
    );
  }
}
