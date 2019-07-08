import 'package:flutter/material.dart';
import 'package:rentus/model/city.dart';
import 'package:rentus/model/rooms.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}




class _HomePageState extends State<HomePage> {
  int id=0;

  List<City> city=<City>[
    City("CityName1","download.jpeg"),
    City("CityName2","download.jpeg"),
    City("CityName3","download.jpeg"),
    City("CityName4","download.jpeg"),
    City("CityName5","download.jpeg"),
    City("CityName6","download.jpeg"),
  ];
  List<Room> room=<Room>[
    Room("1","Address 1","Price 1","Rate 1","room.jpg"),
    Room("2","Address 2","Price 2","Rate 2","room.jpg"),
    Room("3","Address 3","Price 3","Rate 3","room.jpg"),
    Room("4","Address 4","Price 4","Rate 4","room.jpg"),
    Room("5","Address 5","Price 5","Rate 5","room.jpg"),
    Room("6","Address 6","Price 6","Rate 6","room.jpg"),
    Room("7","Address 7","Price 7","Rate 7","room.jpg"),
    Room("8","Address 8","Price 8","Rate 8","room.jpg"),
    Room("9","Address 9","Price 9","Rate 9","room.jpg"),
    Room("10","Address 10","Price 10","Rate 10","room.jpg"),
  ];
  @override
  Widget build(BuildContext context) {

    final tabpages=<Widget>[
      Column(
        mainAxisAlignment:MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              hintText: "Enter Area or City",
              labelText: "Enter Area or City",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            onSubmitted: (String value){

            },
          ),

          Container(
            height: 100.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: city.length,
                itemBuilder: (context,i){
                  return Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: CircleAvatar(
                        child: Text("${city[i].CityName}"),
                      minRadius: 40.0,
                      backgroundImage: AssetImage("images/${city[i].CityImage}"),
                      maxRadius: 50.0,
                    ),
                  );
                }
            ),
          ),
          Text("You might Like to visit",
            style: TextStyle(
                fontSize: 25.0,
              fontWeight: FontWeight.bold
            ),
          ),
          Container(
            height: 250.0,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: room.length,
                itemBuilder: (context,i){
                  return Stack(
                    children: <Widget>[
                      Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                side: BorderSide(color: Colors.red,style: BorderStyle.none)
                            ),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  child: Image(
                                    image: AssetImage("images/${room[i].image}"),
                                    fit: BoxFit.scaleDown,
                                    semanticLabel: "Room",
                                  ),
                                  height: 90.0,

                                ),
                                Text("${room[i].id}",style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold),),
                                Text("${room[i].address}",style: TextStyle(fontSize: 20.0,),),
                                Text("${room[i].price}",style: TextStyle(fontSize: 20.0,color: Colors.red),),



                              ],
                            ),
                          )
                      ),
                      Positioned(

                        child: InkWell(
                          child: Container(
                            height: 15.0,
                            child: Center(child: Text("${room[i].rate}",style: TextStyle(color: Colors.white),),),
                            decoration: BoxDecoration(
                                color: Colors.green
                            ),
                            width: 50.0,
                          ),
                        ),
                        top: 55.0,
                      ),
                    ],
                    //child:
                  );
                }
            ),
          ),
