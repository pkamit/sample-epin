import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/components/add_address_base/add_address_base_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ModalAddAddressModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // Model for addAddress_Base component.
  late AddAddressBaseModel addAddressBaseModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    addAddressBaseModel = createModel(context, () => AddAddressBaseModel());
  }

  void dispose() {
    addAddressBaseModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
