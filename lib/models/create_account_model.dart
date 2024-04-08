import '../util/flutter_flow_util.dart';
import '../ui/create_account_widget.dart' show CreateAccountWidget;
import 'package:flutter/material.dart';

class CreateAccountModel extends FlutterFlowModel<CreateAccountWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for EmailField widget.
  FocusNode? emailFieldFocusNode;
  TextEditingController? emailFieldController;
  String? Function(BuildContext, String?)? emailFieldControllerValidator;
  String? _emailFieldControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for UsernameField widget.
  FocusNode? usernameFieldFocusNode;
  TextEditingController? usernameFieldController;
  String? Function(BuildContext, String?)? usernameFieldControllerValidator;
  String? _usernameFieldControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Username is required';
    }

    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return 'Must start with a letter and can only contain letters, digits and - or _.';
    }
    return null;
  }

  // State field(s) for PasswordField widget.
  FocusNode? passwordFieldFocusNode;
  TextEditingController? passwordFieldController;
  late bool passwordFieldVisibility;
  String? Function(BuildContext, String?)? passwordFieldControllerValidator;
  String? _passwordFieldControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Password is required';
    }

    return null;
  }

  // State field(s) for ConfirmField widget.
  FocusNode? confirmFieldFocusNode;
  TextEditingController? confirmFieldController;
  late bool confirmFieldVisibility;
  String? Function(BuildContext, String?)? confirmFieldControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    emailFieldControllerValidator = _emailFieldControllerValidator;
    usernameFieldControllerValidator = _usernameFieldControllerValidator;
    passwordFieldVisibility = false;
    passwordFieldControllerValidator = _passwordFieldControllerValidator;
    confirmFieldVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    emailFieldFocusNode?.dispose();
    emailFieldController?.dispose();

    usernameFieldFocusNode?.dispose();
    usernameFieldController?.dispose();

    passwordFieldFocusNode?.dispose();
    passwordFieldController?.dispose();

    confirmFieldFocusNode?.dispose();
    confirmFieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}