
import 'package:allylearn/models/models_export.dart';
import 'package:allylearn/providers/provider_export.dart';

class SendArgument {
  int? bottomIndex;
  SignUpParameter? signUpParameter;
  String? email;
  int? status;

  /// 0 as guest 1 as User
  String? courseId;
  String? courseName;
  String? paperId;
  String? videoId;
  String? universityId;

  String? universityName;
  String? paperName;
  String? sem;
  bool? inviteCodePopUp;
  bool? isEditNumber;
  String? phoneNumber;
  String? currentNumber;
  int? registrationCoins;
  String? videoUrl;
  String? notesUrl;
  String? loginMsg;
  String? paperListTopicName;
  bool? isExplore;
  num? ratingValue;
  String? reviewMsg;
  String? reviewId;
  String? commentMsg;
  String? paperVideoMappingGuid;
  String? commentGuid;
  String? parentCommentId;
  PaperLectureData? paperDetailsData;
  bool? isEdit;
  PaperDataModel? paperDataModel;
  int? videoOrder;
  bool? isPaperBankScreen;
  int? paperPrice;
  int? normalPrice;
  String? validUpTo;
  int? purchaseDuration;
  bool? isPaperPurchase;
  bool? isPaperFree;
  bool? isAppPurchase;
  bool? isAppUnlock;
  PaperDetailsVideoModel? paperDetailsVideoModel;
  String? cmsUrl;
  String? cmsName;

  SendArgument(
      {this.bottomIndex,
      this.cmsName,
      this.signUpParameter,
      this.paperDetailsVideoModel,
      this.email,
      this.videoId,
      this.cmsUrl,
      this.isAppPurchase,
      this.isPaperFree,
      this.purchaseDuration,
      this.universityId,
      this.isPaperPurchase,
      this.paperDataModel,
      this.status,
      this.isPaperBankScreen,
      this.isAppUnlock,
      this.videoOrder,
      this.courseId,
      this.paperDetailsData,
      this.paperVideoMappingGuid,
      this.isEdit,
      this.courseName,
      this.reviewId,
      this.videoUrl,
      this.paperId,
      this.normalPrice,
      this.validUpTo,
      this.commentMsg,
      this.paperListTopicName,
      this.universityName,
      this.sem,
      this.isExplore,
      this.reviewMsg,
      this.ratingValue,
      this.notesUrl,
      this.paperName,
      this.inviteCodePopUp,
      this.isEditNumber,
      this.phoneNumber,
      this.commentGuid,
      this.parentCommentId,
      this.currentNumber,
      this.loginMsg,
      this.paperPrice,
      this.registrationCoins});
}
