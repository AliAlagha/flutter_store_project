import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OrderDetailsPage extends StatelessWidget {
  OrderDetailsPage({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: new AppBar(
        backgroundColor: Colors.blue,
        title: new Text(
          "Order Details",
          style: new TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
      ),
      body: Stack(
        children: <Widget>[
          // Adobe XD layer: 'Bars/Status Bar/Lig…' (component)
          Container(),
          Transform.translate(
            offset: Offset(24.0, 98.0),
            child:
                // Adobe XD layer: 'Profile' (text)
                Text(
              'Order Details',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 30,
                color: const Color(0xff434343),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          // Adobe XD layer: 'Number' (group)
          Stack(
            children: <Widget>[

              Transform.translate(
                offset: Offset(25.0, 690.5),
                child:
                    // Adobe XD layer: 'Line 4' (shape)
                    SvgPicture.string(
                  _svg_52wyv3,
                  allowDrawingOutsideViewBox: true,
                ),
              ),
            ],
          ),
          // Adobe XD layer: 'mail' (group)
          Stack(
            children: <Widget>[
              Transform.translate(
                offset: Offset(25.0, 600.5),
                child:
                    // Adobe XD layer: 'Line 4' (shape)
                    SvgPicture.string(
                  _svg_wxkaj0,
                  allowDrawingOutsideViewBox: true,
                ),
              ),
              Transform.translate(
                offset: Offset(24.5, 532.0),
                child:
                    // Adobe XD layer: 'Email' (text)
                    Text(
                  'Price',
                  style: TextStyle(
                    fontFamily: 'Segoe UI',
                    fontSize: 16,
                    color: const Color(0xff919191),
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Transform.translate(
                offset: Offset(24.5, 561.5),
                child:
                    // Adobe XD layer: 'Helloistiak@gmail.c…' (text)
                    Text(
                  '65 Dollar',
                  style: TextStyle(
                    fontFamily: 'Segoe UI',
                    fontSize: 16,
                    color: const Color(0xff434343),
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
          // Adobe XD layer: 'Gender' (group)
          Stack(
            children: <Widget>[
              Transform.translate(
                offset: Offset(25.0, 510.5),
                child:
                    // Adobe XD layer: 'Line 4' (shape)
                    SvgPicture.string(
                  _svg_qk3875,
                  allowDrawingOutsideViewBox: true,
                ),
              ),
              Transform.translate(
                offset: Offset(24.5, 442.0),
                child:
                    // Adobe XD layer: 'Gender' (text)
                    Text(
                  'Product',
                  style: TextStyle(
                    fontFamily: 'Segoe UI',
                    fontSize: 16,
                    color: const Color(0xff919191),
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Transform.translate(
                offset: Offset(24.5, 471.5),
                child:
                    // Adobe XD layer: 'Male' (text)
                    Text(
                  'Blue T-shirt',
                  style: TextStyle(
                    fontFamily: 'Segoe UI',
                    fontSize: 16,
                    color: const Color(0xff434343),
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
          // Adobe XD layer: 'city' (group)
          Stack(
            children: <Widget>[
              Transform.translate(
                offset: Offset(25.0, 420.5),
                child:
                    // Adobe XD layer: 'Line 4' (shape)
                    SvgPicture.string(
                  _svg_iq0se9,
                  allowDrawingOutsideViewBox: true,
                ),
              ),
              Transform.translate(
                offset: Offset(24.5, 352.0),
                child:
                    // Adobe XD layer: 'City' (text)
                    Text(
                  'City',
                  style: TextStyle(
                    fontFamily: 'Segoe UI',
                    fontSize: 16,
                    color: const Color(0xff919191),
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Transform.translate(
                offset: Offset(24.5, 381.5),
                child:
                    // Adobe XD layer: 'dhaka' (text)
                    Text(
                  'Gaza , Khanyounis',
                  style: TextStyle(
                    fontFamily: 'Segoe UI',
                    fontSize: 16,
                    color: const Color(0xff434343),
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
          // Adobe XD layer: 'Address lane' (group)
          Stack(
            children: <Widget>[
              Transform.translate(
                offset: Offset(25.0, 330.5),
                child:
                    // Adobe XD layer: 'Line 4' (shape)
                    SvgPicture.string(
                  _svg_avycld,
                  allowDrawingOutsideViewBox: true,
                ),
              ),
              Transform.translate(
                offset: Offset(24.5, 262.0),
                child:
                    // Adobe XD layer: 'Address lane' (text)
                    Text(
                  'Address lane',
                  style: TextStyle(
                    fontFamily: 'Segoe UI',
                    fontSize: 16,
                    color: const Color(0xff919191),
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Transform.translate(
                offset: Offset(24.5, 291.5),
                child:
                    // Adobe XD layer: 'Shewrapara' (text)
                    Text(
                  'Alagha Street 985',
                  style: TextStyle(
                    fontFamily: 'Segoe UI',
                    fontSize: 16,
                    color: const Color(0xff434343),
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
          // Adobe XD layer: 'Name' (group)
          Stack(
            children: <Widget>[
              Transform.translate(
                offset: Offset(25.0, 240.5),
                child:
                    // Adobe XD layer: 'Line 4' (shape)
                    SvgPicture.string(
                  _svg_31vwsh,
                  allowDrawingOutsideViewBox: true,
                ),
              ),
              Transform.translate(
                offset: Offset(24.5, 172.0),
                child:
                    // Adobe XD layer: 'Name' (text)
                    Text(
                  'Name',
                  style: TextStyle(
                    fontFamily: 'Segoe UI',
                    fontSize: 16,
                    color: const Color(0xff919191),
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Transform.translate(
                offset: Offset(24.5, 201.5),
                child:
                    // Adobe XD layer: 'Istiak' (text)
                    Text(
                  'Ali Mohammed Alagha',
                  style: TextStyle(
                    fontFamily: 'Segoe UI',
                    fontSize: 16,
                    color: const Color(0xff434343),
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

const String _svg_g96csy =
    '<svg viewBox="24.0 66.0 22.0 9.9" ><path transform="translate(-2794.0, 0.0)" d="M 2839.4365234375 71.53720092773438 C 2839.4365234375 71.53720092773438 2819.949462890625 71.53720092773438 2819.949462890625 71.53720092773438 C 2819.949462890625 71.53720092773438 2823.3740234375 74.96189880371094 2823.3740234375 74.96189880371094 C 2823.597412109375 75.18520355224609 2823.597412109375 75.54350280761719 2823.3740234375 75.76679992675781 C 2823.26220703125 75.87850189208984 2823.1181640625 75.93430328369141 2822.96923828125 75.93430328369141 C 2822.8203125 75.93430328369141 2822.676025390625 75.87850189208984 2822.564208984375 75.76679992675781 C 2822.564208984375 75.76679992675781 2818.167236328125 71.36959838867188 2818.167236328125 71.36959838867188 C 2817.94384765625 71.14640045166016 2817.94384765625 70.78800201416016 2818.167236328125 70.56459808349609 C 2818.167236328125 70.56459808349609 2822.564208984375 66.16750335693359 2822.564208984375 66.16750335693359 C 2822.78759765625 65.94409942626953 2823.146240234375 65.94409942626953 2823.369384765625 66.16750335693359 C 2823.5927734375 66.39089965820313 2823.5927734375 66.74909973144531 2823.369384765625 66.97239685058594 C 2823.369384765625 66.97239685058594 2819.944580078125 70.39720153808594 2819.944580078125 70.39720153808594 C 2819.944580078125 70.39720153808594 2839.42724609375 70.39720153808594 2839.42724609375 70.39720153808594 C 2839.743896484375 70.39720153808594 2839.999755859375 70.65299987792969 2839.999755859375 70.96939849853516 C 2839.999755859375 71.28589630126953 2839.743896484375 71.53720092773438 2839.4365234375 71.53720092773438 Z" fill="#404040" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_52wyv3 =
    '<svg viewBox="25.0 690.5 326.0 1.0" ><path transform="translate(25.0, 689.5)" d="M 0 1 L 326 1" fill="none" fill-opacity="0.13" stroke="#979797" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="square" /></svg>';
const String _svg_wxkaj0 =
    '<svg viewBox="25.0 600.5 326.0 1.0" ><path transform="translate(25.0, 599.5)" d="M 0 1 L 326 1" fill="none" fill-opacity="0.13" stroke="#979797" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="square" /></svg>';
const String _svg_qk3875 =
    '<svg viewBox="25.0 510.5 326.0 1.0" ><path transform="translate(25.0, 509.5)" d="M 0 1 L 326 1" fill="none" fill-opacity="0.13" stroke="#979797" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="square" /></svg>';
const String _svg_iq0se9 =
    '<svg viewBox="25.0 420.5 326.0 1.0" ><path transform="translate(25.0, 419.5)" d="M 0 1 L 326 1" fill="none" fill-opacity="0.13" stroke="#979797" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="square" /></svg>';
const String _svg_avycld =
    '<svg viewBox="25.0 330.5 326.0 1.0" ><path transform="translate(25.0, 329.5)" d="M 0 1 L 326 1" fill="none" fill-opacity="0.13" stroke="#979797" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="square" /></svg>';
const String _svg_31vwsh =
    '<svg viewBox="25.0 240.5 326.0 1.0" ><path transform="translate(25.0, 239.5)" d="M 0 1 L 326 1" fill="none" fill-opacity="0.13" stroke="#979797" stroke-width="1" stroke-opacity="0.13" stroke-miterlimit="10" stroke-linecap="square" /></svg>';
