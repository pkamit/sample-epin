import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'u_i_marker_model.dart';
export 'u_i_marker_model.dart';

class UIMarkerWidget extends StatefulWidget {
  const UIMarkerWidget({Key? key}) : super(key: key);

  @override
  _UIMarkerWidgetState createState() => _UIMarkerWidgetState();
}

class _UIMarkerWidgetState extends State<UIMarkerWidget>
    with TickerProviderStateMixin {
  late UIMarkerModel _model;

  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 400.ms,
          begin: 0.0,
          end: 1.0,
        ),
        RotateEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 400.ms,
          begin: 0.5,
          end: 1.0,
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 400.ms,
          begin: Offset(0.7, 0.7),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UIMarkerModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: AlignmentDirectional(1.00, 0.00),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 44.0, 0.0),
        child: Container(
          width: 32.0,
          height: 32.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).accent1,
            borderRadius: BorderRadius.circular(12.0),
            shape: BoxShape.rectangle,
            border: Border.all(
              color: FlutterFlowTheme.of(context).primary,
              width: 2.0,
            ),
          ),
          alignment: AlignmentDirectional(0.00, 0.00),
          child: Icon(
            FFIcons.kcheck,
            color: FlutterFlowTheme.of(context).primary,
            size: 20.0,
          ),
        ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
      ),
    );
  }
}
