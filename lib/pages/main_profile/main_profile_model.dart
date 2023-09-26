import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/emtpy_state/emtpy_state_widget.dart';
import '/components/modal_edit/modal_edit_widget.dart';
import '/components/top_nav/top_nav_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MainProfileModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for topNav component.
  late TopNavModel topNavModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    topNavModel = createModel(context, () => TopNavModel());
  }

  void dispose() {
    unfocusNode.dispose();
    topNavModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
