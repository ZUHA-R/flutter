import 'package:adaptive_layout/adaptive_layout.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/secondPage.dart';
import 'package:untitled1/firstPage.dart';
void main() {
  AdaptiveLayout.setBreakpoints(
    //smallScreenMinWidth: 400,
    mediumScreenMinWidth: 600,
    largeScreenMinWidth: 1200,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Zuha's Website",
      theme: ThemeData(


        backgroundColor: Color.fromRGBO(128,0,0,2),
        // primarySwatch: Colors.grey,
      ),

      home: const HEHE(title: 'Login'),
    );
  }
}

class HEHE extends StatefulWidget {
  const HEHE({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<HEHE> createState() => _MyHomePageState();
}/*
class CardItem{
  final String urlImage;
  final String title;
  final String subtitle;
  const CardItem({
    required this.urlImage,
    required this.title,
    required this.subtitle,

  });
}
*/
class _MyHomePageState extends State<HEHE> {
  List <CardItem> items=[
    CardItem(urlImage: 'images/fast food.png', title: 'fast food', subtitle: 'fast food st'),
    CardItem(urlImage: 'images/thai food.png', title: 'thai food', subtitle: 'thai food st'),
    CardItem(urlImage: 'images/italian food.png', title: 'italian food', subtitle: 'italian food st'),
    CardItem(urlImage: 'images/bakery food.png', title: 'bakery food', subtitle: 'bakery food st'),
    CardItem(urlImage: 'images/beverages .png', title: 'beverages', subtitle: 'beverages st'),
    CardItem(urlImage: 'images/sweet dishes.png', title: 'sweet dishes', subtitle: 'sweet dishes st'),
    CardItem(urlImage: 'images/chinese.png', title: 'salads', subtitle: 'salads st'),
    CardItem(urlImage: 'images/salads.png', title: 'salads', subtitle: 'salads st'),
    CardItem(urlImage: 'images/sea food.png', title: 'salads', subtitle: 'salads st')

  ];
  List <CardItem> items2=[
    CardItem(urlImage: 'images/first page spinner.png', title: 'display 1', subtitle: 'display 1 st'),
    CardItem(urlImage: 'images/first page spinner 2.png', title: 'display 2', subtitle: 'display 3 st'),
    CardItem(urlImage: 'images/first page spinner 3.png', title: 'display 3', subtitle: 'display 3 st'),
    CardItem(urlImage: 'images/first page spinner 4.png', title: 'display 4', subtitle: 'display 4 st'),

  ];

  String success="";
  String email="";
  String password="";
  int res=0;

  var textFeild1=new TextEditingController();
  var textFeild2=new TextEditingController();

//  var textFeild=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    Widget buildCard({
      required CardItem item,
    })=>Container(
      width: 200,
      child: Column(
        children: [
          Expanded(

            child:AspectRatio(
              aspectRatio: 4/3,
              child:ClipRRect(
                borderRadius:BorderRadius.circular(20),
                child: Image.network(item.urlImage,
                  fit:BoxFit.cover,),
              ),
            ),

          ),
          const SizedBox(height: 4,),
          Text(
            item.title,
          ),
          Text(item.subtitle,),
        ],
      ),
    );

    return Scaffold(
      // backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(128,0,0,2),
        title: Text("First page"),
        //    leading :Icon(color:Colors.teal,Icons.access_time),
      ),
      //body:Co

