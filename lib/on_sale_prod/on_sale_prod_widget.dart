import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../my_cart/my_cart_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnSaleProdWidget extends StatefulWidget {
  const OnSaleProdWidget({Key? key}) : super(key: key);

  @override
  _OnSaleProdWidgetState createState() => _OnSaleProdWidgetState();
}

class _OnSaleProdWidgetState extends State<OnSaleProdWidget> {
  PageController? pageViewController;
  String? dropDownValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          buttonSize: 48,
          icon: Icon(
            Icons.arrow_back,
            color: FlutterFlowTheme.of(context).primaryBtnText,
            size: 30,
          ),
          onPressed: () {
            print('IconButton pressed ...');
          },
        ),
        title: Text(
          FFLocalizations.of(context).getText(
            'jkq0cmy4' /* Ariel Drone */,
          ),
          style: FlutterFlowTheme.of(context).bodyText2.override(
                fontFamily: 'Lexend',
                color: FlutterFlowTheme.of(context).primaryBtnText,
                fontSize: 26,
                fontWeight: FontWeight.w600,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: 400,
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
                          child: PageView(
                            controller: pageViewController ??=
                                PageController(initialPage: 0),
                            scrollDirection: Axis.horizontal,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20, 0, 20, 0),
                                child: Image.asset(
                                  'assets/images/Saleitem2.png',
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20, 0, 20, 0),
                                child: Image.asset(
                                  'assets/images/Saleitem2b.png',
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20, 0, 20, 0),
                                child: Image.asset(
                                  'assets/images/Saleitem2c.png',
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0, 1),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                            child: SmoothPageIndicator(
                              controller: pageViewController ??=
                                  PageController(initialPage: 0),
                              count: 3,
                              axisDirection: Axis.horizontal,
                              onDotClicked: (i) {
                                pageViewController!.animateToPage(
                                  i,
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.ease,
                                );
                              },
                              effect: ExpandingDotsEffect(
                                expansionFactor: 2,
                                spacing: 8,
                                radius: 16,
                                dotWidth: 16,
                                dotHeight: 16,
                                dotColor: Color(0xFF9E9E9E),
                                activeDotColor: Color(0xFF3F51B5),
                                paintStyle: PaintingStyle.fill,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'sso1i2hm' /* WiFi FPV Pioneer Optical Flow ... */,
                      ),
                      style: FlutterFlowTheme.of(context).title3,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    FFLocalizations.of(context).getText(
                      'f2o1bcsn' /* Ariel Drone */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyText2.override(
                          fontFamily: 'Lexend',
                          color: FlutterFlowTheme.of(context).grayLight,
                        ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, 0.05),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(40, 0, 0, 0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'jazowcwe' /* ₹14,999.00 */,
                        ),
                        textAlign: TextAlign.end,
                        style: FlutterFlowTheme.of(context).title3.override(
                              fontFamily: 'Lexend Deca',
                              color: FlutterFlowTheme.of(context).tertiary400,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.lineThrough,
                            ),
                      ),
                    ),
                  ),
                  Text(
                    FFLocalizations.of(context).getText(
                      '4mkho3ck' /* ₹10,999.00 */,
                    ),
                    textAlign: TextAlign.end,
                    style: FlutterFlowTheme.of(context).title3.override(
                          fontFamily: 'Lexend Deca',
                          color: FlutterFlowTheme.of(context).gray200,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'do5eg1ic' /* This drone comes with dual cam... */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyText2.override(
                            fontFamily: 'Lexend',
                            color: FlutterFlowTheme.of(context).grayLight,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 24, 16, 40),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FlutterFlowDropDown(
                    options: [
                      FFLocalizations.of(context).getText(
                        'xagj3cdn' /* BLACK */,
                      ),
                      FFLocalizations.of(context).getText(
                        'rpxtbyd6' /* GOLD */,
                      ),
                      FFLocalizations.of(context).getText(
                        'vamt0j09' /* SILVER */,
                      )
                    ],
                    onChanged: (val) => setState(() => dropDownValue = val),
                    width: 120,
                    height: 50,
                    textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lexend',
                          color: FlutterFlowTheme.of(context).black600,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                    hintText: FFLocalizations.of(context).getText(
                      'qds7zkb8' /* Color */,
                    ),
                    icon: Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: FlutterFlowTheme.of(context).black600,
                      size: 15,
                    ),
                    fillColor: FlutterFlowTheme.of(context).tertiary400,
                    elevation: 3,
                    borderColor: FlutterFlowTheme.of(context).primaryBackground,
                    borderWidth: 0,
                    borderRadius: 8,
                    margin: EdgeInsetsDirectional.fromSTEB(20, 4, 8, 4),
                    hidesUnderline: true,
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyCartWidget(),
                        ),
                      );
                    },
                    text: FFLocalizations.of(context).getText(
                      '6p687ze5' /* Buy Now */,
                    ),
                    icon: Icon(
                      Icons.add_shopping_cart,
                      size: 15,
                    ),
                    options: FFButtonOptions(
                      width: 170,
                      height: 50,
                      color: FlutterFlowTheme.of(context).tertiary400,
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Lexend Deca',
                                color: FlutterFlowTheme.of(context).black600,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                      elevation: 3,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
