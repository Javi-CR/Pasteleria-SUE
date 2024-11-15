import '/flutter_flow/flutter_flow_util.dart';
import 'editar_perfil_widget.dart' show EditarPerfilWidget;
import 'package:flutter/material.dart';

class EditarPerfilModel extends FlutterFlowModel<EditarPerfilWidget> {
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

  // State field(s) for Image widget.
  FocusNode? imageFocusNode;
  TextEditingController? imageTextController;
  String? Function(BuildContext, String?)? imageTextControllerValidator;

  @override
  void initState(BuildContext context) {
    nameTextControllerValidator = _nameTextControllerValidator;
    lastNameTextControllerValidator = _lastNameTextControllerValidator;
  }

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    lastNameFocusNode?.dispose();
    lastNameTextController?.dispose();

    imageFocusNode?.dispose();
    imageTextController?.dispose();
  }
}
