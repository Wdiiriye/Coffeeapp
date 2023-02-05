import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/util/cofee_titel.dart';

import '../util/coffee_type.dart';
//import 'package:flutter_application_2/util/coffee_type.dart';

//import '../util/cofee_type.dart';
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _homepageState();
}

class _homepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black45,
      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Color.fromARGB(255, 233, 150, 120),
          color: Colors.white,
          animationDuration: Duration(milliseconds: 200),
       items: [
       Icon(Icons.home,
       color: Colors.green,
       ),
       Icon(Icons.favorite,
        color: Colors.blue,
        ),
       Icon(Icons.settings,
        color: Colors.blueGrey,
       ),
     ]),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
        actions: [
          //child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          //children: [
       ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Image.asset('images/abdi.jpg'),
      

       ),
       
       
         ],
         ),
          
            
            //],   
      //),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Text(
            'FIND YOUR BEST COFEE FOR YOU',
            style: TextStyle(
              fontSize: 40,
            ),
          ),
        ),
        SizedBox(height: 25),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: TextField(
            decoration: InputDecoration(
              prefix: const Icon(Icons.search),
              hintText:  'I NEED A COFFEE..',
              hintStyle: TextStyle(fontWeight: FontWeight.bold),
               focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color.fromARGB(255, 196, 189, 189)),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color.fromARGB(255, 153, 150, 150)),
                ),
              ),
            ),
        ),
        const SizedBox(height: 25),
        Container(
          height: 50,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20.0),
               child: Text( 'cappucino',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,
               color: Colors.orange),),
             ),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20.0),
               child: Text( 'Espresso',style: TextStyle(fontSize: 18,
               fontWeight: FontWeight.bold,
               color: Colors.orange),),
             ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text( 'Elate',style: TextStyle(fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.orange),
                ),
              ),
              SizedBox(
                height: 3,
              )

            ],
          ),
        ),
        Expanded(child: ListView(
          scrollDirection: Axis.horizontal,
          children: const [
            cofeeTitle(),
             cofeeTitle(),
              cofeeTitle(),
               cofeeTitle(),
          
        ],
        ),
        ),
        
       
      ]),
    );
    
  }
  
 
}
