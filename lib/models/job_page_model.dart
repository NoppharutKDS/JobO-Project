import '../services/api_requests/api_calls.dart';
import '../util/flutter_flow_util.dart';
import '../ui/job_page_widget.dart' show JobPageWidget;
import 'package:flutter/material.dart';
import 'flutter_flow_model.dart';

class JobPageModel extends FlutterFlowModel<JobPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (sendEmail)] action in Button widget.
  ApiCallResponse? apiResulturn;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}