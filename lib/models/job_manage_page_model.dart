import '../util/flutter_flow_util.dart';
import '../ui/job_manage_page_widget.dart' show JobManagePageWidget;
import 'package:flutter/material.dart';
import 'flutter_flow_model.dart';

class JobManagePageModel extends FlutterFlowModel<JobManagePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}