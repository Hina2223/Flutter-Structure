import 'package:allylearn/core/constants/constants_export.dart';
import 'package:allylearn/providers/default_change_notifier.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';
import 'utils_export.dart';
import 'package:http/http.dart' as http;
import 'package:timeago/timeago.dart' as timeago;

class CommonFileUtils {
  CommonFileUtils._();

  ///GET DEVICE TOKEN FOR AUTHENTICATION

  static Future<String?> getDeviceId() async {
    var deviceInfo = DeviceInfoPlugin();
    if (Platform.isIOS) {
      var iosDeviceInfo = await deviceInfo.iosInfo;
      return iosDeviceInfo.identifierForVendor; // unique ID on iOS
    } else if (Platform.isAndroid) {
      String? identifier;
      try {
        identifier = await UniqueIdentifier.serial;
      } on PlatformException {
        identifier = 'Failed to get Unique Identifier';
      }

      return identifier;
    }
    return null;
  }

  ///PICKUP IMAGE WITH CROP FUNCTIONALITY

  static Future<File?> pickImage(File image) async {
    CroppedFile? cropped = await ImageCropper().cropImage(
      sourcePath: image.path,
      aspectRatioPresets: [
        CropAspectRatioPreset.square,
        CropAspectRatioPreset.ratio3x2,
        CropAspectRatioPreset.original,
        CropAspectRatioPreset.ratio4x3,
        CropAspectRatioPreset.ratio16x9
      ],
      uiSettings: [
        AndroidUiSettings(
            toolbarTitle: 'Cropper',
            toolbarColor: Colors.white,
            showCropGrid: true,
            toolbarWidgetColor: AppColor.primary,
            backgroundColor: AppColor.primary,
            initAspectRatio: CropAspectRatioPreset.original,
            statusBarColor: Colors.white,
            lockAspectRatio: false),
        IOSUiSettings(
          title: 'Cropper',
        ),
      ],
    );
    if (cropped == null) return null;
    return File(cropped.path);
  }

  ///DATE CONVERT TO TIME
  ///(NOW , 2 MIN AGO,7 DAY AGO)
  static timeStampFormat(String dateString) {
    DateTime dateTime1 = DateTime.parse(dateString);
    int timestamp = dateTime1.millisecondsSinceEpoch;

    DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(timestamp);
    var formattedTime = timeago.format(dateTime, locale: 'en');
    return formattedTime;
  }

  static String addSuffix(int day) {
    if (day >= 11 && day <= 13) {
      return '${day}th';
    }
    switch (day % 10) {
      case 1:
        return '${day}st';
      case 2:
        return '${day}nd';
      case 3:
        return '${day}rd';
      default:
        return '${day}th';
    }
  }

  ///DATE CONVERT 28TH April,2024
  ///(NOW , 2 MIN AGO,7 DAY AGO)
  static dateFormat(String dateString) {
    var inputDate = DateTime.parse(dateString);
    var outputFormat = DateFormat('MMMM, yyyy');
    int dayValue = inputDate.day;
    String daySuffix = addSuffix(dayValue);
    var newDate = outputFormat.format(inputDate);
    var showDate = '$daySuffix $newDate';
    return showDate;
  }

  ///SHARE PDF
  static Future<void> sharePDF(String pdfUrl, bool isLoader) async {
    isLoader = true;
    final http.Response response = await http.get(Uri.parse(pdfUrl));
    if (response.statusCode == 200) {
      final Directory tempDir = await getTemporaryDirectory();
      final String tempPath = tempDir.path;
      final File file = File('$tempPath/sample.pdf');
      await file.writeAsBytes(response.bodyBytes);
      print('PDF saved to: ${file.path}');

      Share.shareFiles([file.path], text: 'Check out this PDF!');
      isLoader = false;
    } else {
      isLoader = false;
      print('Failed to download PDF. Status code: ${response.statusCode}');
    }
  }

  ///OPEN URL
  static openYouTubeVideo(String videoUrl) async {
    final Uri youtubeUri = Uri.parse(videoUrl);

    if (await canLaunchUrl(youtubeUri)) {
      await launchUrl(youtubeUri);
    } else {
      throw 'Could not launch $youtubeUri';
    }
  }


  ///OPEN EMAIL
  static openEmail(String emailAddress) async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: emailAddress,
    );

    if (await canLaunchUrl(emailLaunchUri)) {
      await launchUrl(emailLaunchUri);
    } else {
      throw 'Could not launch $emailLaunchUri';
    }
  }

  ///OPEN WHATSAPP
  static openWhatsApp(String phoneNumber) async {
    final whatsappUrl = Uri.parse("whatsapp://send?phone=$phoneNumber");
    if (await canLaunchUrl(whatsappUrl)) {
      await launchUrl(whatsappUrl);
    } else {
      throw 'Could not launch $whatsappUrl';
    }
  }
}

///FANCY SHIMMER EFFECT IN IMAGE VIEW

class SharePDFProvider extends DefaultChangeNotifier {
  Future<void> sharePDF(String pdfUrl) async {
    loading = true;
    final http.Response response = await http.get(Uri.parse(pdfUrl));
    if (response.statusCode == 200) {
      final Directory tempDir = await getTemporaryDirectory();
      final String tempPath = tempDir.path;
      final File file = File('$tempPath/sample.pdf');
      await file.writeAsBytes(response.bodyBytes);
      print('PDF saved to: ${file.path}');

      Share.shareFiles([file.path], text: 'Check out this PDF!');
      loading = false;
    } else {
      loading = false;
      print('Failed to download PDF. Status code: ${response.statusCode}');
    }
  }
}

Widget getFancyShimmerImage({
  required String url,
  BoxFit? fit,
  double? height,
  double? width,
}) {
  return FancyShimmerImage(
    imageUrl: url,
    boxFit: fit ?? BoxFit.fill,
    errorWidget: Image.network(imageErrorUrl),
    height: height ?? 100,
    width: width ?? 100,
  );
}
