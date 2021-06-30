import 'package:flutter/widgets.dart';
import 'package:police_app/model/investigationReport.dart';
import 'package:police_app/model/case.dart';
import 'package:police_app/service/caseService.dart';

class CaseState extends ChangeNotifier {
  CaseDetails _caseDetails;
  List<CaseDetails> _caseDetailsLists;

  InvestigationReport _investigationReport;
  List<InvestigationReport> _investigationReports;

  CaseDetails get caseDetails => _caseDetails;
  List<CaseDetails> get caseDetailsLists => _caseDetailsLists ?? [];

  InvestigationReport get investigationReport => _investigationReport;
  List<InvestigationReport> get investigationsReports =>
      _investigationReports ?? [];

  Future<void> onSetCurrentCase(CaseDetails caseDetail) async {
    print("in states ");
    print(caseDetail.name);
    _caseDetails = caseDetail;
    notifyListeners();
  }

  Future<void> onGetCasesLists() async {
    _caseDetailsLists = await CaseService().fetchData();
    notifyListeners();
  }

  Future<void> onGetCasesDetail() async {
    print("in state");
    _investigationReports =
        await CaseService().fetchIndividualData(caseDetails.id);
    notifyListeners();
  }
}
