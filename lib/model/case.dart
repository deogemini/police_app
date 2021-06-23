class CaseDetails {
  String description;
  String casenumber;
  String immediateAction;

  CaseDetails({this.casenumber, this.description, this.immediateAction});

  CaseDetails.fromJson(Map<String, dynamic> json)
      : description = json['description'],
        casenumber = json['caseNumber'],
        immediateAction = json['immeadteAction'];
}
