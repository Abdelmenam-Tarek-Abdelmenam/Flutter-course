import 'package:flutter/material.dart';

class FaceBookClone extends StatelessWidget {
  FaceBookClone(this.email, this.number, {super.key});

  String email;
  int number;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 2,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          title: Text(
            "facebook $number",
            style: TextStyle(
                color: Colors.blue, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          actions: [
            CircleAvatar(
                backgroundColor: Colors.grey.withOpacity(0.2),
                radius: 18,
                foregroundColor: Colors.black,
                child: IconButton(onPressed: () {}, icon: Icon(Icons.search))),
            SizedBox(width: 10),
            CircleAvatar(
              backgroundColor: Colors.grey.withOpacity(0.2),
              radius: 18,
              foregroundColor: Colors.black,
              child: IconButton(
                  iconSize: 20, onPressed: () {}, icon: Icon(Icons.messenger)),
            ),
            SizedBox(width: 10),
          ],
          bottom: TabBar(
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.black,
            labelPadding: EdgeInsets.all(10),
            tabs: const [
              Icon(Icons.home),
              Icon(Icons.video_collection_outlined),
              Icon(Icons.group),
              Icon(Icons.notifications),
              Icon(Icons.menu)
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 180,
                      child: ListView.separated(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          separatorBuilder: (context, index) {
                            return SizedBox(width: 10);
                          },
                          itemBuilder: storyBuilder),
                    ),
                  ),
                  Container(
                    height: 10,
                    color: Colors.grey.withOpacity(0.2),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        ClipOval(
                          child: Image.network(
                            "https://pps.whatsapp.net/v/t61.24694-24/215188071_720380099419035_2715325496907346486_n.jpg?ccb=11-4&oh=01_AdSN3Y-wcCVY01v7hrA1JyiQd936HyuboGE87vxSJnevUw&oe=63AB14B5",
                            width: 40,
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                            child: Container(
                                height: 35,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey.withOpacity(0.2),
                                ),
                                child: Center(child: Text("Add a post")))),
                        SizedBox(width: 5),
                        CircleAvatar(
                            backgroundColor: Colors.grey.withOpacity(0.2),
                            child: IconButton(
                                color: Colors.black,
                                onPressed: () {},
                                icon: Icon(Icons.image)))
                      ],
                    ),
                  ),
                  Container(
                    height: 10,
                    color: Colors.grey.withOpacity(0.2),
                  ),
                  ListView.separated(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: postBuilder,
                      separatorBuilder: (context, index) {
                        return Container(
                          height: 10,
                          color: Colors.grey.withOpacity(0.2),
                        );
                      },
                      itemCount: 100)
                ],
              ),
            ),
            Center(child: Text(email)),
            Text("Group"),
            Text("notification"),
            Text("Menu"),
          ],
        ),
      ),
    );
  }

  Widget postBuilder(BuildContext context, int index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  ClipOval(
                    child: Image.network(
                      "https://pps.whatsapp.net/v/t61.24694-24/215188071_720380099419035_2715325496907346486_n.jpg?ccb=11-4&oh=01_AdSN3Y-wcCVY01v7hrA1JyiQd936HyuboGE87vxSJnevUw&oe=63AB14B5",
                      width: 35,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Menam Elbahy",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: const [
                          Text(
                            "Just now",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w200,
                                fontSize: 12),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.group,
                            size: 15,
                            color: Colors.black45,
                          )
                        ],
                      )
                    ],
                  )),
                  SizedBox(width: 5),
                  IconButton(
                      color: Colors.black,
                      onPressed: () {},
                      icon: Icon(Icons.more_horiz))
                ],
              ),
              Text("Look My new dog .."),
            ],
          ),
        ),
        SizedBox(height: 10),
        Image.network(
            "https://ggsc.s3.amazonaws.com/images/uploads/The_Science-Backed_Benefits_of_Being_a_Dog_Owner.jpg"),
        SizedBox(
          height: 5,
        ),
      ],
    );
  }

  Widget storyBuilder(BuildContext context, int index) {
    return Container(
      width: 80,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: NetworkImage(
                "https://ggsc.s3.amazonaws.com/images/uploads/The_Science-Backed_Benefits_of_Being_a_Dog_Owner.jpg"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5), BlendMode.darken),
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 17,
            child: ClipOval(
                child: Image.network(
              "https://pps.whatsapp.net/v/t61.24694-24/215188071_720380099419035_2715325496907346486_n.jpg?ccb=11-4&oh=01_AdSN3Y-wcCVY01v7hrA1JyiQd936HyuboGE87vxSJnevUw&oe=63AB14B5",
              width: 30,
            )),
          ),
          Text(
            "Mon3m Elbahy",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12),
          )
        ],
      ),
    );
  }
}
