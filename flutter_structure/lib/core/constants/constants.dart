
import 'package:allylearn/core/utils/utils_export.dart';
import 'constants_export.dart';



const String kAppName = 'AllyLearn';

GlobalKey<NavigatorState> kNavigatorKey = GlobalKey<NavigatorState>();

const double kBorderRadius = 16;
Preferences preferences = Preferences.instance;
EdgeInsets kDefaultHorizontalPadding =
    EdgeInsets.symmetric(horizontal: Sizes.s15.h);

const int kResendOtpTimerSeconds = 120;
const int kOtpTimerSeconds = 120;

 const String error = "Error";
 const String success = "Success";
 const String warning = "Warning";

const String kNoInternetConnection =
    'No Internet connection. Make sure that Wi-Fi or Mobile data is turned on, then try again.';


 List<BoxShadow>? homeCardBoxShadow = [
   BoxShadow(
     color: Colors.black.withOpacity(0.2),
     spreadRadius: 2,
     blurRadius: 4,
     offset: const Offset(3, 4), // right and bottom shadow
   ),
 ];
