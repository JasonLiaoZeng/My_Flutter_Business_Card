import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[800],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage(
                    'https://media.licdn.com/dms/image/D5603AQEoNVJIfVbz8w/profile-displayphoto-shrink_800_800/0/1685768286827?e=1691020800&v=beta&t=Q6LSPOpBZVXU1O_DODPUSDIGzNwwnaie1tTQ-GklWPg'),
              ),
              Text(
                'Jason Liao-Zeng',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              // Text(
              //   '俊智',
              //   style: TextStyle(
              //     fontFamily: 'ZhiMangXing',
              //     fontSize: 30,
              //     fontWeight: FontWeight.bold,
              //     color: Colors.white,
              //   ),
              // ),
              Text(
                'SOFTWARE DEVELOPER',
                style: TextStyle(
                  fontFamily: 'SSP',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  color: Colors.blueGrey[300],
                ),
              ),
              SizedBox(
                height: 20,
                width: 150,
                child: Divider(
                  color: Colors.blueGrey[300],
                  thickness: 1,
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 25,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.phone,
                        color: Colors.blueGrey,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '+1 626-988-7598',
                        style: TextStyle(
                          fontFamily: 'SSP',
                          color: Colors.blueGrey,
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 25,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.email,
                        color: Colors.blueGrey,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'jlzucbeecs@gmail.com',
                        style: TextStyle(
                          fontFamily: 'SSP',
                          color: Colors.blueGrey,
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                child: Text(
                  'Linkedin',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 18,
                    decoration: TextDecoration.underline,
                  ),
                ),
                onTap: () async {
                  final url = Uri.parse(
                      'https://www.linkedin.com/in/jason-liao-zeng-06928421a/'); // Replace with your website URL
                  if (await canLaunchUrl(url)) {
                    await launchUrl(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
              ),
              SizedBox(
                height: 5,
              ),
              InkWell(
                child: Text(
                  'Github',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 18,
                    decoration: TextDecoration.underline,
                  ),
                ),
                onTap: () async {
                  final url = Uri.parse(
                      'https://github.com/JasonLiaoZeng?tab=repositories'); // Replace with your website URL
                  if (await canLaunchUrl(url)) {
                    await launchUrl(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
