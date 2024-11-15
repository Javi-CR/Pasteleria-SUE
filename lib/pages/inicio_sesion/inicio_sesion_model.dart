import '/flutter_flow/flutter_flow_util.dart';
import 'inicio_sesion_widget.dart' show InicioSesionWidget;
import 'package:flutter/material.dart';

class InicioSesionModel extends FlutterFlowModel<InicioSesionWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Correo widget.
  FocusNode? correoFocusNode;
  TextEditingController? correoTextController;
  String? Function(BuildContext, String?)? correoTextControllerValidator;
  // State field(s) for pass widget.
  FocusNode? passFocusNode;
  TextEditingController? passTextController;
  late bool passVisibility;
  String? Function(BuildContext, String?)? passTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passVisibility = false;
  }

  @override
  void dispose() {
    correoFocusNode?.dispose();
    correoTextController?.dispose();

    passFocusNode?.dispose();
    passTextController?.dispose();
  }
}
