import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Home_page extends StatelessWidget {
  Home_page({super.key});
  Uri _url = Uri.parse('http://in.youtube.com/');
 Future <void> _lauchurl() async {
     await launchUrl(_url) ;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          width: 200.w,
          height: 500.h,
          // color: Colors.green,
          child: Column(
            children: [
              Icon(FontAwesomeIcons.accusoft),
              Text(
                'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups',
                style: GoogleFonts.aguafinaScript(
                  fontSize: 25,
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    _lauchurl();
                  },
                  child: Text('Click'))
            ],
          ),
        ),
      ),
    );
  }
}
