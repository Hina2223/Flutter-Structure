import 'package:allylearn/views/paper/video_view_screen.dart';
import 'package:allylearn/views/profile/webview_screen.dart';

import 'routes_export.dart';

class Routes {
  Routes._();

  static const String splashScreen = '/splash_screen';
  static const String onBoarding = '/onBoarding_screen';
  static const String welcomeBack = '/welcome_back_screen';
  static const String mainHome = '/main_home';

  ///Auth
  static const String login = '/login_screen';
  static const String signUp = '/signup_screen';
  static const String otpVerification = '/otp_verification_screen';
  static const String forgotPassword = '/forgot_password_screen';
  static const String resetPassword = '/reset_password_screen';
  static const String signUpSuccessfully = '/sign_up_successfully';
  static const String loginUnSuccessfully = '/login_unsuccessfully';
  static const String universitySelection = '/university_selection_screen';

  ///HOME
  static const String home = '/home_screen';
  static const String notification = '/notification_screen';
  static const String webviewScreen = '/webview_screen';


  ///COURSE
  static const String myCourse = '/my_course_screen';
  static const String addCourse = '/add_course_screen';
  static const String availablePaper = '/available_paper_screen';
  static const String explore = '/explore_screen';
  static const String paperBank = '/paper_bank_screen';
  static const String profile = '/profile_screen';
  static const String changePassword = '/change_password_screen';
  static const String updatePhoneNUmber = '/update_phone_number_screen';
  static const String phoneOtpVerification = '/phone_otp_verification_screen';
  static const String nameOfPaper = '/name_of_paper_screen';
  static const String addReviewRating = '/add_review_rating_screen';
  static const String videoView = '/video_view_screen';
  static const String paperNotesView = '/paper_notes_view';
  static const String searchVideo = '/search_video_screen';
  static const String buyOption = '/buy_option_screen';
  static const String cart = '/cart_screen';
}

class RouteGenerator {
  RouteGenerator._();

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    var arguments = settings.arguments;
    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.onBoarding:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case Routes.welcomeBack:
        return MaterialPageRoute(builder: (_) => const WelComeBackScreen());
      case Routes.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case Routes.signUp:
        return MaterialPageRoute(builder: (_) => const SignupScreen());
      case Routes.otpVerification:
        return MaterialPageRoute(builder: (_) =>  OtpVerificationScreen(argument: arguments as SendArgument));
      case Routes.forgotPassword:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordScreen());
      case Routes.resetPassword:
        return MaterialPageRoute(builder: (_) =>  ResetPasswordScreen(argument: arguments as SendArgument));
      case Routes.signUpSuccessfully:
        return MaterialPageRoute(builder: (_) =>  SignUpSuccessfully(argument: arguments as SendArgument));
        case Routes.loginUnSuccessfully:
        return MaterialPageRoute(builder: (_) =>  LoginUnSuccessfully(argument: arguments as SendArgument));
      case Routes.universitySelection:
        return MaterialPageRoute(
            builder: (_) =>  UniversitySelectionScreen(argument: arguments as SendArgument));
      case Routes.home:
        return MaterialPageRoute(builder: (_) =>  HomeScreen(argument: arguments as SendArgument));
        case Routes.webviewScreen:
        return MaterialPageRoute(builder: (_) =>  WebviewScreen(argument: arguments as SendArgument));
      case Routes.notification:
        return MaterialPageRoute(builder: (_) => const NotificationScreen());
      case Routes.myCourse:
        return MaterialPageRoute(builder: (_) => const MyCourseScreen());
      case Routes.addCourse:
        return MaterialPageRoute(builder: (_) => const AddCourseScreen());
        case Routes.searchVideo:
        return MaterialPageRoute(builder: (_) => const SearchVideoScreen());
      case Routes.availablePaper:
        return MaterialPageRoute(builder: (_) =>  AvailablePaperScreen(argument: arguments as SendArgument));
      case Routes.explore:
        return MaterialPageRoute(builder: (_) => const ExploreScreen());
      case Routes.paperBank:
        return MaterialPageRoute(builder: (_) =>  PaperBankScreen(argument: arguments as SendArgument));
      case Routes.profile:
        return MaterialPageRoute(builder: (_) => const ProfileScreen());

      case Routes.updatePhoneNUmber:
        return MaterialPageRoute(
            builder: (_) =>  UpdatePhoneNumberScreen(argument: arguments as SendArgument));
      case Routes.phoneOtpVerification:
        return MaterialPageRoute(
            builder: (_) =>  PhoneOtpVerificationScreen(argument: arguments as SendArgument));
      case Routes.changePassword:
        return MaterialPageRoute(builder: (_) => const ChangePasswordScreen());
        case Routes.nameOfPaper:
        return MaterialPageRoute(builder: (_) =>  NameOfPaperScreen(argument: arguments as SendArgument));
      case Routes.buyOption:
        return MaterialPageRoute(builder: (_) =>  BuyOptionScreen(argument: arguments as SendArgument));
        case Routes.cart:
        return MaterialPageRoute(builder: (_) =>  CartScreen(argument: arguments as SendArgument));

      case Routes.addReviewRating:
        return MaterialPageRoute(builder: (_) =>  AddReviewRatingScreen(argument: arguments as SendArgument));
        case Routes.videoView:
        return MaterialPageRoute(builder: (_) =>  VideoViewScreen(argument: arguments as SendArgument));
      // case Routes.paperNotesView:
      //   return MaterialPageRoute(builder: (_) =>  PaperNotesView(argument: arguments as SendArgument));

      default:
        return null;
    }
  }
}
