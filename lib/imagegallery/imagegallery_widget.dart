import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'imagegallery_model.dart';
export 'imagegallery_model.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ImagegalleryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 360,
      child: ListView(children: [
        CarouselSlider(
          items: [
            Container(
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  image: NetworkImage(
                      "https://bnet-onlineshop.obs.otc.t-systems.com/wp-content/uploads/2021/07/OSH_VDF-377x340-Juli-S21.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  image: NetworkImage(
                      "https://bnet-onlineshop.obs.otc.t-systems.com/wp-content/uploads/2023/09/Telekom/congstar-FH-A34.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  image: NetworkImage(
                      "https://bnet-onlineshop.obs.otc.t-systems.com/wp-content/uploads/2023/09/Vodafone/iPhone14_VF_September.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  image: NetworkImage(
                      "https://bnet-onlineshop.obs.otc.t-systems.com/wp-content/uploads/2023/09/Vodafone/Galaxy_A04s_Panzerglass.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
          options: CarouselOptions(
            height: 380.0,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            viewportFraction: 0.8,
          ),
        ),
      ]),
    );
  }
}
