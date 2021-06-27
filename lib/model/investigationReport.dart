import 'package:flutter/material.dart';

class InvestigationReport {
  String id;
  String propertyStolen;
  String photo;
  String court;
  String ifStolenproperty;
  String categoryOfOfficer;
  String offence;
  String section;
  String remarks;
  String irNumber;

  //constructor
  InvestigationReport({
    this.id,
    this.propertyStolen,
    this.photo,
    this.court,
    this.ifStolenproperty,
    this.categoryOfOfficer,
    this.offence,
    this.section,
    this.remarks,
    this.irNumber,
  });

  InvestigationReport.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        propertyStolen = json['propertyStolen'],
        photo = json['photo'],
        court = json['court'],
        ifStolenproperty = json['ifStolenproperty'],
        categoryOfOfficer = json['categoryOfOffence'],
        offence = json['offence'],
        section = json['section'],
        remarks = json['remarks'],
        irNumber = json['irNumber'];
}
