import '../util/flutter_flow_util.dart';
import '../ui/update_job_widget.dart' show UpdateJobWidget;
import 'package:flutter/material.dart';
import 'flutter_flow_model.dart';

class UpdateJobModel extends FlutterFlowModel<UpdateJobWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Jobname widget.
  FocusNode? jobnameFocusNode;
  TextEditingController? jobnameController;
  String? Function(BuildContext, String?)? jobnameControllerValidator;
  // State field(s) for Description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionController;
  String? Function(BuildContext, String?)? descriptionControllerValidator;
  // State field(s) for Duration widget.
  FocusNode? durationFocusNode;
  TextEditingController? durationController;
  String? Function(BuildContext, String?)? durationControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    jobnameFocusNode?.dispose();
    jobnameController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionController?.dispose();

    durationFocusNode?.dispose();
    durationController?.dispose();
  }
}
