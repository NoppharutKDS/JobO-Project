import '../services/api_requests/api_calls.dart';
import '../util/flutter_flow_util.dart';
import '../ui/job_page_widget.dart' show JobPageWidget;
import 'package:flutter/material.dart';

class JobPageModel extends FlutterFlowModel<JobPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (sendEmail)] action in Button widget.
  ApiCallResponse? sendJobapply;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}