      body:
      //AdaptiveLayout(
      // smallLayout:
      //MyContainer(color: Colors.amber),
      //mediumLayout: MyContainer(color: Colors.red[200]),
      // largeLayout: MyContainer(color: Colors.green[200]),
      //),
      Center(
        child:
        Column(
            children: <Widget>[

              Container(
                  height:150,
                  child:ListView.separated(
                    itemBuilder: (context,index) => Container(
                      width: 150,
                      child: Column(
                        children: [
                          Expanded(

                            child:AspectRatio(
                              aspectRatio: 4/2,
                              child:ClipRRect(
                                borderRadius:BorderRadius.circular(10),
                                child: Material(
                                  child:Ink.image(
                                    image:AssetImage(items[index].urlImage),
                                    fit:BoxFit.fill,
                                    child:InkWell(
                                      onTap:()=>Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context)=>SecondPage(item:items[index],))
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ),
                          //  const SizedBox(height: 4,),
                          // Text(
                          //   items[index].title,
                          // ),
                          // Text(items[index].subtitle,),
                        ],
                      ),
                    ),
                    padding:EdgeInsets.all(15),
                    scrollDirection: Axis.horizontal,

                    itemCount: 9,
                    separatorBuilder: (context,_)=>SizedBox(width: 12,),

                  )
              ),


              /*
                Expanded(
                  flex: 2,
                  child: Container(

                    height:150,
                    // color:Colors.indigo,
                    child:
                    Expanded(
                      child:
                  Row(
                     children:[
                              Expanded(
                                  flex:1,
                                  child:
                                  Card(

                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    color: Colors.amberAccent,
                                    elevation: 10,

                                    child: Container(
                                      height:100,
                                      //   decoration:ShapeDecoration(
                                      // shape: CircleBorder(),
                                      //   ),
                                      //fit:BoxFit.fitHeight,
                                      decoration:BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage("images/fast food.png"),

                                          fit: BoxFit.fill,
                                          alignment: Alignment.topCenter,
                                        ),
                                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                        //  color: Colors.transparent,

                                      ),

                                      child: Column(

                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            ListTile(
                                            ),

                                          ]
                                      ),


                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex:1,
                                  //   padding: new EdgeInsets.all(10.0),
                                  child:
                                  Card(

                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    color: Colors.amberAccent,
                                    elevation: 10,

                                    child: Container(
                                      height:100,
                                      //   decoration:ShapeDecoration(
                                      // shape: CircleBorder(),
                                      //   ),
                                      //fit:BoxFit.fitHeight,
                                      decoration:BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage("images/italian food.png"),

                                          fit: BoxFit.fill,
                                          alignment: Alignment.topCenter,
                                        ),
                                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                        //  color: Colors.transparent,

                                      ),
                                      //               decoration: BoxDecoration(
                                      //           image: DecorationImage(
                                      //               image: AssetImage("images/italian food.png"),
                                      //     fit: BoxFit.fill,
                                      //     alignment: Alignment.topCenter,
                                      //   ),
                                      // ),
                                      child: Column(

                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            ListTile(
                                              // leading: const Icon(Icons.album),
                                              // title: const Text('The Enchanted Nightingale'),
                                              // subtitle: const Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                                            ),
                                            /*
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                        overflowDirection:VerticalDirection.down,
                                      children: <Widget>[



                    ElevatedButton(
                                          style: ButtonStyle(
                                              backgroundColor: MaterialStateProperty.all(Color.fromRGBO(128,0,0,5)),
                                              padding: MaterialStateProperty.all(EdgeInsets.all(10)),

                                              textStyle: MaterialStateProperty.all(TextStyle(fontSize: 15,color: Colors.black))),
                                          //    backgroundColor: Color.fromRGBO(128,0,0,2),
                                          child: const Text('Explore'),
                                          onPressed: () {/* ... */},
                                        ),
                                      ],
                                    ),
*/
                                          ]
                                      ),


                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex:1,
                                  child:

                                  Card(

                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    color: Colors.amberAccent,
                                    elevation: 10,

                                    child: Container(
                                      height:100,
                                      //   decoration:ShapeDecoration(
                                      // shape: CircleBorder(),
                                      //   ),
                                      //fit:BoxFit.fitHeight,
                                      decoration:BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage("images/thai food.png"),

                                          fit: BoxFit.fill,
                                          alignment: Alignment.topCenter,
                                        ),
                                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                        //  color: Colors.transparent,

                                      ),
                                      //               decoration: BoxDecoration(
                                      //           image: DecorationImage(
                                      //               image: AssetImage("images/italian food.png"),
                                      //     fit: BoxFit.fill,
                                      //     alignment: Alignment.topCenter,
                                      //   ),
                                      // ),
                                      child: Column(

                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            ListTile(
                                              // leading: const Icon(Icons.album),
                                              // title: const Text('The Enchanted Nightingale'),
                                              // subtitle: const Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                                            ),
                                            /*
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                        overflowDirection:VerticalDirection.down,
                                      children: <Widget>[



                    ElevatedButton(
                                          style: ButtonStyle(
                                              backgroundColor: MaterialStateProperty.all(Color.fromRGBO(128,0,0,5)),
                                              padding: MaterialStateProperty.all(EdgeInsets.all(10)),

                                              textStyle: MaterialStateProperty.all(TextStyle(fontSize: 15,color: Colors.black))),
                                          //    backgroundColor: Color.fromRGBO(128,0,0,2),
                                          child: const Text('Explore'),
                                          onPressed: () {/* ... */},
                                        ),
                                      ],
                                    ),
