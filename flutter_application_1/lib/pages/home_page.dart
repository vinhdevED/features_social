import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff030317),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xff00A1FF),
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                
              },
              child: const Icon(CupertinoIcons.location_circle,
              color: Colors.white,
              size: 30,),
            ),
            Row(children: const[
              Icon(CupertinoIcons.map_fill,color: Colors.white,),
              Text('openweathermap.org',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17
              ),)
            ],),
            GestureDetector(
              child: const Icon(Icons.search_outlined,
              color: Colors.white,
              size: 30,
              ),
              onTap: () {
                
              },
            )
          ],
        ),
      ),
      body: ListView(
        children: [
          FutureBuilder(
            future: ,
            builder: (context, snapshot) {
              if(snapshot.hasData){
                return Column(
                  children: [
                    //view
                    //view
                  ],
                );
              }else {
                return const Center(
                  child: Text('City not found\n Please enter correct city',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                );
              }
            },)
        ],
      ),
    );
  }
}