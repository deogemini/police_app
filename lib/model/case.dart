class CaseDetails {
  String id;
  String name;
  String age;
  String phone;
  String gender;
  String occupation;
  String nationality;
  String description;
  String address;
  String immediateAction;
  String policeOfficeTakingIntialAction;
  String finalDisposal;
  String createdAt;
  String casenumber;

  CaseDetails({
    this.id,
    this.name,
    this.age,
    this.phone,
    this.gender,
    this.occupation,
    this.nationality,
    this.description,
    this.address,
    this.immediateAction,
    this.policeOfficeTakingIntialAction,
    this.finalDisposal,
    this.createdAt,
    this.casenumber,
  });

  CaseDetails.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        age = json['age'],
        phone = json['phone'],
        gender = json['gender'],
        occupation = json['occupation'],
        nationality = json['nationality'],
        description = json['description'],
        address = json['address'],
        immediateAction = json['immeadteAction'],
        policeOfficeTakingIntialAction = json['policeOfficeTakingIntialAction'],
        finalDisposal = json['finalDisposal'],
        createdAt = json['createdAt'],
        casenumber = json['caseNumber'];
}
