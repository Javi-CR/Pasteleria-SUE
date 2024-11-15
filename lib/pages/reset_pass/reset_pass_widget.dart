import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'reset_pass_model.dart';
export 'reset_pass_model.dart';

class ResetPassWidget extends StatefulWidget {
  const ResetPassWidget({super.key});

  @override
  State<ResetPassWidget> createState() => _ResetPassWidgetState();
}

class _ResetPassWidgetState extends State<ResetPassWidget> {
  late ResetPassModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ResetPassModel());

    _model.emailTextController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primary,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: true,
          title: Text(
            'Regresar',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Arima',
                  color: FlutterFlowTheme.of(context).customColor1,
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                  child: Container(
                    width: 200.0,
                    height: 200.0,
                    decoration: BoxDecoration(
                      color: const Color(0xFF294D47),
                      image: DecorationImage(
                        fit: BoxFit.contain,
                        image: Image.asset(
                          Theme.of(context).brightness == Brightness.dark
                              ? 'assets/images/Diseo_sin_ttulo_(1)_1.png'
                              : 'assets/images/Diseo_sin_ttulo_(1)_1.png',
                        ).image,
                      ),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(200.0),
                        bottomRight: Radius.circular(200.0),
                        topLeft: Radius.circular(200.0),
                        topRight: Radius.circular(200.0),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Pastelería',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Arima',
                                    color: const Color(0xFFEDB232),
                                    fontSize: 25.0,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                        Text(
                          'SUE',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Arima',
                                    color: Colors.white,
                                    fontSize: 30.0,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 50.0),
                child: Text(
                  'Escribe tu correo electrónico Actual\npara cambiar tu contraseña',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Arima',
                        color: Colors.white,
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 50.0),
                child: SizedBox(
                  width: 300.0,
                  child: TextFormField(
                    controller: _model.emailTextController,
                    focusNode: _model.textFieldFocusNode,
                    autofocus: false,
                    obscureText: false,
                    decoration: InputDecoration(
                      isDense: true,
                      labelStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Arima',
                                color: Colors.black,
                                letterSpacing: 0.0,
                              ),
                      hintText: 'Correo Electrónico',
                      hintStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Arima',
                                color: Colors.black,
                                letterSpacing: 0.0,
                              ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      filled: true,
                      fillColor: const Color(0x98FFFFFF),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Arima',
                          color: Colors.black,
                          letterSpacing: 0.0,
                        ),
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: FlutterFlowTheme.of(context).primaryText,
                    validator: _model.emailTextControllerValidator
                        .asValidator(context),
                  ),
                ),
              ),
              FFButtonWidget(
                onPressed: () async {
                  if (_model.emailTextController.text.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          'Email required!',
                        ),
                      ),
                    );
                    return;
                  }
                  await authManager.resetPassword(
                    email: _model.emailTextController.text,
                    context: context,
                  );

                  context.pushNamed('Perfil');
                },
                text: 'Enviar Correo',
                options: FFButtonOptions(
                  width: 150.0,
                  height: 40.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: const Color(0xFF1E423F),
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Arima',
                        color: Colors.white,
                        letterSpacing: 0.0,
                      ),
                  elevation: 0.0,
                  borderRadius: BorderRadius.circular(24.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
