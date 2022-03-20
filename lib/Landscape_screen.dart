import 'package:flutter/material.dart';

class LandscapeScreen extends StatelessWidget {
  const LandscapeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
       return orientation == Orientation.portrait ? SecondState() : ThreeState();
      });
  }

}

class SecondState extends StatelessWidget {
  const SecondState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('SECOND ASIGNMENTS'),
      ),
      body: Container(color: Colors.red,),

      drawer: buildDrawer(),
    );
  }

  Widget buildDrawer() =>Drawer(
    backgroundColor: Colors.white.withOpacity(0.7),
    child: ListView(
      padding: EdgeInsets.zero,
      children: const <Widget>[
        SizedBox(
          height: 140.0,
        ),
        ListTile(
          title: Text('WISAMIMADABY.S',style: TextStyle(color: Colors.black,fontSize: 20),),
        ),
        ListTile(
          title: Text('WISAMIMADABY.S',style: TextStyle(color: Colors.black,fontSize: 20),),
        ),
        ListTile(
          title: Text('WISAMIMADABY.S',style: TextStyle(color: Colors.black,fontSize: 20),),
        ),
        ListTile(
          title: Text('WISAMIMADABY.S',style: TextStyle(color: Colors.black,fontSize: 20),),
        )
      ],
    ),
  );
}

class ThreeState extends StatelessWidget {
  const ThreeState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Align(
            alignment: AlignmentDirectional.topStart,
            child: Text('SECOND ASIGNMENTS',)),
      ),
      body: Container(
        color: Colors.red,
        child: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width /2,
              color: Colors.white,
              child: Column(
                children: const [
                  SizedBox(
                    height: 50.0,
                  ),
                  ListTile(
                    title: Text('WISAMIMADABY.S',style: TextStyle(color: Colors.black,fontSize: 20),),
                  ),
                  ListTile(
                    title: Text('WISAMIMADABY.S',style: TextStyle(color: Colors.black,fontSize: 20),),
                  ),
                  ListTile(
                    title: Text('WISAMIMADABY.S',style: TextStyle(color: Colors.black,fontSize: 20),),
                  ),
                  ListTile(
                    title: Text('WISAMIMADABY.S',style: TextStyle(color: Colors.black,fontSize: 20),),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}