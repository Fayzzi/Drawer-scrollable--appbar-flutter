import 'package:flutter/material.dart';

int counter = 0;
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          backgroundColor: Colors.grey[400],
          title: const Text('Drawer and floating action button'),
          centerTitle: true,
        ),
        backgroundColor: Colors.grey,
        drawer: Drawer(
          // width: double.infinity,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(topRight: Radius.circular(25))),
          backgroundColor: Colors.grey,
          child: ListView(
            //drawer ko list k view ma lane k liye listView use hota ha
            children: [
              SingleChildScrollView(
                child: Container(
                  //our drawer is closed in a container so we can change our drawer size and hight
                  width: double.infinity, //jitni screen pa jaga hogi
                  height:
                      100, //agr hum ye width=doubleinfinity wala code directly drawer ma likh den to hamari puri screen pa drawer ayega
                  color: Colors.transparent,
                  child: const DrawerHeader(
                    child: CircleAvatar(
                      radius:
                          60, //hamare container k size se zyada radius h is liye ye ignore hoga
                      backgroundColor: Colors.grey,
                      backgroundImage: AssetImage('images/dix.png')
                    ),
                  ),
                ),
              ),
              const Center(
                child: SizedBox(
                  height: 20,
                  child: Text(
                    'fa328874@gmail.com',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ),
              ),
              const SizedBox(
                height: 19,
              ),
              const ListTile(
                leading: Icon(
                  Icons.person,
                  color: Colors.black54,
                ),
                title: Text(
                  "Faizan Ali",
                  style: TextStyle(fontSize: 17, color: Colors.black54),
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.call,
                  color: Colors.black54,
                ),
                title: Text(
                  "03444624139",
                  style: TextStyle(fontSize: 17, color: Colors.black54),
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.black54,
                ),
                title: Text(
                  "Fa328874@gmail.com",
                  style: TextStyle(fontSize: 17, color: Colors.black54),
                ),
              ),
            ],
          ),
        ),
        body: Center(
          child: Text('button pressed ' + counter.toString() + ' times'),
        ),
        floatingActionButton: FloatingActionButton(
          elevation: 50,
          backgroundColor: Colors.white54,
          onPressed: () {
            counter++;
          },
          child: const Icon(Icons.add,color: Colors.black,),
        ),
      ),
    ),
  );
}