*/
                                          ]
                                      ),


                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex:1,
                                  //   padding: new EdgeInsets.all(10.0),
                                  child:
                                  Card(

                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    color: Colors.amberAccent,
                                    elevation: 10,

                                    child: Container(
                                      height:100,
                                      //   decoration:ShapeDecoration(
                                      // shape: CircleBorder(),
                                      //   ),
                                      //fit:BoxFit.fitHeight,
                                      decoration:BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage("images/sea food.png"),

                                          fit: BoxFit.fill,
                                          alignment: Alignment.topCenter,
                                        ),
                                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                        //  color: Colors.transparent,

                                      ),
                                      //               decoration: BoxDecoration(
                                      //           image: DecorationImage(
                                      //               image: AssetImage("images/italian food.png"),
                                      //     fit: BoxFit.fill,
                                      //     alignment: Alignment.topCenter,
                                      //   ),
                                      // ),
                                      child: Column(

                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            ListTile(
                                              // leading: const Icon(Icons.album),
                                              // title: const Text('The Enchanted Nightingale'),
                                              // subtitle: const Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                                            ),
                                            /*
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                        overflowDirection:VerticalDirection.down,
                                      children: <Widget>[



                    ElevatedButton(
                                          style: ButtonStyle(
                                              backgroundColor: MaterialStateProperty.all(Color.fromRGBO(128,0,0,5)),
                                              padding: MaterialStateProperty.all(EdgeInsets.all(10)),

                                              textStyle: MaterialStateProperty.all(TextStyle(fontSize: 15,color: Colors.black))),
                                          //    backgroundColor: Color.fromRGBO(128,0,0,2),
                                          child: const Text('Explore'),
                                          onPressed: () {/* ... */},
                                        ),
                                      ],
                                    ),
