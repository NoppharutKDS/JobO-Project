import '../flutter_flow/flutter_flow_timer.dart';
import '../util/flutter_flow_util.dart';
import '../util/instant_timer.dart';
import '../ui/o_t_p_ver_widget.dart' show OTPVerWidget;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'flutter_flow_model.dart';

class OTPVerModel extends FlutterFlowModel<OTPVerWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  InstantTimer? instantTimer;
  // State field(s) for Timer widget.
  int timerMilliseconds = 300000;
  String timerValue = StopWatchTimer.getDisplayTime(
    300000,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    instantTimer?.cancel();
    timerController.dispose();
    pinCodeController?.dispose();
  }
}
