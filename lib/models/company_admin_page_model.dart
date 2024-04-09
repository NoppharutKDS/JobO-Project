import '../util/flutter_flow_util.dart';
import '../ui/company_admin_page_widget.dart' show CompanyAdminPageWidget;
import 'package:flutter/material.dart';
import 'flutter_flow_model.dart';

class CompanyAdminPageModel extends FlutterFlowModel<CompanyAdminPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}