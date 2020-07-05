import 'package:flutter/material.dart';
class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.brown.shade900,

          appBar: AppBar(
            leading: BackButton(
                color: Colors.brown.shade900,
              onPressed: (){
                Navigator.pop(context);
              },
            ),
            backgroundColor: Colors.brown.shade400,
          ),
          body: MyProfile(),
        ),
      );
    }

}
class MyProfile extends StatefulWidget {
  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: CircleAvatar(
                radius: 40.0,
                backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/0/07/Sushant_Singh_Rajput.jpg/330px-Sushant_Singh_Rajput.jpg'),
              ),
            ),
            Expanded(
              child: Text('Sushant Sing Rajput'),
            )

          ],
        ),
      ),
    );
  }
}



