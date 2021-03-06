import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String situation = "๐";
  List<String> emojis = [
    '๐',
    '๐',
    '๐',
    '๐',
    '๐',
    '๐',
    '๐คฃ',
    '๐ฅฒ',
    'โบ',
    '๐',
    '๐',
    '๐',
    '๐',
    '๐',
    '๐',
    '๐',
    '๐ฅฐ',
    '๐',
    '๐',
    '๐',
    '๐',
    '๐',
    '๐',
    '๐',
    '๐',
    '๐คช',
    '๐คจ',
    '๐ง',
    '๐ค',
    '๐',
    '๐ฅธ',
    '๐คฉ',
    '๐ฅณ',
    '๐',
    '๐',
    '๐',
    '๐',
    '๐',
    '๐',
    '๐',
    'โน',
    '๐ฃ',
    '๐',
    '๐ซ',
    '๐ฉ',
    '๐ฅบ',
    '๐ข',
    '๐ญ',
    '๐ค',
    '๐ ',
    '๐ก',
    '๐คฌ',
    '๐คฏ',
    '๐ณ',
    '๐ฅต',
    '๐ฅถ',
    '๐ถโ๐ซ',
    '๐ฑ',
    '๐จ',
    '๐ฐ',
    '๐ฅ',
    '๐',
    '๐ค',
    '๐',
    '๐คญ',
    '๐คซ',
    '๐คฅ',
    '๐ถ',
    '๐',
    '๐',
    '๐ฌ',
    '๐',
    '๐ฏ',
    '๐ฆ',
    '๐ง',
    '๐ฎ',
    '๐ฒ',
    '๐ฅฑ',
    '๐ด',
    '๐คค',
    '๐ช',
    '๐ฎโ๐จ',
    '๐ต',
    '๐ตโ๐ซ',
    '๐ค',
    '๐ฅด',
    '๐คข',
    '๐คฎ',
    '๐คง',
    '๐ท',
    '๐ค',
    '๐ค',
    '๐ค',
    '๐ค ',
    '๐',
    '๐ฟ',
    '๐น',
    '๐บ',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.tealAccent,
        appBar: AppBar(
          title: Text(
            'GridView.Builder',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Icon(
                Icons.sports_esports_outlined,
                size: 40.0,
              ),
            ),
          ],
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              Text('Pressed : $situation',style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.w600,
              ),),
              Expanded(child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5,
                    mainAxisSpacing: 3,
                    crossAxisSpacing: 3,
                  ),
                  itemCount: emojis.length,
                  itemBuilder: (BuildContext context, int i) {
                    return buildEmojis(emojis[i]);
                  }
              ),)
            ],
          ),
        ),
      ),
    );
  }


  Widget buildEmojis(String Emo) => InkWell(
    onTap: (){
      setState(() {
        situation = Emo;
      });

    },
    child: Padding(
      padding: const EdgeInsets.all(7.0),
      child: Container(
       decoration: BoxDecoration(
         color: Colors.black87,
         shape: BoxShape.rectangle,
         borderRadius: BorderRadius.all(Radius.circular(16.0),),
       ),
       child: GridTile(
         child: Center(child: Text('$Emo',textAlign: TextAlign.center,style: TextStyle(
           fontSize: 70.0,
         ),
         ),
         ),
       ),
      ),
    ),
  );
}
