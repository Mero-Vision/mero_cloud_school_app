import 'package:mero_cloud_school/core/common/exports.dart';


class InstitutionEntity {
  final int? id;
  final String? instituteName;
  final String? instituteDisplayName;
  final String? primaryPhoneNo;
  final String? primaryEmail;
  final String? address;
  final String? instituteEsdDate;
  final String? panNo;
  final String? website;
  InstitutionEntity({
    this.id,
    this.instituteName,
    this.instituteDisplayName,
    this.primaryPhoneNo,
    this.primaryEmail,
    this.address,
    this.instituteEsdDate,
    this.panNo,
    this.website,
  });
  InstitutionEntity copyWith({
    ValueGetter<int?>? id,
    ValueGetter<String?>? instituteName,
    ValueGetter<String?>? instituteDisplayName,
    ValueGetter<String?>? primaryPhoneNo,
    ValueGetter<String?>? primaryEmail,
    ValueGetter<String?>? address,
    ValueGetter<String?>? instituteEsdDate,
    ValueGetter<String?>? panNo,
    ValueGetter<String?>? website,
  }) {
    return InstitutionEntity(
      id: id != null ? id() : this.id,
      instituteName:
          instituteName != null ? instituteName() : this.instituteName,
      instituteDisplayName: instituteDisplayName != null
          ? instituteDisplayName()
          : this.instituteDisplayName,
      primaryPhoneNo:
          primaryPhoneNo != null ? primaryPhoneNo() : this.primaryPhoneNo,
      primaryEmail: primaryEmail != null ? primaryEmail() : this.primaryEmail,
      address: address != null ? address() : this.address,
      instituteEsdDate:
          instituteEsdDate != null ? instituteEsdDate() : this.instituteEsdDate,
      panNo: panNo != null ? panNo() : this.panNo,
      website: website != null ? website() : this.website,
    );
  }

  @override
  String toString() {
    return 'InstitutionEntity(id: $id, instituteName: $instituteName, instituteDisplayName: $instituteDisplayName, primaryPhoneNo: $primaryPhoneNo, primaryEmail: $primaryEmail, address: $address, instituteEsdDate: $instituteEsdDate, panNo: $panNo, website: $website)';
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'institute_name': instituteName,
      'institute_display_name': instituteDisplayName,
      'primary_phone_no': primaryPhoneNo,
      'primary_email': primaryEmail,
      'address': address,
      'institute_esd_date': instituteEsdDate,
      'pan_no': panNo,
      'website': website,
    };
  }

  factory InstitutionEntity.fromMap(Map<String, dynamic> map) {
    return InstitutionEntity(
      id: map['id']?.toInt(),
      instituteName: map['institute_name'],
      instituteDisplayName: map['institute_display_name'],
      primaryPhoneNo: map['primary_phone_no'],
      primaryEmail: map['primary_email'],
      address: map['address'],
      instituteEsdDate: map['institute_esd_date'],
      panNo: map['pan_no'],
      website: map['website'],
    );
  }

  String toJson() => json.encode(toMap());

  factory InstitutionEntity.fromJson(String source) =>
      InstitutionEntity.fromMap(json.decode(source));

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is InstitutionEntity &&
        other.id == id &&
        other.instituteName == instituteName &&
        other.instituteDisplayName == instituteDisplayName &&
        other.primaryPhoneNo == primaryPhoneNo &&
        other.primaryEmail == primaryEmail &&
        other.address == address &&
        other.instituteEsdDate == instituteEsdDate &&
        other.panNo == panNo &&
        other.website == website;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        instituteName.hashCode ^
        instituteDisplayName.hashCode ^
        primaryPhoneNo.hashCode ^
        primaryEmail.hashCode ^
        address.hashCode ^
        instituteEsdDate.hashCode ^
        panNo.hashCode ^
        website.hashCode;
  }
}
