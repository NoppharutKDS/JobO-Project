import '../util/flutter_flow_util.dart';
import '../ui/home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';
import 'flutter_flow_model.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}