import '/flutter_flow/flutter_flow_util.dart';
import 'registrarse_widget.dart' show RegistrarseWidget;
import 'package:flutter/material.dart';

class RegistrarseModel extends FlutterFlowModel<RegistrarseWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  String? _nameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Escriba un Nombre';
    }

    if (val.length < 3) {
      return 'Al menos 3 caracteres';
    }

    return null;
  }

  // State field(s) for LastName widget.
  FocusNode? lastNameFocusNode;
  TextEditingController? lastNameTextController;
  String? Function(BuildContext, String?)? lastNameTextControllerValidator;
  String? _lastNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Escriba un Apellido';
    }

    if (val.length < 3) {
      return 'Al menos 3 caracteres';
    }

    return null;
  }

  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  String? _emailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Escriba un Correo Valido';
    }

    return null;
  }

  // State field(s) for pass widget.
  FocusNode? passFocusNode;
  TextEditingController? passTextController;
  late bool passVisibility;
  String? Function(BuildContext, String?)? passTextControllerValidator;
  String? _passTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Escriba una Contraseña Valida';
    }

    if (val.length < 8) {
      return 'Al menos 8 caracteres';
    }

    return null;
  }

  // State field(s) for confirmpass widget.
  FocusNode? confirmpassFocusNode;
  TextEditingController? confirmpassTextController;
  late bool confirmpassVisibility;
  String? Function(BuildContext, String?)? confirmpassTextControllerValidator;
  String? _confirmpassTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Corfirme la contraseña';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    nameTextControllerValidator = _nameTextControllerValidator;
    lastNameTextControllerValidator = _lastNameTextControllerValidator;
    emailTextControllerValidator = _emailTextControllerValidator;
    passVisibility = false;
    passTextControllerValidator = _passTextControllerValidator;
    confirmpassVisibility = false;
    confirmpassTextControllerValidator = _confirmpassTextControllerValidator;
  }

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    lastNameFocusNode?.dispose();
    lastNameTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    passFocusNode?.dispose();
    passTextController?.dispose();

    confirmpassFocusNode?.dispose();
    confirmpassTextController?.dispose();
  }
}
