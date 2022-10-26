import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';
import 'package:url_launcher/url_launcher.dart';
class Main_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff0077b6),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('Images/1627307275345.jpg'),
                  radius: 60,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Utkarsh  Raman",
                style: TextStyle(
                    fontFamily: 'PatrickHand',
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              SizedBox(
                width: 200,
                child: Divider(
                  height: 5,
                  thickness: 2,
                  color: Colors.white,
                ),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightBlueAccent),
              ),
              SizedBox(
                height: 70,
              ),
              mediatile(
                url: "tel:+917765837336",
                title: "Call",
                mediaicon: UniconsLine.phone,
                colourdata: Color(0xff1A73E8),
              ),
              mediatile(
                  url: 'mailto:<conectutk222@gmail.com>',
                  title: 'Email',
                  mediaicon: Icons.email_outlined,
                  colourdata: Color(0xffD55448)),
              mediatile(
                  url: 'https://www.linkedin.com/in/utkarsh-raman-7772a8218/',
                  title: 'Linkedin',
                  mediaicon: UniconsLine.linkedin,
                  colourdata: Color(0xff3A569A)),
              mediatile(
                  url: 'https://www.instagram.com/utkarsh__r/',
                  title: 'Instagram',
                  mediaicon: UniconsLine.instagram,
                  colourdata: Color(0xffD002DC)),
              mediatile(
                  url: 'https://github.com/conectutk222',
                  title: 'Github',
                  mediaicon: UniconsLine.github,
                  colourdata: Color(0xff000000)),
            ]),
      ),
    );
  }
}

class mediatile extends StatelessWidget {
  final String url;
  final String title;
  final IconData mediaicon;
  final Color colourdata;
  mediatile(
      {required this.title,
      required this.mediaicon,
      required this.colourdata,
      required this.url});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10, left: 5, right: 5),
      child: Material(
        color: colourdata,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(15),
            topLeft: Radius.circular(15),
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15)),
        elevation: 5,
        child: TextButton(
          onPressed: () async {
            final temp = Uri.parse(url);
            if (await launchUrl(temp)) {
            }else{
              throw 'load error';
            }
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Icon(
                mediaicon,
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}