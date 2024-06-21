import 'package:mero_cloud_school/core/common/exports.dart';


class InstitutionModel extends InstitutionEntity {
  InstitutionModel({
    super.id,
    super.instituteName,
    super.instituteDisplayName,
    super.primaryPhoneNo,
    super.primaryEmail,
    super.address,
    super.instituteEsdDate,
    super.panNo,
    super.website,
  });

  @override
  InstitutionModel copyWith({
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
    return InstitutionModel(
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
    return 'InstitutionModel(id: $id, instituteName: $instituteName, instituteDisplayName: $instituteDisplayName, primaryPhoneNo: $primaryPhoneNo, primaryEmail: $primaryEmail, address: $address, instituteEsdDate: $instituteEsdDate, panNo: $panNo, website: $website)';
  }

  @override
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

  factory InstitutionModel.fromMap(Map<String, dynamic> map) {
    return InstitutionModel(
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

  @override
  String toJson() => json.encode(toMap());

  factory InstitutionModel.fromJson(String source) =>
      InstitutionModel.fromMap(json.decode(source));

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is InstitutionModel &&
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
