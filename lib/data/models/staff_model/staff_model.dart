// ignore: depend_on_referenced_packages
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:event_app/domain/entities/staff_entity/staff_entity.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';

part 'staff_model.g.dart';

@CopyWith()
@JsonSerializable()
class StaffModel extends Equatable {
  const StaffModel({
    required this.staffUserId,
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
    required this.staffUserStatusRemarks,
  });

  @JsonKey(name: 'staff_user_id')
  final String? staffUserId;
  @JsonKey(name: 'staff_user_token')
  final String? staffUserToken;
  @JsonKey(name: 'staff_user_name')
  final String? staffUserName;
  @JsonKey(name: 'staff_user_email')
  final String? staffUserEmail;
  @JsonKey(name: 'staff_user_phone_country_code')
  final String? staffUserPhoneCountryCode;
  @JsonKey(name: 'staff_user_phone')
  final String? staffUserPhone;
  @JsonKey(name: 'staff_user_email_otp')
  final String? staffUserEmailOtp;
  @JsonKey(name: 'staff_user_email_verify')
  final String? staffUserEmailVerify;
  @JsonKey(name: 'staff_user_email_expiry')
  final String? staffUserEmailExpiry;
  @JsonKey(name: 'staff_user_email_verify_datetime')
  final String? staffUserEmailVerifyDatetime;
  @JsonKey(name: 'staff_user_dob')
  final String? staffUserDob;
  @JsonKey(name: 'staff_user_password')
  final String? staffUserPassword;
  @JsonKey(name: 'staff_user_salt')
  final String? staffUserSalt;
  @JsonKey(name: 'staff_user_password_otp')
  final String? staffUserPasswordOtp;
  @JsonKey(name: 'staff_user_password_expiry')
  final String? staffUserPasswordExpiry;
  @JsonKey(name: 'staff_user_registered_datetime')
  final String? staffUserRegisteredDatetime;
  @JsonKey(name: 'staff_user_lastlogin_datetime')
  final String? staffUserLastloginDatetime;
  @JsonKey(name: 'staff_user_status')
  final String? staffUserStatus;
  @JsonKey(name: 'staff_user_fcm_token')
  final String? staffUserFcmToken;
  @JsonKey(name: 'staff_user_social_id')
  final String? staffUserSocialId;
  @JsonKey(name: 'staff_user_account_type')
  final String? staffUserAccountType;
  @JsonKey(name: 'staff_user_version')
  final String? staffUserVersion;
  @JsonKey(name: 'staff_user_huawei_token')
  final String? staffUserHuaweiToken;
  @JsonKey(name: 'staff_user_binded_user_id')
  final String? staffUserBindedUserId;
  @JsonKey(name: 'staff_user_chat_id')
  final String? staffUserChatId;
  @JsonKey(name: 'staff_user_ref_code')
  final String? staffUserRefCode;
  @JsonKey(name: 'staff_user_zone_ids_json')
  final String? staffUserZoneIdsJson;
  @JsonKey(name: 'staff_user_change_email_verify')
  final String? staffUserChangeEmailVerify;
  @JsonKey(name: 'staff_user_remove_datetime')
  final String? staffUserRemoveDatetime;
  @JsonKey(name: 'staff_user_status_remarks')
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

  factory StaffModel.fromJson(Map<String, dynamic> json) =>
      _$StaffModelFromJson(json);
  Map<String, dynamic> toJson() => _$StaffModelToJson(this);

  StaffEntity toEntity() => StaffEntity(
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
