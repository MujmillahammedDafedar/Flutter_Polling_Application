import 'package:flutter/material.dart';
class CreatePoll extends StatefulWidget {
  @override
  _CreatePollState createState() => _CreatePollState();
}

class _CreatePollState extends State<CreatePoll> {
  @override
  Map<String, String> _formdata = {};
  var _myPets = List<Widget>();
  int _index = 1;

  void _add() {
    int keyValue = _index;
    _myPets = List.from(_myPets)
      ..add(Column(
        key: Key("${keyValue}"),
        children: <Widget>[
          ListTile(
            title: TextField(
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  icon: Icon(Icons.cancel,
                  color: Colors.brown.shade900,
                  size: 35.0,
                  ),
                ),
                  border: InputBorder.none,
                  hintText: 'Enter a search term'
              ),
              onChanged: (val) => _formdata['pet${keyValue - 1}'] = val,
            ),
          ),
          ListTile(
            leading: Text('Name of Pet $_index : '),
            title: TextField(
              onChanged: (val) {
                _formdata['name${keyValue - 1}'] = val;
              },
            ),
          ),
        ],
      ));

    setState(() => ++_index);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _add();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade900,
      appBar: AppBar(
        backgroundColor: Colors.brown.shade400,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Card(
          elevation: 10.0,
          color: Colors.brown,
          child: ListView(
            children: _myPets,
          ),
        ),
      ),
    );
  }
}


