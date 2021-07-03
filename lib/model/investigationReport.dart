class InvestigationReport {
  String id;
  // bool propertyStolen;
  String photo;
  // bool court;
  String ifStolenproperty;
  String categoryOfOffence;
  String offence;
  String description;
  String caseId;
  String section;
  String remarks;
  String irNumber;

  //constructor
  InvestigationReport({
    this.id,
    // this.propertyStolen,
    this.photo,
    // this.court,
    this.ifStolenproperty,
    this.categoryOfOffence,
    this.offence,
    this.description,
    this.caseId,
    this.section,
    this.remarks,
    this.irNumber,
  });

  InvestigationReport.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        // propertyStolen = json['propertyStolen'],
        photo = json['photo'],
        // court = json['court'],
        ifStolenproperty = json['ifStolenproperty'],
        categoryOfOffence = json['categoryOfOffence'],
        description = json['description'],
        caseId = json['case'],
        offence = json['offence'],
        section = json['section'],
        remarks = json['remarks'],
        irNumber = json['irNumber'];
}
