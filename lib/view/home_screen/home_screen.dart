
import 'package:asset_management/view/asset_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Asset Management"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Asset Name",
                fillColor: Colors.lightBlue.withOpacity(.5)
              ),
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Description",
                fillColor: Colors.lightBlue.withOpacity(.5)
              ),
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "SerialNumber",
                fillColor: Colors.lightBlue.withOpacity(.5)
              ),
            ),
          ),
          SizedBox(height: 10,),
          TextButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => AssetScreen(),));
          }, 
          child: Text("Add"))
        ],
      ),
    );
  }
}