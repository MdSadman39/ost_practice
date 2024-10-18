
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(HelloWorldApp());
}
class HelloWorldApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello World App',
      home: Home(),
    );
  }
}
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 70,),
            ElevatedButton(
              onPressed: () { 
                showModalBottomSheet(
                 // barrierColor: Colors.amber,
                  //backgroundColor: Colors.brown,
                    context: context,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)
                    ),
                    isScrollControlled: false,
                   // useSafeArea: true,
                    enableDrag: false,
                    builder: (ctx){
                  return Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Title',style: TextStyle(fontSize: 24),),
                          ],
                        ),
                      ),
                      Divider(
                        height: 16,
                        thickness: 2,
                      ),
                      Text('Sample'),
                      Row(
                        children: [
                          ElevatedButton(onPressed: () {  },
                          child: Text('Cancel'),),
                          ElevatedButton(onPressed: () {  },
                            child: Text('Save'),),
                        ],
                      ),
                    ],
                  );
                });
              },
              child: Text('Show Dialog'),
            ),
            // textfield
            SizedBox(height: 24,),
            Padding(
              padding: EdgeInsets.all(16),
              child: TextField(
                maxLength: 50,
                onChanged:(String?value){
                  print(value);
                },
                //controller: TextEditingController(),
                maxLines: 1,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: 'Phone',
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.w400 ,
                      color: Colors.grey.shade400,
                  ),
                  labelText: 'Phone Number',
                  prefixIcon: Icon(Icons.phone),
                  suffixIcon: Icon(Icons.person),
                  fillColor: Colors.white24,
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green,width: 2),
                  )
                ),


              ),
            ),

          ],
        ),
      ),
    );
  }
}

