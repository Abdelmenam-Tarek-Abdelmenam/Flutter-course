import 'package:flutter/material.dart';

import 'user_class.dart';

class WhatsAppClone extends StatelessWidget {
  WhatsAppClone({Key? key}) : super(key: key);

  List<User> users = [
    User(
        name: "Mon3m",
        img:
            "https://pps.whatsapp.net/v/t61.24694-24/215188071_720380099419035_2715325496907346486_n.jpg?ccb=11-4&oh=01_AdS8oNw6mJCHgz5EUcos7UtfsRyi4CLVey5f3yleqEMapA&oe=63A72035",
        lastMessage: "Hello , How Are You ... ?",
        date: "5:49 PM"),
    User(
        name: "Iron Man",
        img:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqsdvRSdfR4LFpJWWc6KEUSVCDE-yiTnvPOA&usqp=CAU",
        lastMessage: "I need you in mission",
        date: "7:20 PM"),
    User(
        name: "Captain America",
        img:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyNacizcJ45QQaxJGcPHLaNBkO1pvdJeH6jQ&usqp=CAU",
        lastMessage: "I have a problem",
        date: "7:20 PM"),
    User(
        name: "Mon3m",
        img:
            "https://pps.whatsapp.net/v/t61.24694-24/215188071_720380099419035_2715325496907346486_n.jpg?ccb=11-4&oh=01_AdS8oNw6mJCHgz5EUcos7UtfsRyi4CLVey5f3yleqEMapA&oe=63A72035",
        lastMessage: "Hello , How Are You ... ?",
        date: "5:49 PM"),
    User(
        name: "Iron Man",
        img:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqsdvRSdfR4LFpJWWc6KEUSVCDE-yiTnvPOA&usqp=CAU",
        lastMessage: "I need you in mission",
        date: "7:20 PM"),
    User(
        name: "Captain America",
        img:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyNacizcJ45QQaxJGcPHLaNBkO1pvdJeH6jQ&usqp=CAU",
        lastMessage: "I have a problem",
        date: "7:20 PM"),
    User(
        name: "Mon3m",
        img:
            "https://pps.whatsapp.net/v/t61.24694-24/215188071_720380099419035_2715325496907346486_n.jpg?ccb=11-4&oh=01_AdS8oNw6mJCHgz5EUcos7UtfsRyi4CLVey5f3yleqEMapA&oe=63A72035",
        lastMessage: "Hello , How Are You ... ?",
        date: "5:49 PM"),
    User(
        name: "Iron Man",
        img:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqsdvRSdfR4LFpJWWc6KEUSVCDE-yiTnvPOA&usqp=CAU",
        lastMessage: "I need you in mission",
        date: "7:20 PM"),
    User(
        name: "Captain America",
        img:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyNacizcJ45QQaxJGcPHLaNBkO1pvdJeH6jQ&usqp=CAU",
        lastMessage: "I have a problem",
        date: "7:20 PM"),
    User(
        name: "Mon3m",
        img:
            "https://pps.whatsapp.net/v/t61.24694-24/215188071_720380099419035_2715325496907346486_n.jpg?ccb=11-4&oh=01_AdS8oNw6mJCHgz5EUcos7UtfsRyi4CLVey5f3yleqEMapA&oe=63A72035",
        lastMessage: "Hello , How Are You ... ?",
        date: "5:49 PM"),
    User(
        name: "Iron Man",
        img:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqsdvRSdfR4LFpJWWc6KEUSVCDE-yiTnvPOA&usqp=CAU",
        lastMessage: "I need you in mission",
        date: "7:20 PM"),
    User(
        name: "Captain America",
        img:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyNacizcJ45QQaxJGcPHLaNBkO1pvdJeH6jQ&usqp=CAU",
        lastMessage: "I have a problem",
        date: "7:20 PM"),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xFF008069),
          title: Text("Whatsapp"),
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Icon(Icons.group),
              Text("Chats"),
              Text("Status"),
              Text("Calls")
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.camera_alt_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert_sharp),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xFF008069),
          child: Icon(Icons.chat),
          onPressed: () {},
        ),
        body: TabBarView(
          children: [
            Text("Groupe"),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: users.length,
                  itemBuilder: messageItem,
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    leading: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        ClipOval(
                          child: Image.network(
                              "https://pps.whatsapp.net/v/t61.24694-24/215188071_720380099419035_2715325496907346486_n.jpg?ccb=11-4&oh=01_AdS8oNw6mJCHgz5EUcos7UtfsRyi4CLVey5f3yleqEMapA&oe=63A72035"),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 12,
                          child: CircleAvatar(
                              backgroundColor: Color(0xFF008069),
                              radius: 10,
                              child: Icon(
                                Icons.add,
                                size: 18,
                              )),
                        )
                      ],
                    ),
                    title: Text("My Status"),
                    subtitle: Text("Tab to add status update"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      "Recent updates",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      // backgroundColor: Colors.grey,
                      radius: 25,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 23,
                        child: ClipOval(
                          child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqsdvRSdfR4LFpJWWc6KEUSVCDE-yiTnvPOA&usqp=CAU",
                            width: 40,
                            height: 40,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    title: Text("Iron Man"),
                    subtitle: Text("57 minutes"),
                  )
                ],
              ),
            ),
            Text("Calls")
          ],
        ),
      ),
    );
  }

  Widget messageItem(BuildContext context, int index) {
    return ListTile(
      leading: ClipOval(
        child: Image.network(
          users[index].img,
          width: 50,
          height: 50,
          fit: BoxFit.cover,
        ),
      ),
      title: Text(
        users[index].name,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
      subtitle: Text(users[index].lastMessage),
      trailing: Text(users[index].date),
    );
  }
}
