import '../util/flutter_flow_util.dart';
import '../ui/phone_ver_widget.dart' show PhoneVerWidget;
import 'package:flutter/material.dart';
import 'flutter_flow_model.dart';

class PhoneVerModel extends FlutterFlowModel<PhoneVerWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}