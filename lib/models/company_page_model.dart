import '../util/flutter_flow_util.dart';
import '../ui/company_page_widget.dart' show CompanyPageWidget;
import 'package:flutter/material.dart';
import 'flutter_flow_model.dart';

class CompanyPageModel extends FlutterFlowModel<CompanyPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}