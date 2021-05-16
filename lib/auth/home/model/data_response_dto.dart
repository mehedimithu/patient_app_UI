// To parse this JSON data, do
//
//     final patient = patientFromJson(jsonString);

import 'dart:convert';

Patient patientFromJson(String str) => Patient.fromJson(json.decode(str));

String patientToJson(Patient data) => json.encode(data.toJson());

class Patient {
  Patient({
    this.id,
    this.email,
    this.phone,
    this.gender,
    this.password,
    this.district,
    this.division,
    this.ct,
    this.cn,
    this.cm,
    this.pt,
    this.pn,
    this.pm,
    this.religion,
    this.isCreatedByIcdTen,
    this.submitted,
    this.followup,
    this.createdByIcdTen,
    this.chemotherapy,
    this.immunotherapy,
    this.radiotherapy,
    this.surgery,
    this.other,
    this.dead,
    this.firstName,
    this.lastName,
    this.nid,
    this.permanentAddress,
    this.presentAddress,
    this.zipCode,
    this.doctorId,
    this.dateOfDiagnosis,
    this.cancerType,
    this.icdTenType,
    this.cancerSubtype,
    this.icdTenSubtype,
    this.histopathological,
    this.organ,
    this.pathological,
    this.tumorClassification,
    this.tumorGrade,
    this.groupCCancerStage,
    this.groupPCancerStage,
    this.numberOfPacketSmoke,
    this.diagnosisType,
    this.guardianName,
    this.bloodGroup,
    this.hospitalName,
    this.emergencyPhone,
    this.durationYear,
    this.durationMonth,
    this.regVariable,
    this.otherHistopathological,
    this.firstTreatmentRecommend,
    this.uploadedImages,
    this.motherName,
    this.fatherName,
    this.birthPlace,
    this.nationality,
    this.occupation,
    this.isDead,
    this.isChemotherapy,
    this.isRadiotherapy,
    this.isFollowup,
    this.isImmunotherapy,
    this.isSurgery,
    this.isOther,
    this.therapyComment,
    this.age,
    this.isSubmitted,
    this.nonSmokingDurationYear,
    this.nonSmokingDurationMonth,
    this.alive,
    this.expired,
    this.onTreatmentComment,
    this.emergencyContactName,
    this.neoadjuvantChemotherapy,
    this.intensiveCare,
    this.firstLineTreatments,
    this.isNonSmoking,
    this.isUseTobacco,
    this.isSmoking,
  });

  int id;
  dynamic email;
  String phone;
  String gender;
  dynamic password;
  dynamic district;
  dynamic division;
  dynamic ct;
  dynamic cn;
  dynamic cm;
  dynamic pt;
  dynamic pn;
  dynamic pm;
  String religion;
  bool isCreatedByIcdTen;
  bool submitted;
  bool followup;
  bool createdByIcdTen;
  bool chemotherapy;
  bool immunotherapy;
  bool radiotherapy;
  bool surgery;
  bool other;
  bool dead;
  String firstName;
  String lastName;
  String nid;
  String permanentAddress;
  String presentAddress;
  String zipCode;
  int doctorId;
  DateTime dateOfDiagnosis;
  dynamic cancerType;
  dynamic icdTenType;
  dynamic cancerSubtype;
  dynamic icdTenSubtype;
  dynamic histopathological;
  dynamic organ;
  dynamic pathological;
  dynamic tumorClassification;
  dynamic tumorGrade;
  dynamic groupCCancerStage;
  dynamic groupPCancerStage;
  dynamic numberOfPacketSmoke;
  dynamic diagnosisType;
  String guardianName;
  String bloodGroup;
  dynamic hospitalName;
  String emergencyPhone;
  String durationYear;
  String durationMonth;
  String regVariable;
  String otherHistopathological;
  dynamic firstTreatmentRecommend;
  List<dynamic> uploadedImages;
  String motherName;
  String fatherName;
  String birthPlace;
  String nationality;
  String occupation;
  bool isDead;
  bool isChemotherapy;
  bool isRadiotherapy;
  bool isFollowup;
  bool isImmunotherapy;
  bool isSurgery;
  bool isOther;
  String therapyComment;
  int age;
  bool isSubmitted;
  String nonSmokingDurationYear;
  String nonSmokingDurationMonth;
  dynamic alive;
  DateTime expired;
  String onTreatmentComment;
  String emergencyContactName;
  bool neoadjuvantChemotherapy;
  dynamic intensiveCare;
  List<FirstLineTreatment> firstLineTreatments;
  bool isNonSmoking;
  bool isUseTobacco;
  bool isSmoking;

