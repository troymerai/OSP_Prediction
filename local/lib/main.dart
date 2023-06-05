import 'package:flutter/material.dart';
import 'package:local/start_select.dart';

void main() {
  runApp(const MyApp());  //앱 시작해주세요!, MyApp(메인페이지 주소)
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'main',
      home: Scaffold(
        backgroundColor: const Color(0xff6744F2),
        body: HomeApp(),
      ),
    );
  }
}

class HomeApp extends StatelessWidget{
  const HomeApp({super.key});

  @override
  Widget build(BuildContext context){
    var m = MediaQuery.of(context);
    print("넓이 : ${m.size.width}");
    print("높이 : ${m.size.height}");
    return Stack(
      children: <Widget>[
        Flexible(
          fit: FlexFit.loose,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset('assets/door.png',width: MediaQuery.of(context).size.width),
          ),
        ),
        Flexible(
          fit: FlexFit.loose,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
                child: IconButton(
                  iconSize: MediaQuery.of(context).size.height*0.08,
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=>StartSelect()));
                  },
                  icon: Image.asset(
                      'assets/start.png'
                  ),
                )
            ),
          ),
        )
      ],
    );
  }
}