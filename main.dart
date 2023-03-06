import "package:flutter/material.dart";
import 'feed_item.dart';

void main() => runApp(MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    ));

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Social App"),
      ),
      body: Column(children: [
        //Section 1. Stories
        Container(
          color: Colors.teal,
          height: 250,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              for (int i = 0; i < 5; i++) ...[
                SizedBox(width: 16),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.amber,
                  ),
                  height: 200,
                  width: 125,
                ),
              ]
            ]),
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                FeedItem(
                  name: "Kai Williams",
                  content:
                      " The whole secret of a successful life is to find out what is one’s destiny to do, and then do it. - Henry Ford",
                  icon:
                      "https://t4.ftcdn.net/jpg/03/07/33/81/240_F_307338115_ca0if1wY3FdmmgAqDsf7FKArM9o0TvWv.jpg",
                ),
                FeedItem(
                  name: "Steven Patton",
                  content:
                      " Money and success don't change people; they merely amplify what is already there.",
                  icon:
                      "https://t4.ftcdn.net/jpg/04/69/87/21/240_F_469872130_qDRygmKblSvPTBSsfUSm1EPMnxXZSv6W.jpg",
                ),
                FeedItem(
                  name: "Chrsitian Spence",
                  content:
                      " Money and success don't change people; they merely amplify what is already there.",
                  icon:
                      "https://t3.ftcdn.net/jpg/02/94/58/42/240_F_294584234_QOJKvTqeW6RfPA069XkEG3RcIlQ44xnK.jpg",
                ),
                FeedItem(
                  name: "Chrsitian Spence",
                  content:
                      " Money and success don't change people; they merely amplify what is already there.",
                  icon:
                      "https://t3.ftcdn.net/jpg/02/94/58/42/240_F_294584234_QOJKvTqeW6RfPA069XkEG3RcIlQ44xnK.jpg",
                ),
                FeedItem(
                  name: "Chrsitian Spence",
                  content:
                      " Money and success don't change people; they merely amplify what is already there.",
                  icon:
                      "https://t3.ftcdn.net/jpg/02/94/58/42/240_F_294584234_QOJKvTqeW6RfPA069XkEG3RcIlQ44xnK.jpg",
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