  factory Patient.fromJson(Map<String, dynamic> json) => Patient(
    id: json["id"],
    email: json["email"],
    phone: json["phone"],
    gender: json["gender"],
    password: json["password"],
    district: json["district"],
    division: json["division"],
    ct: json["ct"],
    cn: json["cn"],
    cm: json["cm"],
    pt: json["pt"],
    pn: json["pn"],
    pm: json["pm"],
    religion: json["religion"],
    isCreatedByIcdTen: json["isCreatedByIcdTen"],
    submitted: json["submitted"],
    followup: json["followup"],
    createdByIcdTen: json["createdByIcdTen"],
    chemotherapy: json["chemotherapy"],
    immunotherapy: json["immunotherapy"],
    radiotherapy: json["radiotherapy"],
    surgery: json["surgery"],
    other: json["other"],
    dead: json["dead"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    nid: json["nid"],
    permanentAddress: json["permanent_address"],
    presentAddress: json["present_address"],
    zipCode: json["zip_code"],
    doctorId: json["doctor_id"],
    dateOfDiagnosis: DateTime.parse(json["date_of_diagnosis"]),
    cancerType: json["cancer_type"],
    icdTenType: json["icd_ten_type"],
    cancerSubtype: json["cancer_subtype"],
    icdTenSubtype: json["icd_ten_subtype"],
    histopathological: json["histopathological"],
    organ: json["organ"],
    pathological: json["pathological"],
    tumorClassification: json["tumor_classification"],
    tumorGrade: json["tumor_grade"],
    groupCCancerStage: json["group_c_cancer_stage"],
    groupPCancerStage: json["group_p_cancer_stage"],
    numberOfPacketSmoke: json["number_of_packet_smoke"],
    diagnosisType: json["diagnosis_type"],
    guardianName: json["guardian_name"],
    bloodGroup: json["blood_group"],
    hospitalName: json["hospital_name"],
    emergencyPhone: json["emergency_phone"],
    durationYear: json["duration_year"],
    durationMonth: json["duration_month"],
    regVariable: json["reg_variable"],
    otherHistopathological: json["other_histopathological"],
    firstTreatmentRecommend: json["first_treatment_recommend"],
    uploadedImages: List<dynamic>.from(json["uploaded_images"].map((x) => x)),
    motherName: json["mother_name"],
    fatherName: json["father_name"],
    birthPlace: json["birth_place"],
    nationality: json["nationality"],
    occupation: json["occupation"],
    isDead: json["is_dead"],
    isChemotherapy: json["is_chemotherapy"],
    isRadiotherapy: json["is_radiotherapy"],
    isFollowup: json["is_followup"],
    isImmunotherapy: json["is_immunotherapy"],
    isSurgery: json["is_surgery"],
    isOther: json["is_other"],
    therapyComment: json["therapy_comment"],
    age: json["age"],
    isSubmitted: json["is_submitted"],
    nonSmokingDurationYear: json["non_smoking_duration_year"],
    nonSmokingDurationMonth: json["non_smoking_duration_month"],
    alive: json["alive"],
    expired: DateTime.parse(json["expired"]),
    onTreatmentComment: json["on_treatment_comment"],
    emergencyContactName: json["emergency_contact_name"],
    neoadjuvantChemotherapy: json["neoadjuvant_chemotherapy"],
    intensiveCare: json["intensiveCare"],
    firstLineTreatments: List<FirstLineTreatment>.from(json["first_line_treatments"].map((x) => FirstLineTreatment.fromJson(x))),
    isNonSmoking: json["is_non_smoking"],
    isUseTobacco: json["is_use_tobacco"],
    isSmoking: json["is_smoking"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "email": email,
    "phone": phone,
    "gender": gender,
    "password": password,
    "district": district,
    "division": division,
    "ct": ct,
    "cn": cn,
    "cm": cm,
    "pt": pt,
    "pn": pn,
    "pm": pm,
    "religion": religion,
    "isCreatedByIcdTen": isCreatedByIcdTen,
    "submitted": submitted,
    "followup": followup,
    "createdByIcdTen": createdByIcdTen,
    "chemotherapy": chemotherapy,
    "immunotherapy": immunotherapy,
    "radiotherapy": radiotherapy,
    "surgery": surgery,
    "other": other,
    "dead": dead,
    "first_name": firstName,
    "last_name": lastName,
    "nid": nid,
    "permanent_address": permanentAddress,
    "present_address": presentAddress,
    "zip_code": zipCode,
    "doctor_id": doctorId,
    "date_of_diagnosis": "${dateOfDiagnosis.year.toString().padLeft(4, '0')}-${dateOfDiagnosis.month.toString().padLeft(2, '0')}-${dateOfDiagnosis.day.toString().padLeft(2, '0')}",
    "cancer_type": cancerType,
    "icd_ten_type": icdTenType,
    "cancer_subtype": cancerSubtype,
    "icd_ten_subtype": icdTenSubtype,
    "histopathological": histopathological,
    "organ": organ,
    "pathological": pathological,
    "tumor_classification": tumorClassification,
    "tumor_grade": tumorGrade,
    "group_c_cancer_stage": groupCCancerStage,
    "group_p_cancer_stage": groupPCancerStage,
    "number_of_packet_smoke": numberOfPacketSmoke,
    "diagnosis_type": diagnosisType,
    "guardian_name": guardianName,
    "blood_group": bloodGroup,
    "hospital_name": hospitalName,
    "emergency_phone": emergencyPhone,
    "duration_year": durationYear,
    "duration_month": durationMonth,
    "reg_variable": regVariable,
    "other_histopathological": otherHistopathological,
    "first_treatment_recommend": firstTreatmentRecommend,
    "uploaded_images": List<dynamic>.from(uploadedImages.map((x) => x)),
    "mother_name": motherName,
    "father_name": fatherName,
    "birth_place": birthPlace,
    "nationality": nationality,
    "occupation": occupation,
    "is_dead": isDead,
    "is_chemotherapy": isChemotherapy,
    "is_radiotherapy": isRadiotherapy,
    "is_followup": isFollowup,
    "is_immunotherapy": isImmunotherapy,
    "is_surgery": isSurgery,
    "is_other": isOther,
    "therapy_comment": therapyComment,
    "age": age,
    "is_submitted": isSubmitted,
    "non_smoking_duration_year": nonSmokingDurationYear,
    "non_smoking_duration_month": nonSmokingDurationMonth,
    "alive": alive,
    "expired": "${expired.year.toString().padLeft(4, '0')}-${expired.month.toString().padLeft(2, '0')}-${expired.day.toString().padLeft(2, '0')}",
    "on_treatment_comment": onTreatmentComment,
    "emergency_contact_name": emergencyContactName,
    "neoadjuvant_chemotherapy": neoadjuvantChemotherapy,
    "intensiveCare": intensiveCare,
    "first_line_treatments": List<dynamic>.from(firstLineTreatments.map((x) => x.toJson())),
    "is_non_smoking": isNonSmoking,
    "is_use_tobacco": isUseTobacco,
    "is_smoking": isSmoking,
  };
}

class FirstLineTreatment {
  FirstLineTreatment({
    this.id,
    this.treatment,
    this.userId,
    this.createdAt,
  });

  int id;
  String treatment;
  int userId;
  dynamic createdAt;

  factory FirstLineTreatment.fromJson(Map<String, dynamic> json) => FirstLineTreatment(
    id: json["id"],
    treatment: json["treatment"],
    userId: json["user_id"],
    createdAt: json["created_at"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "treatment": treatment,
    "user_id": userId,
    "created_at": createdAt,
  };
}
