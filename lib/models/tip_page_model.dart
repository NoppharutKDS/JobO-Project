import '../util/flutter_flow_util.dart';
import '../ui/tip_page_widget.dart' show TipPageWidget;
import 'package:flutter/material.dart';
import 'flutter_flow_model.dart';

class TipPageModel extends FlutterFlowModel<TipPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}