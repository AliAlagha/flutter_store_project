import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterstoreproject/screens/products_page.dart';

class ClientHomePage extends StatelessWidget {
  ClientHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          // Adobe XD layer: 'Bars/Status Bar/Lig…' (component)
          Container(),
          // Adobe XD layer: 'Menu' (group)
          Stack(
            children: <Widget>[
              Transform.translate(
                offset: Offset(331.5, 61.0),
                child:
                    // Adobe XD layer: 'filter' (shape)
                    Container(
                  width: 20.0,
                  height: 20.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: const AssetImage(''),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(24.5, 62.0),
                child:
                    // Adobe XD layer: 'Menu Bar' (group)
                    Stack(
                  children: <Widget>[
                    Transform.translate(
                      offset: Offset(0.5, 1.5),
                      child:
                          // Adobe XD layer: 'Line' (shape)
                          SvgPicture.string(
                        _svg_gs5yoi,
                        allowDrawingOutsideViewBox: true,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          // Adobe XD layer: 'Search bar' (group)
          Stack(
            children: <Widget>[
              Transform.translate(
                offset: Offset(16.5, 107.0),
                child:
                    // Adobe XD layer: 'Rectangle 2' (shape)
                    Container(
                  width: 343.0,
                  height: 52.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: const Color(0xffffffff),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x16000000),
                        offset: Offset(0, 13),
                        blurRadius: 31,
                      ),
                    ],
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(74.5, 121.0),
                child:
                    // Adobe XD layer: 'Divider' (shape)
                    Container(
                  width: 1.0,
                  height: 24.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: const AssetImage(''),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(36.5, 124.0),
                child:
                    // Adobe XD layer: 'Group 9' (group)
                    Stack(
                  children: <Widget>[
                    Transform.translate(
                      offset: Offset(0.0, 0.78),
                      child:
                          // Adobe XD layer: 'Oval' (shape)
                          Container(
                        width: 15.0,
                        height: 14.2,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(7.5, 7.11)),
                          border: Border.all(
                              width: 2.0, color: const Color(0xff818181)),
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(12.8, 12.91),
                      child:
                          // Adobe XD layer: 'Shape' (shape)
                          SvgPicture.string(
                        _svg_23jnlr,
                        allowDrawingOutsideViewBox: true,
                      ),
                    ),
                  ],
                ),
              ),
              Transform.translate(
                offset: Offset(69.0, 121.0),
                child:
                    // Adobe XD layer: 'Search somthing' (text)
                    SizedBox(
                  width: 182.0,
                  child: Text(
                    'Search Your Product',
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 18,
                      color: const Color(0xff818181),
                      letterSpacing: -0.4341176147460938,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
          // Adobe XD layer: 'Categories' (group)
          Stack(
            children: <Widget>[
              Transform.translate(
                offset: Offset(17.0, 196.0),
                child:
                    // Adobe XD layer: 'Categories' (text)
                    SizedBox(
                  width: 124.0,
                  child: Text(
                    'Categories',
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 22,
                      color: const Color(0xff434343),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductsPage(category: 'man',),
                      ));

                },
                child: Stack(
                  children: <Widget>[
                    Transform.translate(
                      offset: Offset(27.0, 246.0),
                      child: Container(
                        width: 324.0,
                        height: 128.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          gradient: LinearGradient(
                            begin: Alignment(0.0, -1.0),
                            end: Alignment(0.0, 1.0),
                            colors: [
                              const Color(0xff667eea),
                              const Color(0xff64b6ff)
                            ],
                            stops: [0.0, 1.0],
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0x29000000),
                              offset: Offset(0, 15),
                              blurRadius: 31,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(27.0, 246.0),
                      child: Stack(
                        children: <Widget>[
                          Transform.translate(
                            offset: Offset(0.0, -131.51),
                            child: Container(
                              width: 324.0,
                              height: 419.4,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: const AssetImage(''),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 324.0,
                            height: 128.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              gradient: LinearGradient(
                                begin: Alignment(0.0, -1.0),
                                end: Alignment(0.0, 1.0),
                                colors: [
                                  const Color(0xff667eea),
                                  const Color(0xff64b6ff)
                                ],
                                stops: [0.0, 1.0],
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x29000000),
                                  offset: Offset(0, 15),
                                  blurRadius: 31,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(27.0, 246.0),
                      child: Container(
                        width: 324.0,
                        height: 128.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          gradient: LinearGradient(
                            begin: Alignment(-1.0, 0.06),
                            end: Alignment(1.0, 0.12),
                            colors: [
                              const Color(0xbf667eea),
                              const Color(0xbf64b6ff)
                            ],
                            stops: [0.0, 1.0],
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0x1f000000),
                              offset: Offset(0, 15),
                              blurRadius: 31,
                            ),
                          ],
                        ),
                      ),
                    ),
                    new Transform.translate(
                      offset: Offset(159.0, 301.07),
                      child: SizedBox(
                        width: 60.0,
                        child: Text(
                          'Man',
                          style: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontSize: 14,
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}

const String _svg_gs5yoi =
    '<svg viewBox="0.5 1.5 20.0 16.0" ><path transform="translate(0.5, 0.5)" d="M 0 1 L 20 1" fill="none" stroke="#404040" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /><path transform="translate(0.5, 8.5)" d="M 0 1 L 15 1" fill="none" stroke="#404040" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /><path transform="translate(0.5, 16.5)" d="M 0 1 L 18 1" fill="none" stroke="#404040" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_23jnlr =
    '<svg viewBox="12.8 12.9 5.2 4.9" ><path transform="translate(12.8, 12.91)" d="M 5.199999809265137 4.926315784454346 L 0 0" fill="none" stroke="#818181" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /></svg>';
