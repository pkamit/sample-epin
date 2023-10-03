import '/components/edit_profile_form/edit_profile_form_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'modal_edit_widget.dart' show ModalEditWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ModalEditModel extends FlutterFlowModel<ModalEditWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for editProfileForm component.
  late EditProfileFormModel editProfileFormModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    editProfileFormModel = createModel(context, () => EditProfileFormModel());
  }

  void dispose() {
    editProfileFormModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
