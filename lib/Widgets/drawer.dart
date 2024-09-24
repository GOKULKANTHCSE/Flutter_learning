import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Theme.of(context).secondaryHeaderColor,
          child: ListView(
            children: [
              DrawerHeader(
                child: Container(
                  // color: Colors.white30,
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                            "https://in.images.search.yahoo.com/images/view;_ylt=Awrx.YgN1OxmzS4tGF.9HAx.;_ylu=c2VjA3NyBHNsawNpbWcEb2lkAzc5NWM3MjFkYmI2YmQ0NGMyNDM1NTE0MzdjYjA2YjU2BGdwb3MDMTYEaXQDYmluZw--?back=https%3A%2F%2Fin.images.search.yahoo.com%2Fsearch%2Fimages%3Fp%3Dkazuha%26ei%3DUTF-8%26type%3DE210IN885G0%26fr%3Dmcafee%26fr2%3Dp%253As%252Cv%253Ai%252Cm%253Asb-top%26tab%3Dorganic%26ri%3D16&w=1633&h=1527&imgurl=static.zerochan.net%2FKaedehara.Kazuha.full.3998565.jpg&rurl=https%3A%2F%2Fwww.zerochan.net%2F3998565&size=1076.0KB&p=kazuha&oid=795c721dbb6bd44c243551437cb06b56&fr2=p%3As%2Cv%3Ai%2Cm%3Asb-top&fr=mcafee&tt=Kaedehara+Kazuha+-+Genshin+Impact+-+Image+by+Pixiv+Id+1272405+%233998565+...&b=0&ni=160&no=16&ts=&tab=organic&sigr=b6G_HisNZweF&sigb=tcGsHnAToczp&sigi=v7ddNR7pBxzE&sigt=pEpA5d8EFop8&.crumb=cETqQNxbwlc&fr=mcafee&fr2=p%3As%2Cv%3Ai%2Cm%3Asb-top&type=E210IN885G0"),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Kazuha',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          Text('kazuha@gmail.com')
                        ],
                      )
                    ],
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.folder),
                title: Text('My Folder'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.contact_phone),
                title: Text('Contact'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.share),
                title: Text('Sharing'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.delete),
                title: Text('Trash'),
              ),
              Divider(),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Text('Drawer'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        child: Center(
          child: Text('Love You 3000 '),
        ),
      ),
    );
  }
}