*/
                                          ]
                                      ),


                                    ),
                                  ),
                                ),


                              ],
                            )


                        //  ]),
                  ),
                  ), ),

              */
              SizedBox(height: 10,),
              SizedBox(width: 10,),
              Expanded(
                flex: 5,
                child: Container(

                  height:150,
                  //padding: new EdgeInsets.all(20.0),
                  // color:Colors.indigo,
                  child: Expanded(
                    child:Row(
                        children:[SizedBox(width: 10,),
                          Expanded(
                            flex:2,
                            child:
                            Card(

                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              color: Colors.amberAccent,
                              elevation: 10,

                              child: Container(
                                height:400,
                                // //   decoration:ShapeDecoration(
                                // // shape: CircleBorder(),
                                // //   ),
                                // //fit:BoxFit.fitHeight,
                                // decoration:BoxDecoration(
                                //   // image: DecorationImage(
                                //   //   image: AssetImage("images/pakistani food.png"),
                                //   //
                                //   //   fit: BoxFit.fill,
                                //   //   alignment: Alignment.topCenter,
                                //   // ),
                                //   borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                //   //  color: Colors.transparent,

                                //),
                                child:Expanded(

                                  child:AspectRatio(
                                    aspectRatio: 4/2,
                                    child:ClipRRect(
                                      borderRadius:BorderRadius.circular(10),
                                      child: Material(
                                        child:Ink.image(
                                          image:AssetImage("images/pakistani food.png"),
                                          fit:BoxFit.fill,
                                          child:InkWell(
                                            onTap:()=>Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: (context)=>SecondPage(item:
                                                CardItem(urlImage: "images/pakistani food.png", title: "Pakistani Food", subtitle: "Pakistani Food st"),))
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),

                                ),
                                /*                                 child:Material(
                                  child:Ink.image(
                                    image:AssetImage("images/pakistani food.png"),
                                    fit:BoxFit.fill,
                                    child:InkWell(
                                      onTap:()=>Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context)=>SecondPage(item:
                                          CardItem(urlImage: "images/pakistani food.png", title: "Pakistani Food", subtitle: "Pakistani Food st"),))
                                      ),
                                    ),
                                  ),
                                ),
*/


                              ),
                            ),
                          ),
                          Expanded(
                            child:Column(
                                children:[
                                  Expanded(
                                    child:
                                    Row(children:[
                                      Expanded(
                                        flex:1,
                                        //   padding: new EdgeInsets.all(10.0),
                                        child:   Card(

                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(15.0),
                                          ),
                                          color: Colors.amberAccent,
                                          elevation: 10,

                                          child: Container(
                                            height:400,

                                            child:Expanded(

                                              child:AspectRatio(
                                                aspectRatio: 4/2,
                                                child:ClipRRect(
                                                  borderRadius:BorderRadius.circular(10),
                                                  child: Material(
                                                    child:Ink.image(
                                                      image:AssetImage("images/restaurants.png"),
                                                      fit:BoxFit.fill,
                                                      child:InkWell(
                                                        onTap:()=>Navigator.push(
                                                            context,
                                                            MaterialPageRoute(builder: (context)=>SecondPage(item:
                                                            CardItem(urlImage: "images/restaurants.png", title: "Restaurants", subtitle: "Restaurants st"),))
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),

                                            ),
                                          ),
                                        ),

                                      ),
                                    ]),),
                                  Expanded(
                                    child:Row(children:[
                                      Expanded(
                                        flex:1,
                                        //   padding: new EdgeInsets.all(10.0),
                                        child:   Card(

                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(15.0),
                                          ),
                                          color: Colors.amberAccent,
                                          elevation: 10,

                                          child: Container(
                                            height:400,
                                            child:Expanded(

                                              child:AspectRatio(
                                                aspectRatio: 4/2,
                                                child:ClipRRect(
                                                  borderRadius:BorderRadius.circular(10),
                                                  child: Material(
                                                    child:Ink.image(
                                                      image:AssetImage("images/channels.png"),
                                                      fit:BoxFit.fill,
                                                      child:InkWell(
                                                        onTap:()=>Navigator.push(
                                                            context,
                                                            MaterialPageRoute(builder: (context)=>SecondPage(item:
                                                            CardItem(urlImage: "images/channels.png", title: "Food Channels", subtitle: "Food Channels st"),))
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),

                                            ),
                                          ),
                                        ),

                                      ),
                                    ]),),
                                ]),
                          ),
                        ]),),
                ), ),
              SizedBox(height: 10,),


              Container(
                  height:250,
                  child:ListView.separated(
                    itemBuilder: (context,index) => Container(
                      width: 300,
                      child: Column(
                        children: [
                          Expanded(

                            child:AspectRatio(
                              aspectRatio: 4/3,
                              child:ClipRRect(
                                borderRadius:BorderRadius.circular(10),
                                child: Material(
                                  child:Ink.image(
                                    image:AssetImage(items2[index].urlImage),
                                    fit:BoxFit.fill,
                                    child:InkWell(
                                      onTap:()=>Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context)=>SecondPage(item:items2[index],))
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ),
                          // const SizedBox(height: 4,),
                          // Text(
                          //   items[index].title,
                          // ),
                          // Text(items[index].subtitle,),
                        ],
                      ),
                    ),
                    padding:EdgeInsets.all(15),
                    scrollDirection: Axis.horizontal,

                    itemCount: 4,
                    separatorBuilder: (context,_)=>SizedBox(width: 12,),

                  )
              ),
              /*             Expanded(
                  flex: 3,
                  child: Container(

                    height:150,
                    // color:Colors.indigo,
                    child:
                    Expanded(
                      child:Row(
                          children:[
                            Expanded(
                              flex:1,
                              child:
                              Card(

                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                color: Colors.amberAccent,
                                elevation: 10,

                                child: Container(
                                  height:400,
                                  //   decoration:ShapeDecoration(
                                  // shape: CircleBorder(),
                                  //   ),
                                  //fit:BoxFit.fitHeight,
                                  decoration:BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("images/first page spinner.png"),

                                      fit: BoxFit.fill,
                                      alignment: Alignment.topCenter,
                                    ),
                                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                    //  color: Colors.transparent,

                                  ),
                                  //               decoration: BoxDecoration(
                                  //           image: DecorationImage(
                                  //               image: AssetImage("images/italian food.png"),
                                  //     fit: BoxFit.fill,
                                  //     alignment: Alignment.topCenter,
                                  //   ),
                                  // ),
                                  child: Column(

                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        ListTile(
                                          // leading: const Icon(Icons.album),
                                          // title: const Text('The Enchanted Nightingale'),
                                          // subtitle: const Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                                        ),
                                        /*
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                        overflowDirection:VerticalDirection.down,
                                      children: <Widget>[



                    ElevatedButton(
                                          style: ButtonStyle(
                                              backgroundColor: MaterialStateProperty.all(Color.fromRGBO(128,0,0,5)),
                                              padding: MaterialStateProperty.all(EdgeInsets.all(10)),

                                              textStyle: MaterialStateProperty.all(TextStyle(fontSize: 15,color: Colors.black))),
                                          //    backgroundColor: Color.fromRGBO(128,0,0,2),
                                          child: const Text('Explore'),
                                          onPressed: () {/* ... */},
                                        ),
                                      ],
                                    ),
*/
                                      ]
                                  ),


                                ),
                              ),
                            ),
                            Expanded(
                              flex:1,
                              child:
                              Card(

                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                color: Colors.amberAccent,
                                elevation: 10,

                                child: Container(
                                  height:400,
                                  //   decoration:ShapeDecoration(
                                  // shape: CircleBorder(),
                                  //   ),
                                  //fit:BoxFit.fitHeight,
                                  decoration:BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("images/first page spinner 2.png"),

                                      fit: BoxFit.fill,
                                      alignment: Alignment.topCenter,
                                    ),
                                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                    //  color: Colors.transparent,

                                  ),
                                  //               decoration: BoxDecoration(
                                  //           image: DecorationImage(
                                  //               image: AssetImage("images/italian food.png"),
                                  //     fit: BoxFit.fill,
                                  //     alignment: Alignment.topCenter,
                                  //   ),
                                  // ),
                                  child: Column(

                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        ListTile(
                                          // leading: const Icon(Icons.album),
                                          // title: const Text('The Enchanted Nightingale'),
                                          // subtitle: const Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                                        ),
                                        /*
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                        overflowDirection:VerticalDirection.down,
                                      children: <Widget>[



                    ElevatedButton(
                                          style: ButtonStyle(
                                              backgroundColor: MaterialStateProperty.all(Color.fromRGBO(128,0,0,5)),
                                              padding: MaterialStateProperty.all(EdgeInsets.all(10)),

                                              textStyle: MaterialStateProperty.all(TextStyle(fontSize: 15,color: Colors.black))),
                                          //    backgroundColor: Color.fromRGBO(128,0,0,2),
                                          child: const Text('Explore'),
                                          onPressed: () {/* ... */},
                                        ),
                                      ],
                                    ),
*/
                                      ]
                                  ),


                                ),
                              ),
                            ),
                            Expanded(
                              flex:1,
                              child:
                              Card(

                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                color: Colors.amberAccent,
                                elevation: 10,

                                child: Container(
                                  height:400,
                                  //   decoration:ShapeDecoration(
                                  // shape: CircleBorder(),
                                  //   ),
                                  //fit:BoxFit.fitHeight,
                                  decoration:BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("images/first page spinner 3.png"),

                                      fit: BoxFit.fill,
                                      alignment: Alignment.topCenter,
                                    ),
                                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                    //  color: Colors.transparent,

                                  ),
                                  //               decoration: BoxDecoration(
                                  //           image: DecorationImage(
                                  //               image: AssetImage("images/italian food.png"),
                                  //     fit: BoxFit.fill,
                                  //     alignment: Alignment.topCenter,
                                  //   ),
                                  // ),
                                  child: Column(

                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        ListTile(
                                          // leading: const Icon(Icons.album),
                                          // title: const Text('The Enchanted Nightingale'),
                                          // subtitle: const Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                                        ),
                                        /*
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                        overflowDirection:VerticalDirection.down,
                                      children: <Widget>[



                    ElevatedButton(
                                          style: ButtonStyle(
                                              backgroundColor: MaterialStateProperty.all(Color.fromRGBO(128,0,0,5)),
                                              padding: MaterialStateProperty.all(EdgeInsets.all(10)),

                                              textStyle: MaterialStateProperty.all(TextStyle(fontSize: 15,color: Colors.black))),
                                          //    backgroundColor: Color.fromRGBO(128,0,0,2),
                                          child: const Text('Explore'),
                                          onPressed: () {/* ... */},
                                        ),
                                      ],
                                    ),
