import 'package:flutter/material.dart';
class productListPage extends StatefulWidget{
  @override
  State createState() => new ProductList();
}
Color cd = const Color.fromARGB(0xAA, 0x00, 0x00, 0x00);
Color c = const Color.fromARGB(0xAA, 0x00, 0x00, 0x00);

class ProductList extends State<productListPage>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: Text("Mens Collection"),
          elevation: 0.0,
          backgroundColor: cd,
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back),
            color: Colors.black,),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {},
              color: Colors.black,
            )
          ],
        ),

        body: ListView(
            primary: true,
            shrinkWrap: true,
            children:<Widget>
            [
              new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:<Widget>
                  [
                    Padding(padding:const EdgeInsets.all(4.0),
                      child: ChoiceChip(label: new Text("Graphic Tees"),selected:false),),

                    Padding(padding:const EdgeInsets.all(4.0),
                      child: ChoiceChip(label: new Text("DeminJeans"), selected:false),),

                    Padding(padding:const EdgeInsets.all(4.0),
                      child: ChoiceChip(label: new Text("Polo Shirt"), selected:false),)
                  ]
              ),
              new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:<Widget>
                  [
                    testCard("London Tshirt ",499,600,true,'https://images.unsplash.com/photo-1491592459486-f04f965504d3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
                    testCard("London Tshirt ",499,600,false,'https://images.unsplash.com/photo-1532998401395-ceecc5c20059?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),

                  ]
              ),
              new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:<Widget>
                  [

                    testCard("London Tshirt ",499,600,false,'https://images.unsplash.com/photo-1485218126466-34e6392ec754?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
                    testCard("London Tshirt ",499,600,true,'https://images.unsplash.com/photo-1523049989481-ae3939b52b9a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),

                  ]
              ),

            ]

        )
    );
  }
  Widget singlecard(String Productname, int discprice,int saleprice,bool isfavourite,String Imagepath){
    return new Card(
      child: Container(
          height:260,
          width:150.0,
          margin:EdgeInsets.all(10),
          child:Column(
            children: <Widget>[
              new Container(
                  height:150,
                  width:150,
                  alignment: Alignment.centerLeft,

                  decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage(Imagepath)),

                  )
              ),
              new Container (

                  alignment: Alignment.centerLeft,
                  child : Text(Productname,textAlign: TextAlign.start)
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Rs. ${discprice}",style: TextStyle(color:Colors.black, fontSize: 13.0,fontWeight: FontWeight.w700)),
                  SizedBox(width:5),
                  Text("Rs .${saleprice}",style: TextStyle(color:Colors.red, fontSize: 10.0,fontStyle: FontStyle.italic))
                ],
              ),
              new Container(
                alignment: Alignment.centerLeft,
                child: Text("17% off",style: TextStyle(color:Colors.green, fontSize: 10.0),),
              ),
              new Row(

                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  IconButton(
                    onPressed: (){},
                    icon: isfavourite ? Icon(Icons.favorite_border, color:Colors.red, size: 15, ) :Icon(Icons.favorite_border, color:Colors.grey, size: 15, )  ,

                  ),
                  SizedBox(width:35),

                  IconButton(
                      onPressed: (){},
                      icon:Icon(Icons.share,color:Colors.grey,size: 15, )
                  )
                ],
              )

            ],
          )
      ),
      elevation: 3.0,
    );
  }
  Widget testCard(String Productname, int discprice,int saleprice,bool isfavourite,String Imagepath){
    return new Card(
      child:Container(
        height: 250,
        width: 180,
        child: new Stack(
          children: <Widget>[
          
          new Container(
                  margin: const EdgeInsets.only(left:10.0,top:15,bottom:15),
                  height:180,
                  width:160,
                  child:  Image.network(Imagepath,fit:BoxFit.cover),
          ),
          new Positioned(
            top: 8,
            right: 7,
            child: IconButton(
              onPressed: (){},
            icon: isfavourite ? Icon(Icons.favorite, color:Colors.red, size: 30, ) :Icon(Icons.favorite_border, color:Colors.red, size: 30, )  ,
            ),
        ),
          new Positioned (
                  left: 10,
                  bottom: 6,
                  child : Column(children: <Widget>[
                  new Text(Productname,textAlign: TextAlign.start),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Rs. ${discprice}",style: TextStyle(color:Colors.black, fontSize: 16.0,fontWeight: FontWeight.w700)),
                      SizedBox(width:5),
                      Text("Rs .${saleprice}",style: TextStyle(color:Colors.red, fontSize: 13.0,fontStyle: FontStyle.italic)),
                    ],
                  ),
                    new Text("17% off",textAlign: TextAlign.start,style: TextStyle(color:Colors.green, fontSize: 13.0),),
 
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,) 
              ),
              
      ],
      )
    )
  );
    
  }
}
