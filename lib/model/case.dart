class caseDetails {
  String description;
  String casenumber;
  String immediateAction;

  caseDetails({this.casenumber, this.description, this.immediateAction});

  caseDetails.fromJson(Map<String, dynamic> json)
      : description = json['description'],
        casenumber = json['status'],
        immediateAction = json['immeadteAction'];
}