*/
                                      ]
                                  ),


                                ),
                              ),
                            ),


                          ]),
//                       SafeArea(
//                         //by default scroll directioin is vertical
//                         child: SingleChildScrollView(
//                           //changing scroll direction into horizontal
//                           scrollDirection: Axis.horizontal,
//                           child: Row(
//                             children: <Widget>[
//                               Row(
//                                   children:[
//                                     Expanded(
//                                       flex:1,
//                                       child:
//                                       Card(
//
//                                         shape: RoundedRectangleBorder(
//                                           borderRadius: BorderRadius.circular(15.0),
//                                         ),
//                                         color: Colors.amberAccent,
//                                         elevation: 10,
//
//                                         child: Container(
//                                           height:400,
//                                           //   decoration:ShapeDecoration(
//                                           // shape: CircleBorder(),
//                                           //   ),
//                                           //fit:BoxFit.fitHeight,
//                                           decoration:BoxDecoration(
//                                             image: DecorationImage(
//                                               image: AssetImage("images/first page spinner.png"),
//
//                                               fit: BoxFit.fill,
//                                               alignment: Alignment.topCenter,
//                                             ),
//                                             borderRadius: BorderRadius.all(Radius.circular(8.0)),
//                                             //  color: Colors.transparent,
//
//                                           ),
//                                           //               decoration: BoxDecoration(
//                                           //           image: DecorationImage(
//                                           //               image: AssetImage("images/italian food.png"),
//                                           //     fit: BoxFit.fill,
//                                           //     alignment: Alignment.topCenter,
//                                           //   ),
//                                           // ),
//                                           child: Column(
//
//                                               mainAxisSize: MainAxisSize.min,
//                                               children: <Widget>[
//                                                 ListTile(
//                                                   // leading: const Icon(Icons.album),
//                                                   // title: const Text('The Enchanted Nightingale'),
//                                                   // subtitle: const Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
//                                                 ),
//                                                 /*
//                     ButtonBar(
//                       alignment: MainAxisAlignment.start,
//                         overflowDirection:VerticalDirection.down,
//                                       children: <Widget>[
//
//
//
//                     ElevatedButton(
//                                           style: ButtonStyle(
//                                               backgroundColor: MaterialStateProperty.all(Color.fromRGBO(128,0,0,5)),
//                                               padding: MaterialStateProperty.all(EdgeInsets.all(10)),
//
//                                               textStyle: MaterialStateProperty.all(TextStyle(fontSize: 15,color: Colors.black))),
//                                           //    backgroundColor: Color.fromRGBO(128,0,0,2),
//                                           child: const Text('Explore'),
//                                           onPressed: () {/* ... */},
//                                         ),
//                                       ],
//                                     ),
// */
//                                               ]
//                                           ),
//
//
//                                         ),
//                                       ),
//                                     ),
//                                     Expanded(
//                                       flex:1,
//                                       child:
//                                       Card(
//
//                                         shape: RoundedRectangleBorder(
//                                           borderRadius: BorderRadius.circular(15.0),
//                                         ),
//                                         color: Colors.amberAccent,
//                                         elevation: 10,
//
//                                         child: Container(
//                                           height:400,
//                                           //   decoration:ShapeDecoration(
//                                           // shape: CircleBorder(),
//                                           //   ),
//                                           //fit:BoxFit.fitHeight,
//                                           decoration:BoxDecoration(
//                                             image: DecorationImage(
//                                               image: AssetImage("images/first page spinner 2.png"),
//
//                                               fit: BoxFit.fill,
//                                               alignment: Alignment.topCenter,
//                                             ),
//                                             borderRadius: BorderRadius.all(Radius.circular(8.0)),
//                                             //  color: Colors.transparent,
//
//                                           ),
//                                           //               decoration: BoxDecoration(
//                                           //           image: DecorationImage(
//                                           //               image: AssetImage("images/italian food.png"),
//                                           //     fit: BoxFit.fill,
//                                           //     alignment: Alignment.topCenter,
//                                           //   ),
//                                           // ),
//                                           child: Column(
//
//                                               mainAxisSize: MainAxisSize.min,
//                                               children: <Widget>[
//                                                 ListTile(
//                                                   // leading: const Icon(Icons.album),
//                                                   // title: const Text('The Enchanted Nightingale'),
//                                                   // subtitle: const Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
//                                                 ),
//                                                 /*
//                     ButtonBar(
//                       alignment: MainAxisAlignment.start,
//                         overflowDirection:VerticalDirection.down,
//                                       children: <Widget>[
//
//
//
//                     ElevatedButton(
//                                           style: ButtonStyle(
//                                               backgroundColor: MaterialStateProperty.all(Color.fromRGBO(128,0,0,5)),
//                                               padding: MaterialStateProperty.all(EdgeInsets.all(10)),
//
//                                               textStyle: MaterialStateProperty.all(TextStyle(fontSize: 15,color: Colors.black))),
//                                           //    backgroundColor: Color.fromRGBO(128,0,0,2),
//                                           child: const Text('Explore'),
//                                           onPressed: () {/* ... */},
//                                         ),
//                                       ],
//                                     ),
// */
//                                               ]
//                                           ),
//
//
//                                         ),
//                                       ),
//                                     ),
//                                     Expanded(
//                                       flex:1,
//                                       child:
//                                       Card(
//
//                                         shape: RoundedRectangleBorder(
//                                           borderRadius: BorderRadius.circular(15.0),
//                                         ),
//                                         color: Colors.amberAccent,
//                                         elevation: 10,
//
//                                         child: Container(
//                                           height:400,
//                                           //   decoration:ShapeDecoration(
//                                           // shape: CircleBorder(),
//                                           //   ),
//                                           //fit:BoxFit.fitHeight,
//                                           decoration:BoxDecoration(
//                                             image: DecorationImage(
//                                               image: AssetImage("images/first page spinner 3.png"),
//
//                                               fit: BoxFit.fill,
//                                               alignment: Alignment.topCenter,
//                                             ),
//                                             borderRadius: BorderRadius.all(Radius.circular(8.0)),
//                                             //  color: Colors.transparent,
//
//                                           ),
//                                           //               decoration: BoxDecoration(
//                                           //           image: DecorationImage(
//                                           //               image: AssetImage("images/italian food.png"),
//                                           //     fit: BoxFit.fill,
//                                           //     alignment: Alignment.topCenter,
//                                           //   ),
//                                           // ),
//                                           child: Column(
//
//                                               mainAxisSize: MainAxisSize.min,
//                                               children: <Widget>[
//                                                 ListTile(
//                                                   // leading: const Icon(Icons.album),
//                                                   // title: const Text('The Enchanted Nightingale'),
//                                                   // subtitle: const Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
//                                                 ),
//                                                 /*
//                     ButtonBar(
//                       alignment: MainAxisAlignment.start,
//                         overflowDirection:VerticalDirection.down,
//                                       children: <Widget>[
//
//
//
//                     ElevatedButton(
//                                           style: ButtonStyle(
//                                               backgroundColor: MaterialStateProperty.all(Color.fromRGBO(128,0,0,5)),
//                                               padding: MaterialStateProperty.all(EdgeInsets.all(10)),
//
//                                               textStyle: MaterialStateProperty.all(TextStyle(fontSize: 15,color: Colors.black))),
//                                           //    backgroundColor: Color.fromRGBO(128,0,0,2),
//                                           child: const Text('Explore'),
//                                           onPressed: () {/* ... */},
//                                         ),
//                                       ],
//                                     ),
// */
//                                               ]
//                                           ),
//
//
//                                         ),
//                                       ),
//                                     ),
//
//
//                                   ]),
//
//                             ],
//                           ),
//                         ),
//                       )



                    ),
                  ), ),
