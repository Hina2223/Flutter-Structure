// import 'package:internet_connection_checker/internet_connection_checker.dart';
//
// class ConnectivityUtils {
//   ConnectivityUtils._();
//
//   static Future<bool> get isConnected async {
//     bool result = await InternetConnectionChecker().hasConnection;
//     if (result == true) {
//       return true;
//     }
//     return false;
//   }
// }
//
typedef SucceedResponseCallback<T> = void Function(T value);

typedef FailedResponseCallback<String> = void Function(String message);
