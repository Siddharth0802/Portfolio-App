import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'HomePage'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Color(0xFF47B5FF ),
        title: Text("Portfolio",
            style: GoogleFonts.ubuntu()
        ),
        centerTitle: true,
      ),

      drawer: Drawer(
        backgroundColor: Color(0xFF2192FF),

        child: ListView(
          children:[

            Container(
              color: Color(0xFF2192FF),
              height: 50,
              child:Center(child:Text('Welcome',style:GoogleFonts.ubuntu(fontSize: 25,color: Colors.white),),),
            ),


            Container(
              color: Color(0xFFABD9FF),
              height: 726,
              child: Column(
                children: <Widget>[
                  TextButton(
                      onPressed:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return const MyHomePage(title: 'About');
                        }));
                      },
                      child:Text('About',
                          style:GoogleFonts.fuzzyBubbles(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black))
                  ),

                  Divider(thickness: 3),

                  TextButton(
                      onPressed:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return const EduPage(title: 'About');
                        }));
                      },
                      child:Text('Education',
                          style:GoogleFonts.fuzzyBubbles(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black))
                  ),

                  Divider(thickness: 3),

                  TextButton(
                      onPressed:(){
                        Navigator.push(context,MaterialPageRoute(builder: (context){
                          return const SkillsPage(title: 'Skills');
                        }));
                      },
                      child:Text('Skills',
                          style:GoogleFonts.fuzzyBubbles(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black))
                  ),

                  Divider(thickness: 3),





                ],
              ),
            ),
          ],
        ),
      ),


      body:ListView(
        children:[ Column(
          children: [

            Container(
              height: 315,
              color: Colors.transparent,
              child: Stack(
                children: <Widget>[
                  Container(
                    child: Image.asset('assets/cover.jpg',),
                  ),
                  Container(
                    child: Positioned(
                        top: 170,
                        left: 130,
                        child: CircleAvatar(radius: 67,backgroundColor: Colors.white,
                            child: CircleAvatar(radius:65,backgroundImage: AssetImage('assets/img.jpg'),))),
                  ),

                ],
              ),
            ),
            Text('Siddharth Singh',
              style: GoogleFonts.ubuntu(fontSize: 22,fontWeight: FontWeight.bold),
            ),
            Container(
              height: 180,width: 350,
              alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
              // color: Color(0xFF7978FF),
              margin: EdgeInsets.fromLTRB(50, 40, 50, 0),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Color(0xFF47B5FF),),
              child: Text('Hello Everone!! This is Siddharth Singh, born in Gorakhpur brought up in Prayagraj where I completed my 10+2 from Maharshi Patanjali Vidya Mandir and now a  2\'nd Year Engineering Student in Computer Science & Information Tecnology at Ajay Kumar Garg Engineering College. ',
                style: GoogleFonts.aBeeZee(fontSize: 18),),
            ),
            Container(
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.fromLTRB(50, 30, 0, 0),
              child: Text('Reach Me at ', style: GoogleFonts.teko(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            Divider(thickness: 4,indent: 40,endIndent: 220,color: Colors.blue[700],),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
                  child: Icon(Icons.whatsapp,color: Colors.green,size: 35,),
                ),
                Container(child: Text('   9918600115',style:GoogleFonts.ubuntu(fontSize: 15,fontWeight: FontWeight.bold) ,),)
              ],
            ),
            Row(children: [
              Container(
                margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
                child: Icon(Icons.mail,size: 35,),
              ),
              Container(child: Text('  siddharthsingh0802@gmail.com',style:GoogleFonts.ubuntu(fontSize: 15,fontWeight: FontWeight.bold),),)
            ],),
          ], //Stack
        ),
      ]),


      backgroundColor: Color(0xFFA6DCEF),

    );
  }
}


////ABOUT PAGE/////

