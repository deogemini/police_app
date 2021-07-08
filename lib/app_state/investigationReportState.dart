// import 'package:flutter/widgets.dart';
// import 'package:police_app/service/InvestigationReport.dart';

// class InvestigationReportState extends ChangeNotifier {
//   bool _isPosted;

//   bool get isPosting => _isPosted ?? false;

//   Future <bool> onPosting(
//     String id,
//       String investigationOfficer,
//       String categoryoffence,
//       String descriptions,
//       String remarks,
//       String offence,
//       String section,
//       String ifstolenpropert) async {
//     _isPosted = true;
//     notifyListeners();
//     if (await InvestigationReportService().submit( 
//           id,
//         investigationOfficer,
//         categoryoffence,
//         descriptions,
//         remarks,
//         offence,
//         section,
//         ifstolenpropert)) {
//       _isPosted = false;
//       notifyListeners();
//     } else {
//       _isPosted = false;
//       notifyListeners();
//     }
//   }
// }
