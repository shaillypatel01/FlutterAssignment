import 'package:flutter/material.dart';

class question11 extends StatefulWidget {
  const question11({super.key});

  @override
  State<question11> createState() => _question11State();
}

class _question11State extends State<question11> {
  var selectedIndex = 0;

  var itemList = <MenuItem>[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    itemList.add(MenuItem("Gallery", Color(0xFFB2A4FF), GalleryScreen()));
    itemList.add(MenuItem("Audio", Color(0xFFB9F3E4), AudioSreen()));
    itemList.add(MenuItem("Video",Color(0xFFFFA1A1), VideoScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: itemList[selectedIndex].color,
          title: Text(itemList[selectedIndex].title),
        ),
        body: itemList[selectedIndex].widget,
        bottomNavigationBar:  BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.collections_bookmark),
                label: "Gallery",
                backgroundColor: itemList[0].color
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.mic),
                label: "Audio",
                backgroundColor: itemList[1].color
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.play_circle),
                label: "Video",
                backgroundColor: itemList[2].color
            ),
          ],
        ));
  }

}

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
class AudioSreen extends StatelessWidget {
  const AudioSreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class VideoScreen extends StatelessWidget {
  const VideoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}




class MenuItem {
  String title;
  Color color;
  Widget widget;

  MenuItem(this.title, this.color, this.widget);


}