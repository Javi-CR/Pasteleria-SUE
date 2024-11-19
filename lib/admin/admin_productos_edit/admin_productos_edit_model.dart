import '/flutter_flow/flutter_flow_util.dart';
import 'admin_productos_edit_widget.dart' show AdminProductosEditWidget;
import 'package:flutter/material.dart';

class AdminProductosEditModel
    extends FlutterFlowModel<AdminProductosEditWidget> {
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

  // State field(s) for Description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  String? _descriptionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Escriba un Apellido';
    }

    if (val.length < 3) {
      return 'Al menos 3 caracteres';
    }

    return null;
  }

  // State field(s) for Price widget.
  FocusNode? priceFocusNode;
  TextEditingController? priceTextController;
  String? Function(BuildContext, String?)? priceTextControllerValidator;
  // State field(s) for Image widget.
  FocusNode? imageFocusNode;
  TextEditingController? imageTextController;
  String? Function(BuildContext, String?)? imageTextControllerValidator;

  @override
  void initState(BuildContext context) {
    nameTextControllerValidator = _nameTextControllerValidator;
    descriptionTextControllerValidator = _descriptionTextControllerValidator;
  }

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();

    priceFocusNode?.dispose();
    priceTextController?.dispose();

    imageFocusNode?.dispose();
    imageTextController?.dispose();
  }
}
