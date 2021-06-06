import 'package:flutter/material.dart';
import 'dart:math';
class Dice extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DiceState();
  }
}
class _DiceState extends State<Dice>{
  int num=0;
  // void initState(){
  //   super.initState();
  //   num=1;
  // }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu,color: Colors.white,),
          padding: EdgeInsets.all(8.0),
          onPressed: (){},
        ),
        title: Text("Gaming",style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,fontSize: 25.0),
        ),
        centerTitle: true,backgroundColor: Colors.green,
      ),
      body: Center(child:Container(
          height: 300,
          width: 300,
          color: Colors.lightGreen,
          child:Column(
            children: [
              Assetimage(num),
              Text("The number rolled is:$num",style: TextStyle(color: Colors.white,
                  fontSize: 20.0,fontWeight: FontWeight.bold),),
              Padding(child:ElevatedButton(onPressed: () {
                setState(() {
                  RandomNumber();
                });
              },
                  child: Text("Roll")
              ),
                  padding: EdgeInsets.only(top: 20)
              ),
            ],
          )
      ),
      ),
    );
  }
  Widget Assetimage(num){
    switch (num) {       //need to pass parameter
      case 1:
        AssetImage assetImage = AssetImage("images/1one.png");
        Image img = Image(image: assetImage, width: 100, height: 100,);
        return Container(
          margin: EdgeInsets.only(bottom: 20.0, top: 40.0),
          child: img,);
        break;
      case 2:
        AssetImage assetImage = AssetImage("images/2two.png");
        Image img = Image(image: assetImage, width: 100, height: 100,);
        return Container(
          margin: EdgeInsets.only(bottom: 20.0, top: 40.0),
          child: img,);

        break;
      case 3:
        AssetImage assetImage = AssetImage("images/3three.png");
        Image img = Image(image: assetImage, width: 100, height: 100,);
        return Container(
          margin: EdgeInsets.only(bottom: 20.0, top: 40.0),
          child: img,);
        break;
      case 4:
        AssetImage assetImage = AssetImage("images/4four.png");
        Image img = Image(image: assetImage, width: 100, height: 100,);
        return Container(
          margin: EdgeInsets.only(bottom: 20.0, top: 40.0),
          child: img,);
        break;
      case 5:
        AssetImage assetImage = AssetImage("images/5five.png");
        Image img = Image(image: assetImage, width: 100, height: 100,);
        return Container(
          margin: EdgeInsets.only(bottom: 20.0, top: 40.0),
          child: img,);
        break;
      case 6:
        AssetImage assetImage = AssetImage("images/6six.png");
        Image img = Image(image: assetImage, width: 100, height: 100,);
        return Container(
          margin: EdgeInsets.only(bottom: 20.0, top: 40.0),
          child: img,);
        break;
      default:
        AssetImage assetImage = AssetImage("images/dice.png");
        Image img = Image(image: assetImage, width: 100, height: 100,);
        return Container(
          margin: EdgeInsets.only(bottom: 20.0, top: 40.0),
          child: img,);
    }

  }
  int RandomNumber(){
    Random random=Random();
    int randomNumber=random.nextInt(6)+1;
    num=randomNumber;
    return num;
  }

}