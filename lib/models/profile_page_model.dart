import '../util/flutter_flow_util.dart';
import '../ui/profile_page_widget.dart' show ProfilePageWidget;
import 'package:flutter/material.dart';
import 'flutter_flow_model.dart';

class ProfilePageModel extends FlutterFlowModel<ProfilePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}