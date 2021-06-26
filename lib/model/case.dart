class CaseDetails {
  String id;
  String description;
  String name;
  String age;
  String phone;
  String gender;
  String occupation;
  String nationality;
  String address;
  String casenumber;
  String immediateAction;

  CaseDetails(
      {
        this.id,
        this.address,
      this.age,
      this.gender,
      this.nationality,
      this.phone,
      this.occupation,
      this.casenumber,
      this.description,
      this.immediateAction,
       this. name});

  CaseDetails.fromJson(Map<String, dynamic> json)
      : id = json['id'] ?? "id", 
      description = json['description'] ?? "description",
        casenumber = json['caseNumber'] ?? "caseNumber",
        immediateAction = json['immeadteAction'],
        occupation = json['occupation'] ?? "occupation",
        phone = json['phone'] ?? "phone",
        gender = json['gender'] ?? "gender",
        name = json['name'] ?? "name",
        address = json['address'] ?? "address",
        nationality = json['nationality'] ?? "nationality";
}
