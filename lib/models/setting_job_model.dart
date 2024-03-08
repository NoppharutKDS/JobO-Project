import '../services/firebase_auth/auth_util.dart';
import '../services/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '../util/theme/flutter_flow_theme.dart';
import '../util/flutter_flow_util.dart';
import '../ui/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '../ui/setting_job_widget.dart' show SettingJobWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SettingJobModel extends FlutterFlowModel<SettingJobWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for Jobname widget.
  FocusNode? jobnameFocusNode;
  TextEditingController? jobnameController;
  String? Function(BuildContext, String?)? jobnameControllerValidator;
  String? _jobnameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for Description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionController;
  String? Function(BuildContext, String?)? descriptionControllerValidator;
  // State field(s) for Duration widget.
  FocusNode? durationFocusNode;
  TextEditingController? durationController;
  String? Function(BuildContext, String?)? durationControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    jobnameControllerValidator = _jobnameControllerValidator;
  }

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

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
