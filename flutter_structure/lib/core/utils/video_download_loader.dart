import 'package:allylearn/core/constants/constants_export.dart';
import 'package:allylearn/providers/paper_provider.dart';
import 'package:provider/provider.dart';
import 'utils_export.dart';

class VideoDownloadLoader {
  VideoDownloadLoader._();

  static CancelFunc? _cancel;

  static Widget loaderWidget() {
    return  Consumer<PaperProvider>(builder: (context, paperProvider, _) {
      return Padding(
          padding: const EdgeInsets.symmetric(horizontal: Sizes.s16,vertical: Sizes.s20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text( 'Downloading...',style: AppFontFamily.blackW6S16.copyWith(fontSize: Sizes.s18.sp),),
              SizedBox(
                height: Sizes.s16.h,
              ),

              Center(

                child: LinearProgressIndicator(
                  backgroundColor: AppColor.colorC3C2C2,
                  color: AppColor.primary,
                  valueColor:
                  const AlwaysStoppedAnimation<
                      Color>(
                      AppColor.primary),
                  borderRadius: BorderRadius.circular(50),
                  value: paperProvider.rangeValue),
              ),
              SizedBox(
                height: Sizes.s6.h,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("${paperProvider.progressValue}%"),
                  Text("${paperProvider.progressValue}/100"),
                ],
              )
            ],
          ),
        );
      }
    );
  }

  static void showVideoLoader() {
    _cancel = BotToast.showCustomLoading(
      toastBuilder: (cancelFunc) {
        return Padding(
          padding: const EdgeInsets.only(top: Sizes.s40,bottom: Sizes.s40,left: Sizes.s16,right: Sizes.s16),

          child: Container(
           // height: Sizes.s200.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(Sizes.s8.r),
            ),
            child: loaderWidget(),
          ),
        );
      },
    );
  }

  static void dismiss() {
    if (_cancel != null) _cancel!();
  }
}