*/
              // SizedBox(width: 10,),
              // Expanded(
              //   flex: 2,
              //   child:  SizedBox(width: 20,),),

              SizedBox(width: 10,),


/*
                Expanded(
                  flex: 2,
                  child: Container(

                    height:150,
                    // color:Colors.indigo,
                    child:
                    Expanded(
                      child:Row(
                          children:[
                            Expanded(
                              flex:1,
                              child:
                              Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                color: Colors.amberAccent,
                                elevation: 10,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    ListTile(



                                      title: Text(
                                          '  ',
                                          style: TextStyle(fontSize: 30.0,color: Colors.black)
                                      ),
                                      subtitle: Text(
                                          '___',
                                          style: TextStyle(fontSize: 18.0,color: Colors.black26)
                                      ),
                                    ),
                                    ButtonBar(
                                      children: <Widget>[

                                        ElevatedButton(
                                          style: ButtonStyle(
                                              backgroundColor: MaterialStateProperty.all(Color.fromRGBO(128,0,0,5)),
                                              padding: MaterialStateProperty.all(EdgeInsets.all(10)),

                                              textStyle: MaterialStateProperty.all(TextStyle(fontSize: 15,color: Colors.black))),
                                          //    backgroundColor: Color.fromRGBO(128,0,0,2),
                                          child: const Text('Explore'),
                                          onPressed: () {/* ... */},
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex:1,
                              child:
                              Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                color: Colors.amberAccent,
                                elevation: 10,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    ListTile(



                                      title: Text(
                                          '  ',
                                          style: TextStyle(fontSize: 30.0,color: Colors.black)
                                      ),
                                      subtitle: Text(
                                          '___',
                                          style: TextStyle(fontSize: 18.0,color: Colors.black26)
                                      ),
                                    ),
                                    ButtonBar(
                                      children: <Widget>[

                                        ElevatedButton(
                                          style: ButtonStyle(
                                              backgroundColor: MaterialStateProperty.all(Color.fromRGBO(128,0,0,5)),
                                              padding: MaterialStateProperty.all(EdgeInsets.all(10)),

                                              textStyle: MaterialStateProperty.all(TextStyle(fontSize: 15,color: Colors.black))),
                                          //    backgroundColor: Color.fromRGBO(128,0,0,2),
                                          child: const Text('Explore'),
                                          onPressed: () {/* ... */},
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex:1,
                              child:
                              Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                color: Colors.amberAccent,
                                elevation: 10,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    ListTile(



                                      title: Text(
                                          '  ',
                                          style: TextStyle(fontSize: 30.0,color: Colors.black)
                                      ),
                                      subtitle: Text(
                                          '___',
                                          style: TextStyle(fontSize: 18.0,color: Colors.black26)
                                      ),
                                    ),
                                    ButtonBar(
                                      children: <Widget>[

                                        ElevatedButton(
                                          style: ButtonStyle(
                                              backgroundColor: MaterialStateProperty.all(Color.fromRGBO(128,0,0,5)),
                                              padding: MaterialStateProperty.all(EdgeInsets.all(10)),

                                              textStyle: MaterialStateProperty.all(TextStyle(fontSize: 15,color: Colors.black))),
                                          //    backgroundColor: Color.fromRGBO(128,0,0,2),
                                          child: const Text('Explore'),
                                          onPressed: () {/* ... */},
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex:1,
                              child:
                              Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                color: Colors.amberAccent,
                                elevation: 10,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    ListTile(



                                      title: Text(
                                          '  ',
                                          style: TextStyle(fontSize: 30.0,color: Colors.black)
                                      ),
                                      subtitle: Text(
                                          '___',
                                          style: TextStyle(fontSize: 18.0,color: Colors.black26)
                                      ),
                                    ),
                                    ButtonBar(
                                      children: <Widget>[

                                        ElevatedButton(
                                          style: ButtonStyle(
                                              backgroundColor: MaterialStateProperty.all(Color.fromRGBO(128,0,0,5)),
                                              padding: MaterialStateProperty.all(EdgeInsets.all(10)),

                                              textStyle: MaterialStateProperty.all(TextStyle(fontSize: 15,color: Colors.black))),
                                          //    backgroundColor: Color.fromRGBO(128,0,0,2),
                                          child: const Text('Explore'),
                                          onPressed: () {/* ... */},
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),

                          ]),),
                  ), ),
                SizedBox(width: 10,),
*/
            ]
        ),

/*Expanded(
      flex: 2,
      child: Container(
        // color:Colors.indigo,
        child: Expanded(
          child:Row(
              children:[
                Expanded(
                  flex:2,
                  child: Card(
                    color:Colors.pink,
                    child: SizedBox(
                      width: 505,
                      height: 280,

                      //  child: Center(child: Text()),
                    ),),
                ),
                Expanded(
                  flex:1,
               //   padding: new EdgeInsets.all(10.0),
                  child: Card(
                    color:Colors.pink,
                    child: SizedBox(
                      width: 505,
                      height: 280,

                      //  child: Center(child: Text()),
                    ),),
                ),

              ]),),
      ), ),
* */
      ),



      //  ),

    );

  }
}