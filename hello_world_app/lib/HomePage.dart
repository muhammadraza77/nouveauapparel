import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'category.dart';
import 'ProfilePage.dart';
import 'Checkout/Checkoutpage1.dart';
import 'package:hello_world_app/Product/productDetail.dart';
import 'package:hello_world_app/Product/productList.dart';
import 'Login/Authentication.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;



int pageSelectorIndex=0;
  List data,data1;

// Color cd = const Color.fromARGB(0xFF, 0x20, 0x3A, 0x43);
// Color c = const Color.fromARGB(0xFF, 0x2C, 0x53, 0x64);

Color cd = const Color.fromARGB(0xAA, 0x00, 0x00, 0x00);
Color c = const Color.fromARGB(0xAA, 0x00, 0x00, 0x00);

Duration dd=new Duration(seconds: 2);

String itemName,itemImage,itemSubname,itemPrice, itemRating;


class mainApplication extends StatefulWidget {
  
  
  mainApplication
  ({
    this.auth,
    this.onSignedOut,
  });
  
  final BaseAuth auth;
  final VoidCallback onSignedOut;

  
  @override
  _mainApplicationState createState() => _mainApplicationState();
}

class _mainApplicationState extends State<mainApplication> {
  int curIndex=0;
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body:new homePage(), 
          bottomNavigationBar: new Theme(
            data: Theme.of(context).copyWith(canvasColor: c,primaryColor: Colors.white,textTheme: Theme.of(context).textTheme.copyWith(caption: new TextStyle(color: cd))), // sets the inactive color of the `BottomNavigationBar`
            child: new BottomNavigationBar(
              type: BottomNavigationBarType.shifting,
              fixedColor: Colors.white,
              currentIndex: curIndex,
              onTap: (int x1){
                setState(() {
                    curIndex=x1;
                    pageSelectorIndex=x1;
                });
              },
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  title: Text("Home")
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.format_list_bulleted),
                  title: Text("Category")
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart),
                  title: Text("Sale Offers")
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  title: Text("Account")
                ),      
              ],
            ),
          )
      ),
      routes: <String,WidgetBuilder>{
        '/productPage':(BuildContext context)=>ProductPage(itemName,itemImage,itemSubname,itemPrice, itemRating),
        '/productList':(BuildContext context)=>productListPage(),
      }
    ); 
  }
}
class homePage extends StatefulWidget {

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> with SingleTickerProviderStateMixin{
    final String url = "https://api.myjson.com/bins/1f9g7f";

  Future<String> getData()async{
    var res  =await http.get(Uri.encodeFull(url),headers:{"Accept":"application/json"});
  setState(() {
      var resBody = json.decode(res.body);
      data = resBody["Featured"];
      data1= resBody["Recomended"];
  });
  return "success";
  }

  Animation an;
  AnimationController anc;
   
  @override
  Widget build(BuildContext context) {
    
    if(pageSelectorIndex==0)return ListView(
      children: <Widget>[
        Stack(
        children: <Widget>[
          ClipPath(clipper: fooClipper(),child: 
            Container(height: 320,decoration: new BoxDecoration(gradient: LinearGradient(colors: [cd,c])),
            child:Column(
              children: <Widget>[
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(margin: EdgeInsets.fromLTRB(15, 35, 0,0),child: Row(children: <Widget>[Icon(Icons.location_on,color: Colors.white,),Text(" : Karachi",style: new TextStyle(color: Colors.white),)],)),
                      Container(margin: EdgeInsets.fromLTRB(0, 35, 15, 0),child:Icon(Icons.shopping_cart,color: Colors.white,size: 30,),)
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                  child: Center(
                    child: Text("What Do You Want to Wear ?",textAlign: TextAlign.center,style: TextStyle(fontFamily: 'Dosis',fontSize: 30,color: Colors.white)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  
                  child: Center(
                    
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Card(
                        elevation: 20,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            // Container(margin: EdgeInsets.only(left:10,top: 3,bottom: 3),child:Text("Search ",style: TextStyle(letterSpacing: 0.9,fontSize: 17,color: Colors.grey),)),
                            // Container(margin: EdgeInsets.only(right:10,top: 3,bottom: 3),child:Icon(Icons.search,color: Colors.grey,)),                          
                            
                          ],
                        )                   
                      ),
                    ),
                  ),
                )
              
              ],
            ) 
            
            ),

          ),
        ],
          ),
        partBHS(),
        Container(
          margin: EdgeInsets.symmetric(vertical:20,horizontal:15),
          child: Center(
            child: Wrap(
              alignment: WrapAlignment.center,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(25)),                  
                  child: Card(
                    child: OutlineButton(
                      onPressed: (){},
                      padding: EdgeInsets.all(20),
                      child: Text("T-Shirt"),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(25)),                  
                  child: Card(
                    child: OutlineButton(
                      onPressed: (){},
                      padding: EdgeInsets.all(20),
                      child: Text("Hoddie"),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(25)),                  
                  child: Card(
                    child: OutlineButton(
                      onPressed: (){},
                      padding: EdgeInsets.all(20),
                      child: Text("Chinos"),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(25)),                  
                  child: Card(
                    child: OutlineButton(
                      onPressed: (){},
                      padding: EdgeInsets.all(20),
                      child: Text("Heifelers"),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(25)),                  
                  child: Card(
                    child: OutlineButton(
                      onPressed: (){},
                      padding: EdgeInsets.all(20),
                      child: Text("Shirt"),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: <Widget>[
            Container(margin: EdgeInsets.all(15),child:Text("Recomended ",style: TextStyle(color: Colors.black,fontSize: 18),)),
            Container(margin: EdgeInsets.only(right: 15),child: Icon(Icons.stars,color: c,),)
          ],),
        Container(//grid
          child: GridView.builder(
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemCount: data1.length,
            itemBuilder: (context,index){
              return ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(25)),
                child: GestureDetector(
                  onTap: (){
                    itemName="Product Name";itemImage=path;
                    itemPrice="25000";itemRating="4";
                    itemSubname="Shirt";
                    Navigator.of(context).pushNamed('/productPage');},
                  child: Container(
                    padding: EdgeInsets.all(1),
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Card(
                      elevation: 20,
                      child: Column(
                        children: <Widget>[
                          Container(margin: EdgeInsets.symmetric(vertical: 5),child:Image.network(data1[index]["image"]),height: 75,),
                          Container(margin: EdgeInsets.only(left: 10,top: 5),width: MediaQuery.of(context).size.width,child: Text(data1[index]["name"],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                           Container(margin: EdgeInsets.only(left: 10,top: 5),width: MediaQuery.of(context).size.width,child: Text(data1[index]["price"])),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: <Widget>[
                              Container(child: Container(child: Row(children: <Widget>[Text("4.2  "),Icon(Icons.star,color: Colors.orange,)],),),),
                            ],),
                          )

                        ],
                      ),
                    ),
                  ),
                ),
              );

            },
          )
        ,)//grid
      
      ],
    );

    else if(pageSelectorIndex==1){
      // return Container(color: Colors.red,);
      return new categoryPage();
    }
    else if(pageSelectorIndex==2){
      return new Checkout1();
    }
    else if (pageSelectorIndex==3){
      return new MyProfile();
    }
  }
  @override
  void initState() {
    super.initState();
    this.getData();
  }
}


//homescreen part2 

class partBHS extends StatefulWidget {
  @override
  _partBHSState createState() => _partBHSState();
}
String path='https://armapparels.com.pk/wp-content/uploads/2019/04/JKR-03HS_Black_SQ.jpg';
String p2='assets/pic1.jpg';

class _partBHSState extends State<partBHS> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: <Widget>[
            Container(margin: EdgeInsets.all(15),child:Text("Featured Items ",style: TextStyle(color: Colors.black,fontSize: 18),)),
            Container(margin: EdgeInsets.only(right: 15),child: Icon(Icons.stars,color: c,),)
          ],),
          SizedBox(
            height: 200,
            child: Container(child:ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: data.length,
              itemBuilder: (context,index){
                return Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      child: Stack(
                        children: <Widget>[
                          Container(height: 200,width: 140,child: Image.network(data[index]["image"],fit: BoxFit.cover,)),
                          Positioned(
                              left: 0,
                              bottom: 0,
                              height: 100,
                              width: 140,
                              child: Container(
                                decoration: BoxDecoration(gradient: LinearGradient(begin: Alignment.bottomCenter,end: Alignment.topCenter,colors: [Colors.black,Colors.transparent])),
                              ),
                          ),
                          Positioned(left: 0,bottom: 00,width: 140,height: 100,
                              
                              child:Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(left:8),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Text("T-Shirt ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                                      Text("RS:"+data[index]["price"].toString(),style: TextStyle(fontSize: 14,color: Colors.white),),
        
                                    ],
                                  ),
                                ),
                                Container(margin: EdgeInsets.only(right: 8),decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Colors.white),padding: EdgeInsets.all(8),child: Text("20 %",textAlign: TextAlign.center,),)
                                ],
                              ) 
                          )
                        ],
                      ),
                    ),
                  ),
                );
                
              },
            )
            
            ),
          )
        ],
      ),
      
    );
  }
 
  }










// sepearte file ka kam

class fooClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
      Path path=new Path();
      path.lineTo(0, size.height);
      
      var cpoint=new Offset(size.width/4, size.height-50);
      var epoint=new Offset(size.width/2, size.height-35);
      path.quadraticBezierTo(cpoint.dx,cpoint.dy, epoint.dx, epoint.dy);
      
      var cpoint2=new Offset(size.width*0.75, size.height-20);
      var epoint2=new Offset(size.width, size.height-80);
      path.quadraticBezierTo(cpoint2.dx,cpoint2.dy, epoint2.dx, epoint2.dy);

      path.lineTo(size.width, size.height);
      path.lineTo(size.width, 0);
      path.close();
      return path;
    }

    @override
      bool shouldReclip(CustomClipper oldClipper) {
        // TODO: implement shouldReclip
        return true;
      }
      
}

