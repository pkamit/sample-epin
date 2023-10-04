import '/components/gradient_button/gradient_button_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'product_details_copy_model.dart';
export 'product_details_copy_model.dart';

class ProductDetailsCopyWidget extends StatefulWidget {
  const ProductDetailsCopyWidget({
    Key? key,
    required this.productRef,
  }) : super(key: key);

  final dynamic productRef;

  @override
  _ProductDetailsCopyWidgetState createState() =>
      _ProductDetailsCopyWidgetState();
}

class _ProductDetailsCopyWidgetState extends State<ProductDetailsCopyWidget>
    with TickerProviderStateMixin {
  late ProductDetailsCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'rowOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, -70.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'columnOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 50.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'columnOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 50.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 250.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 250.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 250.ms,
          duration: 600.ms,
          begin: Offset(0.0, 50.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductDetailsCopyModel());

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
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Align(
                        alignment: AlignmentDirectional(0.00, 0.00),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              4.0, 0.0, 4.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            constraints: BoxConstraints(
                              maxWidth: 1170.0,
                            ),
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                width: 2.0,
                              ),
                            ),
                            child: Container(
                              width: double.infinity,
                              child: Stack(
                                children: [
                                  SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  4.0, 12.0, 0.0, 12.0),
                                          child: Container(
                                            width: double.infinity,
                                            height: 44.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                            ),
                                            child: SingleChildScrollView(
                                              scrollDirection: Axis.horizontal,
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  wrapWithModel(
                                                    model: _model
                                                        .gradientButtonModel,
                                                    updateCallback: () =>
                                                        setState(() {}),
                                                    child: GradientButtonWidget(
                                                      action: () async {
                                                        context.pushNamed(
                                                          'mainHomePage',
                                                          extra: <String,
                                                              dynamic>{
                                                            kTransitionInfoKey:
                                                                TransitionInfo(
                                                              hasTransition:
                                                                  true,
                                                              transitionType:
                                                                  PageTransitionType
                                                                      .fade,
                                                              duration: Duration(
                                                                  milliseconds:
                                                                      0),
                                                            ),
                                                          },
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(12.0, 0.0,
                                                                12.0, 0.0),
                                                    child: Icon(
                                                      Icons
                                                          .chevron_right_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 16.0,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                16.0, 0.0),
                                                    child: Container(
                                                      height: 32.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent1,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                        border: Border.all(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          width: 2.0,
                                                        ),
                                                      ),
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.00, 0.00),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    0.0,
                                                                    16.0,
                                                                    0.0),
                                                        child: Text(
                                                          'Product Details',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ).animateOnPageLoad(animationsMap[
                                                'rowOnPageLoadAnimation']!),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  4.0, 0.0, 4.0, 140.0),
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              boxShadow: [
                                                BoxShadow(
                                                  blurRadius: 2.0,
                                                  color: Color(0x520E151B),
                                                  offset: Offset(0.0, 1.0),
                                                )
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            child: SingleChildScrollView(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                16.0,
                                                                16.0,
                                                                16.0,
                                                                16.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      16.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Expanded(
                                                                child: Hero(
                                                                  tag:
                                                                      'productMain',
                                                                  transitionOnUserGestures:
                                                                      true,
                                                                  child:
                                                                      ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10.0),
                                                                    child: Image
                                                                        .network(
                                                                      'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/adf87c27-e670-4e75-86fd-31c1241b9ed6/air-max-90-mens-shoes-6n3vKB.png',
                                                                      width:
                                                                          400.0,
                                                                      height:
                                                                          400.0,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              if (responsiveVisibility(
                                                                context:
                                                                    context,
                                                                phone: false,
                                                                tablet: false,
                                                              ))
                                                                Expanded(
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            24.0,
                                                                            12.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Text(
                                                                              'Sport Tennis Shoe',
                                                                              style: FlutterFlowTheme.of(context).headlineLarge,
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              12.0,
                                                                              0.0,
                                                                              12.0),
                                                                          child:
                                                                              Text(
                                                                            '\$150.00',
                                                                            style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleLargeFamily),
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              4.0,
                                                                              24.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            'It\'s the perfect mix: a splash of heritage Nike running and a whole lot of comfort. The fast-paced look also includes a revamped Air unit window to energize your every step.',
                                                                            style:
                                                                                FlutterFlowTheme.of(context).labelLarge,
                                                                          ),
                                                                        ),
                                                                        Divider(
                                                                          height:
                                                                              36.0,
                                                                          thickness:
                                                                              1.0,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).alternate,
                                                                        ),
                                                                        Text(
                                                                          'Shoe Size',
                                                                          style:
                                                                              FlutterFlowTheme.of(context).labelMedium,
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              12.0,
                                                                              0.0,
                                                                              8.0),
                                                                          child:
                                                                              FlutterFlowChoiceChips(
                                                                            options: [
                                                                              ChipData('Size 8'),
                                                                              ChipData('Size 9'),
                                                                              ChipData('Size 10'),
                                                                              ChipData('Size 11'),
                                                                              ChipData('Size 12'),
                                                                              ChipData('Size 13')
                                                                            ],
                                                                            onChanged: (val) =>
                                                                                setState(() => _model.choiceChipsValue1 = val?.first),
                                                                            selectedChipStyle:
                                                                                ChipStyle(
                                                                              backgroundColor: FlutterFlowTheme.of(context).primary,
                                                                              textStyle: FlutterFlowTheme.of(context).titleSmall,
                                                                              iconColor: FlutterFlowTheme.of(context).primaryText,
                                                                              iconSize: 18.0,
                                                                              elevation: 4.0,
                                                                            ),
                                                                            unselectedChipStyle:
                                                                                ChipStyle(
                                                                              backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
                                                                              textStyle: FlutterFlowTheme.of(context).labelLarge,
                                                                              iconColor: FlutterFlowTheme.of(context).primaryText,
                                                                              iconSize: 18.0,
                                                                              elevation: 0.0,
                                                                            ),
                                                                            chipSpacing:
                                                                                8.0,
                                                                            rowSpacing:
                                                                                12.0,
                                                                            multiselect:
                                                                                false,
                                                                            initialized:
                                                                                _model.choiceChipsValue1 != null,
                                                                            alignment:
                                                                                WrapAlignment.start,
                                                                            controller: _model.choiceChipsValueController1 ??=
                                                                                FormFieldController<List<String>>(
                                                                              [
                                                                                'Size 8'
                                                                              ],
                                                                            ),
                                                                            wrapped:
                                                                                true,
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              12.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            'Color',
                                                                            style:
                                                                                FlutterFlowTheme.of(context).labelMedium,
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              12.0,
                                                                              0.0,
                                                                              8.0),
                                                                          child:
                                                                              FlutterFlowChoiceChips(
                                                                            options: [
                                                                              ChipData('Gray'),
                                                                              ChipData('White'),
                                                                              ChipData('Black & Charcoal'),
                                                                              ChipData('Blue & White')
                                                                            ],
                                                                            onChanged: (val) =>
                                                                                setState(() => _model.choiceChipsValue2 = val?.first),
                                                                            selectedChipStyle:
                                                                                ChipStyle(
                                                                              backgroundColor: FlutterFlowTheme.of(context).primary,
                                                                              textStyle: FlutterFlowTheme.of(context).titleSmall,
                                                                              iconColor: FlutterFlowTheme.of(context).primaryText,
                                                                              iconSize: 18.0,
                                                                              elevation: 4.0,
                                                                            ),
                                                                            unselectedChipStyle:
                                                                                ChipStyle(
                                                                              backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
                                                                              textStyle: FlutterFlowTheme.of(context).labelLarge,
                                                                              iconColor: FlutterFlowTheme.of(context).primaryText,
                                                                              iconSize: 18.0,
                                                                              elevation: 0.0,
                                                                            ),
                                                                            chipSpacing:
                                                                                8.0,
                                                                            rowSpacing:
                                                                                12.0,
                                                                            multiselect:
                                                                                false,
                                                                            initialized:
                                                                                _model.choiceChipsValue2 != null,
                                                                            alignment:
                                                                                WrapAlignment.start,
                                                                            controller: _model.choiceChipsValueController2 ??=
                                                                                FormFieldController<List<String>>(
                                                                              [
                                                                                'Gray'
                                                                              ],
                                                                            ),
                                                                            wrapped:
                                                                                true,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ).animateOnPageLoad(
                                                                            animationsMap['columnOnPageLoadAnimation1']!),
                                                                  ),
                                                                ),
                                                            ],
                                                          ),
                                                        ),
                                                        if (responsiveVisibility(
                                                          context: context,
                                                          tabletLandscape:
                                                              false,
                                                          desktop: false,
                                                        ))
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        12.0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  'Sport Tennis Shoe',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineLarge,
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          12.0,
                                                                          0.0,
                                                                          12.0),
                                                                  child: Text(
                                                                    '\$150.00',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).titleLargeFamily,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleLargeFamily),
                                                                        ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          4.0,
                                                                          24.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    'It\'s the perfect mix: a splash of heritage Nike running and a whole lot of comfort. The fast-paced look also includes a revamped Air unit window to energize your every step.',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelLarge,
                                                                  ),
                                                                ),
                                                                Divider(
                                                                  height: 36.0,
                                                                  thickness:
                                                                      1.0,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .alternate,
                                                                ),
                                                                Text(
                                                                  'Shoe Size',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium,
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          12.0,
                                                                          0.0,
                                                                          8.0),
                                                                  child:
                                                                      FlutterFlowChoiceChips(
                                                                    options: [
                                                                      ChipData(
                                                                          'Size 8'),
                                                                      ChipData(
                                                                          'Size 9'),
                                                                      ChipData(
                                                                          'Size 10'),
                                                                      ChipData(
                                                                          'Size 11'),
                                                                      ChipData(
                                                                          'Size 12'),
                                                                      ChipData(
                                                                          'Size 13')
                                                                    ],
                                                                    onChanged: (val) =>
                                                                        setState(() =>
                                                                            _model.choiceChipsValue3 =
                                                                                val?.first),
                                                                    selectedChipStyle:
                                                                        ChipStyle(
                                                                      backgroundColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .primary,
                                                                      textStyle:
                                                                          FlutterFlowTheme.of(context)
                                                                              .titleSmall,
                                                                      iconColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .primaryText,
                                                                      iconSize:
                                                                          18.0,
                                                                      elevation:
                                                                          4.0,
                                                                    ),
                                                                    unselectedChipStyle:
                                                                        ChipStyle(
                                                                      backgroundColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .primaryBackground,
                                                                      textStyle:
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelLarge,
                                                                      iconColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .primaryText,
                                                                      iconSize:
                                                                          18.0,
                                                                      elevation:
                                                                          0.0,
                                                                    ),
                                                                    chipSpacing:
                                                                        8.0,
                                                                    rowSpacing:
                                                                        12.0,
                                                                    multiselect:
                                                                        false,
                                                                    initialized:
                                                                        _model.choiceChipsValue3 !=
                                                                            null,
                                                                    alignment:
                                                                        WrapAlignment
                                                                            .start,
                                                                    controller: _model
                                                                            .choiceChipsValueController3 ??=
                                                                        FormFieldController<
                                                                            List<String>>(
                                                                      [
                                                                        'Size 8'
                                                                      ],
                                                                    ),
                                                                    wrapped:
                                                                        true,
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          12.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    'Color',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium,
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          12.0,
                                                                          0.0,
                                                                          8.0),
                                                                  child:
                                                                      FlutterFlowChoiceChips(
                                                                    options: [
                                                                      ChipData(
                                                                          'Gray'),
                                                                      ChipData(
                                                                          'White'),
                                                                      ChipData(
                                                                          'Black & Charcoal'),
                                                                      ChipData(
                                                                          'Blue & White')
                                                                    ],
                                                                    onChanged: (val) =>
                                                                        setState(() =>
                                                                            _model.choiceChipsValue4 =
                                                                                val?.first),
                                                                    selectedChipStyle:
                                                                        ChipStyle(
                                                                      backgroundColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .primary,
                                                                      textStyle:
                                                                          FlutterFlowTheme.of(context)
                                                                              .titleSmall,
                                                                      iconColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .primaryText,
                                                                      iconSize:
                                                                          18.0,
                                                                      elevation:
                                                                          4.0,
                                                                    ),
                                                                    unselectedChipStyle:
                                                                        ChipStyle(
                                                                      backgroundColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .primaryBackground,
                                                                      textStyle:
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelLarge,
                                                                      iconColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .primaryText,
                                                                      iconSize:
                                                                          18.0,
                                                                      elevation:
                                                                          0.0,
                                                                    ),
                                                                    chipSpacing:
                                                                        8.0,
                                                                    rowSpacing:
                                                                        12.0,
                                                                    multiselect:
                                                                        false,
                                                                    initialized:
                                                                        _model.choiceChipsValue4 !=
                                                                            null,
                                                                    alignment:
                                                                        WrapAlignment
                                                                            .start,
                                                                    controller: _model
                                                                            .choiceChipsValueController4 ??=
                                                                        FormFieldController<
                                                                            List<String>>(
                                                                      ['Gray'],
                                                                    ),
                                                                    wrapped:
                                                                        true,
                                                                  ),
                                                                ),
                                                              ],
                                                            ).animateOnPageLoad(
                                                                animationsMap[
                                                                    'columnOnPageLoadAnimation2']!),
                                                          ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.00, 1.00),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 32.0),
                                      child: Container(
                                        width: double.infinity,
                                        height: 80.0,
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 4.0,
                                              color: Color(0x33000000),
                                              offset: Offset(0.0, 2.0),
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          child: BackdropFilter(
                                            filter: ImageFilter.blur(
                                              sigmaX: 5.0,
                                              sigmaY: 2.0,
                                            ),
                                            child: Container(
                                              width: double.infinity,
                                              height: 80.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .accent4,
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Container(
                                                      width: 160.0,
                                                      height: 50.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent4,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(25.0),
                                                        shape:
                                                            BoxShape.rectangle,
                                                        border: Border.all(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .alternate,
                                                          width: 2.0,
                                                        ),
                                                      ),
                                                      child:
                                                          FlutterFlowCountController(
                                                        decrementIconBuilder:
                                                            (enabled) => FaIcon(
                                                          FontAwesomeIcons
                                                              .minus,
                                                          color: enabled
                                                              ? FlutterFlowTheme
                                                                      .of(
                                                                          context)
                                                                  .alternate
                                                              : FlutterFlowTheme
                                                                      .of(context)
                                                                  .alternate,
                                                          size: 20.0,
                                                        ),
                                                        incrementIconBuilder:
                                                            (enabled) => FaIcon(
                                                          FontAwesomeIcons.plus,
                                                          color: enabled
                                                              ? FlutterFlowTheme
                                                                      .of(
                                                                          context)
                                                                  .primary
                                                              : FlutterFlowTheme
                                                                      .of(context)
                                                                  .alternate,
                                                          size: 20.0,
                                                        ),
                                                        countBuilder: (count) =>
                                                            Text(
                                                          count.toString(),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .headlineSmall,
                                                        ),
                                                        count: _model
                                                            .countControllerValue ??= 1,
                                                        updateCount: (count) =>
                                                            setState(() => _model
                                                                    .countControllerValue =
                                                                count),
                                                        stepSize: 1,
                                                      ),
                                                    ),
                                                    FFButtonWidget(
                                                      onPressed: () async {},
                                                      text: 'Add to Cart',
                                                      options: FFButtonOptions(
                                                        width: 150.0,
                                                        height: 50.0,
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        iconPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall,
                                                        elevation: 2.0,
                                                        borderSide: BorderSide(
                                                          color: Colors
                                                              .transparent,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(50.0),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ).animateOnPageLoad(animationsMap[
                                          'containerOnPageLoadAnimation']!),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
