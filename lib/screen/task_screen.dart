// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //widgets men lfluuter
      floatingActionButtonLocation: FloatingActionButtonLocation
          .centerFloat, //les attribue eli beh nchofha  // hatinh fel wost lktiba
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        backgroundColor: Colors.indigo[400],
        child: Icon(Icons.add),
      ), //le + el loutanyaa
      backgroundColor: Colors.teal[400], //bdltou a5dher
      body: Container(
        padding:
            const EdgeInsets.only(top: 60, left: 20, right: 20, bottom: 80),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            children: [
              Icon(
                Icons.playlist_add_check,
                size: 40,
                color: Colors.white,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                'toDayDo',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          Text(
            '3 Tasks',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
              child: Container(
            height: 300,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: ListView(
              children: [
                Card(
                    child: ListTile(
                  title: Text('first task'),
                  trailing: Checkbox(
                    value: false,
                    onChanged: null,
                  ),
                )),
                Card(
                  child: ListTile(
                    leading: Image.asset(
                      "assets/images/logo.png",
                    ),
                    title: Text('go shopping'),
                    subtitle: Text(
                        'a day in romdhan i need to go out and make some food and buy someone clothes to make the day pass fast '),
                    trailing: Icon(Icons.more_vert),
                    isThreeLine: true,
                  ),
                ),
                Card(
                    child: ListTile(
                  title: Text('second task'),
                  trailing: Checkbox(
                    value: true,
                    onChanged: null,
                  ),
                )),
                Card(
                  child: ListTile(
                    leading: Image.asset(
                      "assets/images/logo.png",
                    ),
                    title: Text('playing video game'),
                    subtitle: Text('a long day i need a rest from flutter.'),
                    dense: true,
                    trailing: Icon(Icons.more_vert),
                    isThreeLine: true,
                  ),
                ),
                Card(
                    child: ListTile(
                  title: Text('third task '),
                  trailing: Checkbox(
                    value: false,
                    onChanged: null,
                  ),
                )),
                Card(
                  child: ListTile(
                    leading: Image.asset(
                      "assets/images/logo.png",
                    ),
                    title: Text('working out'),
                    subtitle: Text('a good day for workout but im so tired.'),
                    trailing: Icon(Icons.more_vert),
                    selected: true,
                    isThreeLine: true,
                  ),
                ),
              ],
            ),
          ))
        ]),
      ),
    );
  }
}