class EduPage extends StatelessWidget{
  const EduPage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext content){
    return Scaffold(
      appBar: AppBar(title: Text('Education',style: GoogleFonts.merriweather()),
          backgroundColor: Color(0xFF47B5FF),
          centerTitle: true),

      body: ListView(
        children:[ Column(
          children: [

            // Divider(thickness: 4,indent: 40,endIndent: 40,color: Colors.blue[700],),

            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                    width: 60,
                    height: 60,
                    child: Image(image: AssetImage('assets/clogo.png'),)),

                Text('AJAY Kumar Grag Engineering College',
                  style: GoogleFonts.ubuntu(fontSize: 18,fontWeight:FontWeight.bold),)
              ],),

            Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(10, 2, 0, 0),
                  height: 140,
                  width: 240,
                  decoration: BoxDecoration(
                    image: DecorationImage(image:AssetImage('assets/College.jpg'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(15),

                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(120, 10, 0, 0),
                  padding: EdgeInsets.fromLTRB(8, 2, 5, 5),
                  height: 150,
                  width: 260,

                  child: Center(
                    child: Text('I have been studying in Ajay Kumar Garg Engineering College since 2021 and I have joined this college in Computer Science and Information Technology Department and now I am in 2nd Year with 7.15 SGPA in 1st Year SGPA.After 1 Years studying in this college I would say that this college provides alot of opportunities for personal and technical development apart from studies'
                      ,style: GoogleFonts.ubuntu(),),
                  ),
                  decoration: BoxDecoration(color: Colors.blueAccent,borderRadius: BorderRadius.circular(15),

                  ),
                ),
              ],
            ),

            Divider(thickness: 4,indent: 40,endIndent: 40,color: Colors.blue[700],),

            Row(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    color: Colors.transparent,
                    margin: EdgeInsets.fromLTRB(18, 0, 0, 0),
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                    height: 70,width: 70,
                    child: Image.asset('assets/slogo.png')),
                Text('Maharshi Patanjali Vidya Mandir',style: GoogleFonts.ubuntu(fontSize: 18,fontWeight:FontWeight.bold,))
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  height: 140,
                  width: 220,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/school.jpg'),
                      fit: BoxFit.cover,

                    ),
                    border: Border.all(width:2,color: Colors.white),
                    borderRadius: BorderRadius.circular(15),
                  ),
                )
              ],),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(120, 10, 0, 10),
                  padding: EdgeInsets.fromLTRB(8, 2, 5, 5),
                  height: 150,
                  width: 252,

                  child: Center(
                    child: Text('I have Studied my High School and Intermediate from Maharishi Patanjali Vidya Mandir which is situated in Prayagraj, and I did around 12 years of schooling from the same.Scoring 81.8% in 10\'th Standard and 83.8% in 10+2.The School experiance was overwhelming and help me get disciplined in the way I am. ',
                      style: GoogleFonts.ubuntu(),),
                  ),
                  decoration: BoxDecoration(color: Colors.blueAccent,borderRadius: BorderRadius.circular(15),

                  ),
                ),
              ],
            ),

          ],),
    ]
      ),

      backgroundColor: Colors.lightBlue[100],


    );
  }
}


//////SKILLS PAGE/////

class SkillsPage extends StatelessWidget{
  const SkillsPage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext content){
    return Scaffold(
      appBar: AppBar(title: Text('Skills',style: GoogleFonts.ubuntu(),),
        backgroundColor: Color(0xFF47B5FF),
        centerTitle: true,),

      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Text('App Development',
              style: GoogleFonts.merriweather(fontSize:25,fontWeight: FontWeight.bold),),
            alignment: Alignment.center,),
          Divider(thickness: 4,indent: 40,endIndent: 40,color: Colors.blue[700],),
          Column(
            children: [
              Container(
                  margin: EdgeInsets.fromLTRB(0, 2, 0, 0),
                  height: 140,
                  width: 240,

                  decoration: BoxDecoration(
                    image: DecorationImage(image:AssetImage('assets/flutter.jpg'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  )),
              Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                padding: EdgeInsets.fromLTRB(6, 2,0, 2),
                height: 130,width: 212,
                decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(15)),
                child:const Center(child: Text('I am a learner in App Development using Dart language and Flutter Software Development Kit.This Portfolio App is one of my first project which help me learn the basics of the development, I hope i will continue my discovery in the field.'),),
              ),
            ],
          ),

          Container(
            margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Text('C++ Coding',
              style: GoogleFonts.merriweather(fontSize:25,fontWeight: FontWeight.bold),),
            alignment: Alignment.center,
          ),
          Divider(thickness: 4,indent: 40,endIndent: 40,color: Colors.blue[700],),
          Column(
            children: [
              Container(
                  margin: EdgeInsets.fromLTRB(0, 2, 0, 0),
                  height: 140,
                  width: 240,

                  decoration: BoxDecoration(
                    image: DecorationImage(image:AssetImage('assets/coding.jpg'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  )),
              Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                padding: EdgeInsets.fromLTRB(10, 2, 2, 2),
                height: 130,width: 225,
                child: Center(child: Text('I was earlier a C coder and now I \nhave switched to C++ being Object Oriented and more practical language.I used HackerRank Platform for practicing the basics of C++ concepts and recently have started Competitive Coding on CodeChef platform.'),),
                decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(15)),
              ),
            ],
          ),

          Container(
            margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Text('Game Development',
              style: GoogleFonts.merriweather(fontSize:25,fontWeight: FontWeight.bold),),
            alignment: Alignment.center,
          ),
          Divider(thickness: 4,indent: 40,endIndent: 40,color: Colors.blue[700],),
          Column(
            children: [
              Container(
                  margin: EdgeInsets.fromLTRB(0, 2, 0, 0),
                  height: 140,
                  width: 240,

                  decoration: BoxDecoration(
                    image: const DecorationImage(image:AssetImage('assets/unity.jpg'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  )),
              Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                height: 105,width: 210,
                decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(15)),
                child: const Center(child: Text('I did game development in my spare time while lockdown and learned the basics from youtube making a game with resemblance of Subway Surfers using Unity Platform and CSharp Language'),),
              ),
            ],
          ),


        ],
      ),
      backgroundColor: Colors.lightBlue[100],


    );
  }
}
