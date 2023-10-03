import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'navigatefromdummy_model.dart';
export 'navigatefromdummy_model.dart';

class NavigatefromdummyWidget extends StatefulWidget {
  const NavigatefromdummyWidget({
    Key? key,
    required this.id,
    this.product,
  }) : super(key: key);

  final String? id;
  final dynamic product;

  @override
  _NavigatefromdummyWidgetState createState() =>
      _NavigatefromdummyWidgetState();
}

class _NavigatefromdummyWidgetState extends State<NavigatefromdummyWidget> {
  late NavigatefromdummyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavigatefromdummyModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: responsiveVisibility(
          context: context,
          tabletLandscape: false,
          desktop: false,
        )
            ? AppBar(
                backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
                automaticallyImplyLeading: false,
                title: Text(
                  widget.id!,
                  style: FlutterFlowTheme.of(context).headlineMedium,
                ),
                actions: [],
                centerTitle: false,
                elevation: 0.0,
              )
            : null,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                widget.id!,
                style: FlutterFlowTheme.of(context).bodyMedium,
              ),
              Text(
                getJsonField(
                  widget.product,
                  r'''$.id''',
                ).toString(),
                style: FlutterFlowTheme.of(context).bodyMedium,
              ),
              Text(
                getJsonField(
                  widget.product,
                  r'''$.price''',
                ).toString(),
                style: FlutterFlowTheme.of(context).bodyMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
