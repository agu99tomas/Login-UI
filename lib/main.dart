import 'package:flutter/material.dart';


void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  )
);





class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: homePageBody(),
      ),
    );
  }

  Widget homePageBody(){
    return Container(
      child: Column(
        children: <Widget>[
          background(),
          form(),
          
          

        ],
      ),
    );
  }

  Widget background(){

    return  Container(
      height: 400,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background.png'),
          fit: BoxFit.fill,
          )
        ),
        child: backgroundDecorations(),
      );
    
  }

  Stack backgroundDecorations(){
    return Stack(
      children: <Widget>[

        Positioned(
          width: 120,
          height: 200,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/images/light-1.png')),
            ),
          )
        ),

        Positioned(
          width: 350,
          height: 150,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/images/light-2.png')),
            ),
          )
        ),

        Positioned(
          width: 600,
          height: 230,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/images/clock.png')),
            ),
          )
        ),

        Positioned(
          child: Container(
            margin: EdgeInsets.only(top:50),
            child: Center(child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 40 , fontWeight: FontWeight.bold)),),
          )
        ),

        

      

      ],
    );
  }

  Widget form(){

    return Padding(
      padding: EdgeInsets.all(35.0),
      child: Column(
        children: [

          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(143, 148, 251, .2),
                  blurRadius: 20.0,
                  offset: Offset(0,10),
                ),
              ]
            ),
            child: fieldsForm(),
          ),

          SizedBox(height: 10,),

          Container(
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(143, 148, 251, 1),
                  Color.fromRGBO(143, 148, 251, .6),
                ]
              )
            ),
            child: Center(child:Text("Login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
          ),

          SizedBox(height: 5,),

          Text("Forgot password?", style: TextStyle(color: Color.fromRGBO(143, 148, 251, 1), fontWeight: FontWeight.bold)),
          

          
        ],
      ),
    );

  }

  Widget fieldsForm(){

    return Column(

      children: <Widget>[

          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border(bottom:BorderSide(color: Colors.grey[100])),
            ),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Email or Phone number",
                hintStyle: TextStyle(color:Colors.grey[400]),
              ),
              
            ),
          ),

          Container(
            padding: EdgeInsets.all(8),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Password",
                hintStyle: TextStyle(color:Colors.grey[400]),
              ),
              
            ),
          ),
      ],
    );
  }


}




   