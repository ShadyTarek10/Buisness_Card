
import 'package:flutter/material.dart';

class BizCardApp extends StatelessWidget {
  const BizCardApp({Key? key}) : super(key: key);
  Container _getAvatar(){
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
        border: Border.all(color: Colors.redAccent,width: 1.2 ),
        image: DecorationImage(image: NetworkImage("https://img.freepik.com/free-photo/fashion-boy-with-yellow-jacket-blue-pants_71767-96.jpg?w=740&t=st=1697567511~exp=1697568111~hmac=f1a280ef300c75e4d63864039fdb5dcddcfa1927fa8038a5a066eee6d21c2ec6"),fit: BoxFit.cover)
      ),
    );
  }
  Container _getCard(){

    return  Container(
      width: 400,
      height: 400,
      margin: EdgeInsets.all(50.0),
      decoration: BoxDecoration(
          gradient:  LinearGradient(colors: [
                      Colors.deepPurpleAccent.shade700,
                      Colors.pinkAccent.shade400,
                      Colors.blueAccent,
                    ]),
        borderRadius: BorderRadius.circular(14.5)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            margin: const EdgeInsets.symmetric(
              vertical: 8.0,
              horizontal: 10.0,
            ),
            child: ListTile(
              leading: const Icon(
                Icons.account_circle,
                color: Colors.pink,
              ),
              title: Text(
                'Shady Mohamed',
                style: TextStyle(
                  color: Colors.black,

                  fontSize: 20.0,
                ),
              ),
            ),
          ),
          // Text("Shady Mohamed",style: TextStyle(fontSize: 20.9,fontWeight: FontWeight.w500,
          // color: Colors.white,fontFamily: 'Source Sans Pro' )),
          Card(
            margin: const EdgeInsets.symmetric(
              vertical: 8.0,
              horizontal: 10.0,
            ),
            child: ListTile(
              leading: const Icon(
                Icons.work,
                color: Colors.pink,
              ),
              title: Text(
                'Flutter Developer',
                style: TextStyle(
                  color: Colors.black,

                  fontSize: 20.0,
                ),
              ),
            ),
          ),
          // Text("Software Engineer") ,
          Card(
            margin: const EdgeInsets.symmetric(
              vertical: 8.0,
              horizontal: 10.0,
            ),
            child: ListTile(
              leading: const Icon(
                Icons.phone,
                color: Colors.pink,
              ),
              title: Text(
                '+201012345687',
                style: TextStyle(
                  color: Colors.black,

                  fontSize: 20.0,
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.symmetric(
              vertical: 8.0,
              horizontal: 10.0,
            ),
            child: ListTile(
              leading: const Icon(
                Icons.account_circle,
                color: Colors.pink,
              ),
              title: Text(
                'FlutterDev@gmail.com',
                style: TextStyle(
                  color: Colors.black,

                  fontSize: 20.0,
                ),
              ),
            ),
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Icon(Icons.person_outlined),
          //     Text("T: +201068251522"),
          //
          //
          //   ],
          // )
        ],
      ),
    );

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BizCard"),
        backgroundColor: Colors.purpleAccent,
        centerTitle: true,

      ),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            _getCard(),
            _getAvatar()
          ],
        ),
      )
    );
  }
}
