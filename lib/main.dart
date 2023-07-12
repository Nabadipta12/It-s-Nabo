import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_flutter/icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main(){
  runApp(const portfolio_App());
}

// ignore: camel_case_types
class portfolio_App extends StatelessWidget {
  const portfolio_App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Main_screen(),
    );
  }
}
// ignore: camel_case_types
class Main_screen extends StatelessWidget {
  const Main_screen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: double.infinity,
            ),

            const CircleAvatar(
              backgroundImage: AssetImage("image/dp.jpeg"),
              radius: 90,
            ),
            const SizedBox(height: 8,),
            Text("NABADIPTA ROY",
              style: GoogleFonts.abrilFatface(
                  fontSize: 30
              ),
            ),
            const SizedBox(height: 5,),
            Text("FLUTTER DEVELOPER | UI/UX DESIGNER", style: GoogleFonts.exo(
                fontSize: 20
            ),
            ),
            const SizedBox(height: 20,),
            Container(
              height: 1,
              width: 250,
              color: Colors.black,
            ),
            const SizedBox(
              height: 25,
            ),
            ElevatedButton(
              onPressed: () async{
                Uri phoneno = Uri.parse('tel:+91 9832101572');
                if (await launchUrl(phoneno)) {
                  //dialer opened
                }else{
                  //dailer is not opened
                }
              },

              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: const BorderSide(
                    color: Colors.black45,
                    width: 1/2,
                  ),
                ),
                fixedSize: const Size(350, 55),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(FlutterIcons.call_mdi),
                  const SizedBox(
                    width: 2,
                  ),
                  Text(
                    "+91 9832101572",
                    style: GoogleFonts.almarai(color:Colors.black ,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),



            const SizedBox(
              height: 20,
            ),


            const SizedBox(
              height: 8,
            ),
            ElevatedButton(
              onPressed: () async{
                String email = Uri.encodeComponent("nabadiptaroy@gmail.com");
                String subject = Uri.encodeComponent("Hello Flutter");
                String body = Uri.encodeComponent("Hello, <type your name> this side");
                Uri mail = Uri.parse("mailto:$email?subject=$subject&body=$body");
                if (await launchUrl(mail)) {
                  //email app opened
                }else{
                  //email app is not opened
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: const BorderSide(
                    color: Colors.black54,
                    width: 1/2,
                  ),
                ),
                fixedSize: const Size(350, 55),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(FlutterIcons.mail_mdi),
                  const SizedBox(
                    width: 2,
                  ),
                  Text(
                    "nabadiptaroy@gmail.com",
                    style: GoogleFonts.vollkorn(color:Colors.black ,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),


          ],
        ),
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: Text("My Portfolio",
            style: GoogleFonts.russoOne(
                fontSize: 25, color: Colors.white
            ),
            // style: TextStyle(fontFamily: GoogleFonts.lobster()),),
            // backgroundColor: Color(0xFF25D266),

          ),
        ));
  }
}