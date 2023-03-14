import 'package:flutter/material.dart';
import 'package:flutter_application_7/pagetwo.dart';

class Home extends StatefulWidget {
  static const routeName = '/';

  const Home({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          //Container สำหรับ เก็บข้อความ 'Car rent hub', 'Select car' และปุ่มค้นหา
          child: Container(
            //margin ขนาด 35 สำหรับเว้นขอบจากขอบของอุปกรณ์มาถึงข้อความ
            margin: EdgeInsets.only(top: 35),
            //padding ซ้าย 20 ขวา 20 สำหรับเว้นขอบจากขอบของ Container มาถึงข้อความ
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              //แบ่งพื้นที่การจัดวางวัตถุใน Row ให้เท่าๆ กัน
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    //แสดงข้อความ 'Car rent hub'
                    Text(
                      'Nekopost',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(170, 86, 86, 1)),
                    ),
                    Row(
                      children: [
                        //แสดงข้อความ 'Select car' และไอคอน
                        Text(
                          'Manga Online',
                        ),
                        Icon(
                          Icons.book_online,
                        ),
                      ],
                    ),
                  ],
                ),
                FloatingActionButton(
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return MyApptwo();
                      },
                    ));
                  },
                ),
                //Container ปุ่มค้นหาขนาด 45x45
              ],
            ),
          ),
        ),
        Container(
            color: Colors.brown,
            width: double.infinity,
            //height: 200,
            //padding: EdgeInsets.only(top: 30,left: 15,bottom: 15,right: 20),
            padding: EdgeInsets.symmetric(horizontal: 15),
            margin: EdgeInsets.all(50),
            child: Center(
              child: Text('Welcome!!',
                  style: TextStyle(fontSize: 50, color: Colors.white)),
            )),
        Container(
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/honkai-star-rail.jpg')),
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.amber,
                  blurRadius: 7,
                  spreadRadius: 10,
                  offset: Offset(4, 4),
                ),
              ]),
        ),
      ]),
    );
  }
}
