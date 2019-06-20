import 'package:flutter/material.dart';
import 'package:hello_world_app/HomePage.dart';

Color cd = const Color.fromARGB(0xFF, 0x20, 0x3A, 0x43);
Color c = const Color.fromARGB(0xFF, 0x2C, 0x53, 0x64);

// class ProductPage extends StatefulWidget{
//   String itemName,itemImage,itemSubname,itemPrice, itemRating;
//   ProductPage(this.itemName, this.itemImage, this.itemSubname, this.itemPrice,
//       this.itemRating);
//   @override
//   State createState() => new ProductDetail();
// }
// class ProductDetail extends State<ProductPage>{
//   @override
//   Widget build(BuildContext context) {
//     Size screenSize = MediaQuery.of(context).size;
//     return new Scaffold(
//         appBar: new AppBar(
//           title: new Text(''),
//           elevation: 0.0,
//           backgroundColor: Colors.white,
//           centerTitle: true,
//           leading: IconButton(
//             onPressed: () {},
//             icon: Icon(Icons.arrow_back),
//             color: Colors.black,),
//           actions: <Widget>[
//             IconButton(
//               icon: Icon(Icons.add_shopping_cart),
//               onPressed: () {},
//               color: Colors.grey,
//             ),
//           ],
//         ),
//         body: new Stack(
//           alignment: Alignment.topCenter,
//           children: <Widget>[
//             new Container(
//                 height: 280.0,
//                 decoration: new BoxDecoration(
//                     image: DecorationImage(
//                       image: NetworkImage(widget.itemImage),
//                       fit:BoxFit.fitHeight,
//                     ),
//                     borderRadius: BorderRadius.only(
//                       bottomRight: Radius.circular(120.0),
//                       bottomLeft: Radius.circular(120.0),
//                     )
//                 )
//             ),
//             new Container(
//                 height: 280.0,
//                 decoration: new BoxDecoration(
//                     color:Colors.grey.withAlpha(50),
//                     borderRadius: BorderRadius.only(
//                       bottomRight: Radius.circular(120.0),
//                       bottomLeft: Radius.circular(120.0),
//                     )
//                 )
//             ),
//             new SingleChildScrollView(
//                 child: new Column(
//                     children: <Widget>[
//                       new SizedBox(height:250.0,),
//                       new Card(
//                           child: new Container(
//                               width: screenSize.width,
//                               margin: EdgeInsets.only(left:20, right: 20.0),
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: <Widget>[
//                                   SizedBox(height:10.0),
//                                   Text(widget.itemName,style: TextStyle(
//                                       fontSize: 18.0, fontWeight: FontWeight.w700
//                                   )),
//                                   SizedBox(height:10.0),
//                                   Text(widget.itemSubname,style: TextStyle(
//                                       fontSize: 14.0, fontWeight: FontWeight.w400
//                                   )),SizedBox(height:10.0),

//                                   Row(
//                                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                     children: <Widget>[
//                                       new Row(
//                                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                                           children: <Widget>[
//                                             Icon(Icons.star, color: c, size: 20.0),
//                                             SizedBox(width:5.0),
//                                             Text(widget.itemRating,style: TextStyle(
//                                                 fontSize: 14.0, fontWeight: FontWeight.w400
//                                             ))
//                                           ]
//                                       ),Text("RS"+widget.itemPrice,style: TextStyle(
//                                           fontSize: 20.0, fontWeight: FontWeight.w700,
//                                           color:Colors.red
//                                       ))
//                                     ],
//                                   )


//                                 ],
//                               )
//                           )
//                       ),
//                       new Card(
//                           child: new Container(
//                             width: screenSize.width,
//                             height: 150.0,
//                             child: ListView.builder(
//                               scrollDirection: Axis.horizontal,
//                               itemCount: 4,
//                               itemBuilder: (context,index){
//                                 return new Stack(
//                                   alignment: Alignment.center,
//                                   children: <Widget>[
//                                     new Container(
//                                       margin: EdgeInsets.only(left:5.0, right:5.0),
//                                       height: 140.0,
//                                       width: 100.0,
//                                       child: Image.network(widget.itemImage),
//                                     ),
//                                     new Container(
//                                       margin: EdgeInsets.only(left:5.0, right:5.0),
//                                       height: 140.0,
//                                       width: 100.0,
//                                       color:Colors.grey.withAlpha(50),
//                                     )
//                                   ],
//                                 );
//                               },
//                             ),
//                           )
//                       ),
//                       new Card(
//                           child: new Container(
//                             width:screenSize.width,
//                             margin: new EdgeInsets.only(left:20,right:20),
//                             child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: <Widget>[
//                                   SizedBox(height:10.0),
//                                   Text("Description",style: TextStyle(
//                                       fontSize: 18.0, fontWeight: FontWeight.w700)
//                                   ),
//                                   SizedBox(height:10.0),
//                                   Text("Regular Fit \nSoft Cotton \nDurable Printing \nLight Weight \nComfortable Wear",style: TextStyle(
//                                       fontSize: 14.0, fontWeight: FontWeight.w400)
//                                   ), SizedBox(height:10.0),

//                                 ]
//                             ),
//                           )
//                       ),
//                       new Card(
//                           child: new Container(
//                               width:screenSize.width,
//                               margin: new EdgeInsets.only(left:20,right:20),
//                               child:  Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: <Widget>[
//                                     SizedBox(height:10.0),
//                                     Text("Colors",style: TextStyle(
//                                         fontSize: 18.0, fontWeight: FontWeight.w700)
//                                     ),
//                                     SizedBox(height:10.0),
//                                     SizedBox(
//                                         height: 50.0,
//                                         child:ListView.builder(itemBuilder: (context, index){
//                                           return new
//                                           Padding(
//                                             padding:const EdgeInsets.all(4.0),
//                                             child: ChoiceChip(
//                                                 label: new Text("Color ${index}"),
//                                                 selected:false
//                                             ),
//                                           );
//                                         },scrollDirection: Axis.horizontal,itemCount: 3,)
//                                     ),SizedBox(height:10.0),
//                                     Text("Size",style: TextStyle(
//                                         fontSize: 18.0, fontWeight: FontWeight.w700)
//                                     ),
//                                     SizedBox(height:10.0),
//                                     SizedBox(
//                                         height: 50.0,
//                                         child:ListView.builder(itemBuilder: (context, index){
//                                           return new
//                                           Padding(
//                                             padding:const EdgeInsets.all(4.0),
//                                             child: ChoiceChip(
//                                                 label: new Text("Size ${index}"),
//                                                 selected:false
//                                             ),
//                                           );
//                                         },scrollDirection: Axis.horizontal,itemCount: 3,)
//                                     ),SizedBox(height:10.0),
//                                     Text("Quantity",style: TextStyle(
//                                         fontSize: 18.0, fontWeight: FontWeight.w700)
//                                     ),SizedBox(height:10.0),
//                                     Row(
//                                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                                       children: <Widget>[
//                                         CircleAvatar(
//                                           backgroundColor: c,
//                                             child:IconButton(
//                                               onPressed: (){},
//                                               color: c,
//                                                 icon:Icon(Icons
//                                                     .remove,color:Colors.white)
//                                             )
//                                         ),
//                                         Text("0",style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w700),),
//                                         CircleAvatar(
//                                           backgroundColor: c,
//                                             child:IconButton(
//                                               onPressed: (){},
//                                               color: c,
//                                                 icon:Icon(Icons.add,color:Colors.white)
//                                             )
//                                         ),
//                                       ],
//                                     ),
//                                     SizedBox(height:50.0),
//                                   ]
//                               )
//                           )
//                       ),
//                     ]
//                 )
//             )
//           ],
//         ),
//         floatingActionButton: new Stack(
//           alignment: Alignment.topLeft,
//           children: <Widget>[
//             new FloatingActionButton(onPressed: (){},backgroundColor: c,child: new Icon(Icons.shopping_cart,color: Colors.white,size: 20.0),
//             ),
//             new CircleAvatar(
//                 radius:10.0,
//                 backgroundColor:Colors.red,
//                 child:Text(
//                     "2",style:TextStyle(color:Colors.white,fontSize:13.0)
//                 )
//             )
//           ],
//         ),
//         floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//         bottomNavigationBar:new BottomAppBar(
//             elevation: 0.0,
//             color:c,
//             shape: new CircularNotchedRectangle(),
//             notchMargin: 5.0,

//             child:Container(
//                 height: 50.0,
//                 decoration: BoxDecoration(color:c,),
//                 child:Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: <Widget>[
//                     new Container(
//                       width:(screenSize.width-20)/2,
//                       child: Text("Add To Cart",textAlign: TextAlign.center,
//                           style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold)
//                       ),
//                     ),new Container(
//                       width:(screenSize.width-20)/2,
//                       child: Text("Buy Now",textAlign: TextAlign.center,
//                           style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold)
//                       ),
//                     )
//                   ],

//                 )
//             )
//         )
//     );

//   }
// }


class ProductPage extends StatefulWidget {

String itemName,itemImage,itemSubname,itemPrice, itemRating;
  ProductPage(this.itemName, this.itemImage, this.itemSubname, this.itemPrice,
      this.itemRating);

  @override
  _ProductPageState createState() => new _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  ScrollController scrollController;

  Widget _buildActions() {
    Widget profile = new GestureDetector(
      onTap: () => showProfile(),
      child: new Container(
        height: 30.0,
        width: 45.0,
        decoration: new BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey,
          image: new DecorationImage(
            image: new ExactAssetImage("assets/logo.png"),
            fit: BoxFit.cover,
          ),
          border: Border.all(color: Colors.black, width: 2.0),
        ),
      ),
    );

    double scale;
    if (scrollController.hasClients) {
      scale = scrollController.offset / 300;
      scale = scale * 2;
      if (scale > 1) {
        scale = 1.0;
      }
    } else {
      scale = 0.0;
    }

    return new Transform(
      transform: new Matrix4.identity()..scale(scale, scale),
      alignment: Alignment.center,
      child: profile,
    );
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    scrollController = new ScrollController();
    scrollController.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {

    var flexibleSpaceWidget = new SliverAppBar(
      expandedHeight: 200.0,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
          centerTitle: true,
          title: Text("Product Details",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
              )),
          background:  new Container(
                height: 200.0,
                decoration: new BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(widget.itemImage),
                      fit:BoxFit.contain,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(120.0),
                      bottomLeft: Radius.circular(120.0),
                    )
                )
            ),
          ),
      actions: <Widget>[
        new Padding(
          padding: EdgeInsets.all(5.0),
          child: _buildActions(),
        ),
      ],
    );

    return Scaffold(
      body: new DefaultTabController(
        length: 3,
        child: NestedScrollView(
          controller: scrollController,
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              flexibleSpaceWidget,
              SliverPersistentHeader(
                delegate: _SliverAppBarDelegate(
                  TabBar(
                    labelColor: Colors.black87,
                    unselectedLabelColor: Colors.black26,
                    tabs: [
                      Tab(
                        icon: Icon(Icons.account_box),
                        text: "Detail",
                      ),
                      Tab(icon: Icon(Icons.add_location), text: "Address"),
                      Tab(icon: Icon(Icons.monetization_on), text: "Earning"),
                    ],
                  ),
                ),
                pinned: true,
              ),
            ];
          },
          body: new TabBarView(
            children: <Widget>[
              new Center(
                child: new Text("AAAAAAAAAAAAAA"),
              )
            ],
          ),
        ),
      ),
    );
  }

  showProfile() {
    Navigator.pushNamed(context, '/profile');
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar _tabBar;

  _SliverAppBarDelegate(this._tabBar);

  @override
  double get minExtent => _tabBar.preferredSize.height;

  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}








