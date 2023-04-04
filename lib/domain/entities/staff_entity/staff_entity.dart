// ignore: depend_on_referenced_packages
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:event_app/data/models/staff_model/staff_model.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';

part 'staff_entity.g.dart';

@CopyWith()
@JsonSerializable()
class StaffEntity extends Equatable {
  const StaffEntity(
      {required this.staffUserId,
      required this.staffUserToken,
      required this.staffUserName,
      required this.staffUserEmail,
      required this.staffUserPhoneCountryCode,
      required this.staffUserPhone,
      required this.staffUserEmailOtp,
      required this.staffUserEmailVerify,
      required this.staffUserEmailExpiry,
      required this.staffUserEmailVerifyDatetime,
      required this.staffUserDob,
      required this.staffUserPassword,
      required this.staffUserSalt,
      required this.staffUserPasswordOtp,
      required this.staffUserPasswordExpiry,
      required this.staffUserRegisteredDatetime,
      required this.staffUserLastloginDatetime,
      required this.staffUserStatus,
      required this.staffUserFcmToken,
      required this.staffUserSocialId,
      required this.staffUserAccountType,
      required this.staffUserVersion,
      required this.staffUserHuaweiToken,
      required this.staffUserBindedUserId,
      required this.staffUserChatId,
      required this.staffUserRefCode,
      required this.staffUserZoneIdsJson,
      required this.staffUserChangeEmailVerify,
      required this.staffUserRemoveDatetime,
      required this.staffUserStatusRemarks});

  final String? staffUserId;
  final String? staffUserToken;
  final String? staffUserName;
  final String? staffUserEmail;
  final String? staffUserPhoneCountryCode;
  final String? staffUserPhone;
  final String? staffUserEmailOtp;
  final String? staffUserEmailVerify;
  final String? staffUserEmailExpiry;
  final String? staffUserEmailVerifyDatetime;
  final String? staffUserDob;
  final String? staffUserPassword;
  final String? staffUserSalt;
  final String? staffUserPasswordOtp;
  final String? staffUserPasswordExpiry;
  final String? staffUserRegisteredDatetime;
  final String? staffUserLastloginDatetime;
  final String? staffUserStatus;
  final String? staffUserFcmToken;
  final String? staffUserSocialId;
  final String? staffUserAccountType;
  final String? staffUserVersion;
  final String? staffUserHuaweiToken;
  final String? staffUserBindedUserId;
  final String? staffUserChatId;
  final String? staffUserRefCode;
  final String? staffUserZoneIdsJson;
  final String? staffUserChangeEmailVerify;
  final String? staffUserRemoveDatetime;
  final String? staffUserStatusRemarks;

  @override
  List<Object?> get props => [
        staffUserId,
        staffUserToken,
        staffUserName,
        staffUserEmail,
        staffUserPhoneCountryCode,
        staffUserPhone,
        staffUserEmailOtp,
        staffUserEmailVerify,
        staffUserEmailExpiry,
        staffUserEmailVerifyDatetime,
        staffUserDob,
        staffUserPassword,
        staffUserSalt,
        staffUserPasswordOtp,
        staffUserPasswordExpiry,
        staffUserRegisteredDatetime,
        staffUserLastloginDatetime,
        staffUserStatus,
        staffUserFcmToken,
        staffUserSocialId,
        staffUserAccountType,
        staffUserVersion,
        staffUserHuaweiToken,
        staffUserBindedUserId,
        staffUserChatId,
        staffUserRefCode,
        staffUserZoneIdsJson,
        staffUserChangeEmailVerify,
        staffUserRemoveDatetime,
        staffUserStatusRemarks,
      ];

  StaffModel toModel() => StaffModel(
      staffUserId: staffUserId,
      staffUserToken: staffUserToken,
      staffUserName: staffUserName,
      staffUserEmail: staffUserEmail,
      staffUserPhoneCountryCode: staffUserPhoneCountryCode,
      staffUserPhone: staffUserPhone,
      staffUserEmailOtp: staffUserEmailOtp,
      staffUserEmailVerify: staffUserEmailVerify,
      staffUserEmailExpiry: staffUserEmailExpiry,
      staffUserEmailVerifyDatetime: staffUserEmailVerifyDatetime,
      staffUserDob: staffUserDob,
      staffUserPassword: staffUserPassword,
      staffUserSalt: staffUserSalt,
      staffUserPasswordOtp: staffUserPasswordOtp,
      staffUserPasswordExpiry: staffUserPasswordExpiry,
      staffUserRegisteredDatetime: staffUserRegisteredDatetime,
      staffUserLastloginDatetime: staffUserLastloginDatetime,
      staffUserStatus: staffUserStatus,
      staffUserFcmToken: staffUserFcmToken,
      staffUserSocialId: staffUserSocialId,
      staffUserAccountType: staffUserAccountType,
      staffUserVersion: staffUserVersion,
      staffUserHuaweiToken: staffUserHuaweiToken,
      staffUserBindedUserId: staffUserBindedUserId,
      staffUserChatId: staffUserChatId,
      staffUserRefCode: staffUserRefCode,
      staffUserZoneIdsJson: staffUserZoneIdsJson,
      staffUserChangeEmailVerify: staffUserChangeEmailVerify,
      staffUserRemoveDatetime: staffUserRemoveDatetime,
      staffUserStatusRemarks: staffUserStatusRemarks);
}
