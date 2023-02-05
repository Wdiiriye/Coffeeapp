import 'package:flutter/material.dart';
class cofeeTitle extends StatefulWidget {
  const cofeeTitle({super.key});

  @override
  State<cofeeTitle> createState() => _cofeeTitleState();
}
class _cofeeTitleState extends State<cofeeTitle> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0,bottom: 25),
      child: Container(
        padding: const EdgeInsets.all(12),
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color.fromARGB(137, 158, 151, 151),
          
        ),
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
       ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset('images/3.jpg',
        width: 80,
        height: 100,
         fit: BoxFit.cover,
         
         
        ),

       
      

       ),
       Padding(
         padding: const EdgeInsets.symmetric(vertical: 12.0,horizontal: 8),
         child: Column(
           children: [
             Text('Cappucino',style: TextStyle(fontSize: 20),
             ),
              SizedBox(
        height: 4,
       ),
       Text('with Oat Milk',style: TextStyle(color: Colors.grey[700])
       ,)
           ],
         ),
       ),
       Padding(
         padding: const EdgeInsets.symmetric(horizontal: 10.0),
         child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            
            Text('\$4.00'),
            Container(
              decoration: BoxDecoration(color: Colors.orange,
              borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(Icons.add))
          ],
         ),
       )
      
       
       
         ],
         ),
         
      
       
          
     ),
      );


    
  }
}