//          Text("You may like to visit"),
//          Row(
//            children: <Widget>[
//              Card(
//                child: Column(
//                  children: <Widget>[
//                    FlutterLogo(),
//                    Text("Name 1 of the room"),
//                    Text("Address 1 of the room"),
//                    Text("Price 1 of the room")
//                  ],
//                ),
//                shape: RoundedRectangleBorder(
//                    borderRadius: BorderRadius.circular(30.0)
//                ),
//              ),
//              Padding(
//                padding: EdgeInsets.all(25.0),
//              ),
//              Card(
//                child: Column(
//                  children: <Widget>[
//                    FlutterLogo(),
//                    Text("Name 2 of the room"),
//                    Text("Address 2 of the room"),
//                    Text("Price 2 of the room")
//                  ],
//                ),
//                shape: RoundedRectangleBorder(
//                    borderRadius: BorderRadius.circular(30.0)
//                ),
//              ),
//              Padding(
//                padding: EdgeInsets.all(25.0),
//              ),
//              Card(
//                child: Column(
//                  children: <Widget>[
//                    FlutterLogo(),
//                    Text("Name 3 of the room"),
//                    Text("Address 3 of the room"),
//                    Text("Price 3 of the room")
//                  ],
//                ),
//                shape: RoundedRectangleBorder(
//                    borderRadius: BorderRadius.circular(30.0)
//                ),
//              ),
//              Padding(
//                padding: EdgeInsets.all(25.0),
//              ),
//              Card(
//                child: Column(
//                  children: <Widget>[
//                    FlutterLogo(),
//                    Text("Name 4 of the room"),
//                    Text("Address 4 of the room"),
//                    Text("Price 4 of the room")
//                  ],
//                ),
//                shape: RoundedRectangleBorder(
//                    borderRadius: BorderRadius.circular(30.0)
//                ),
//              ),
//              Padding(
//                padding: EdgeInsets.all(25.0),
//              ),
//              Card(
//                child: Column(
//                  children: <Widget>[
//                    FlutterLogo(),
//                    Text("Name 5 of the room"),
//                    Text("Address 5 of the room"),
//                    Text("Price 5 of the room")
//                  ],
//                ),
//                shape: RoundedRectangleBorder(
//                    borderRadius: BorderRadius.circular(30.0)
//                ),
//              ),
//              Padding(
//                padding: EdgeInsets.all(25.0),
//              ),
//            ],
//          ),


        ],
      ),


      Center(child: Icon(Icons.map,size: 60.0,color: Colors.blue,),),
      Center(child: Icon(Icons.mic,size: 60.0,color: Colors.blue,),),
      Center(child: Icon(Icons.radio,size: 60.0,color: Colors.blue,),),
    ];
    final bnbi=<BottomNavigationBarItem>[
      BottomNavigationBarItem(icon: Icon(Icons.home,),title: Text("Home")),
      BottomNavigationBarItem(icon: Icon(Icons.map,),title: Text("My Booking")),
      BottomNavigationBarItem(icon: Icon(Icons.mic,),title: Text("Search")),
      BottomNavigationBarItem(icon: Icon(Icons.radio,),title: Text("Invite and Earn")),
    ];
    final bnb=BottomNavigationBar(
      items: bnbi,
      currentIndex:id ,
      type: BottomNavigationBarType.fixed,
      onTap: (int value){
        setState(() {
          id=value;
        });
      },
    );
    final header=UserAccountsDrawerHeader(
      accountName: Text("Account user name"),
      accountEmail: Text("Email and Mobile"),
      currentAccountPicture: CircleAvatar(
        child: FlutterLogo(size: 30.0,),
      ),
    );
    final items=ListView(
      children: <Widget>[
        header,
        ListTile(
          title: Text("Coupons"),
        ),
        Divider(),
        ListTile(
          title: Text("aaaaaaaaa"),
          subtitle: Text("mmmmmmmmmmm",style: TextStyle(color: Colors.blue),),
        ),
        Divider(),
        ListTile(
          title: Text("Setting"),
        ),
        ListTile(
          title: Text("xxxxxxxx"),
        ),
        ListTile(
          title: Text("yyyyyy"),
        ),
        ListTile(
          title: Text("App theme"),
        ),
        ListTile(
          title: Text("Night Mode"),
          trailing: Switch(value: true),
        ),
        Divider(),
        ListTile(
          title: Text("Help"),
          leading: Icon(Icons.help),
        ),
      ],

    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body:tabpages[id],
      bottomNavigationBar: bnb,
      drawer: Drawer(child: items,),
    );
  }
}
