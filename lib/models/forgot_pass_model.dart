import '../util/flutter_flow_util.dart';
import '../ui/forgot_pass_widget.dart' show ForgotPassWidget;
import 'package:flutter/material.dart';
import 'flutter_flow_model.dart';

class ForgotPassModel extends FlutterFlowModel<ForgotPassWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailAddressFocusNode?.dispose();
    emailAddressController?.dispose();
  }
}