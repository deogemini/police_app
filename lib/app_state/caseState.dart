import 'package:flutter/widgets.dart';
import 'package:police_app/model/case.dart';
import 'package:police_app/service/caseService.dart';

class CaseState extends ChangeNotifier {
  CaseDetails _caseDetails;
  List<CaseDetails> _caseDetailsLists;

  CaseDetails get caseDetails => _caseDetails;
  List<CaseDetails> get caseDetailsLists => _caseDetailsLists ?? [];

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
}
