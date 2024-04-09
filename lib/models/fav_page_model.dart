import '../util/flutter_flow_util.dart';
import '../ui/fav_page_widget.dart' show FavPageWidget;
import 'package:flutter/material.dart';
import 'flutter_flow_model.dart';

class FavPageModel extends FlutterFlowModel<FavPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
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