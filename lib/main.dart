import 'package:flutter/material.dart';
import 'package:youtube_app/video_data.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  final items = List<String>.generate(10000, (i) => 'Item $i');


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          leading: Icon(Icons.videocam),
          title: const Text(
              'ポケモン大学',
          ),
          actions: <Widget>[
            SizedBox(
              width: 50,
              child: FlatButton(
                onPressed: () {
                  //todo
                },
                child: Icon(Icons.search),
              ),
            ),
            SizedBox(
              width: 50,
              child: FlatButton(
                onPressed: () {
                  //todo
                },
                child: Icon(Icons.more_vert),
              ),
            ),
          ],
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children:<Widget>[
                    SizedBox(
                      width: 80,
                      height: 80,
                      child: Image.network('https://yt3.ggpht.com/ytc/AKedOLR1xYfsnGKSHwAnw9wgbMbP-sLQumES0TpoPqCSdA=s176-c-k-c0x00ffffff-no-rj'),
                    ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: <Widget>[
                      const Text(
                        'ポケモン大学',
                      ),
                      FlatButton(
                        onPressed: () {
                          //todo
                        },
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.video_call,
                            color: Colors.red,
                            ),
                            Text('登録する'),
                          ],
                        ),
                      )
                    ],
                  ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () async {
                        //TODO 画面遷移

                        await Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => VideoDetailpage(),
                          ),
                        );
                      },
                      contentPadding: EdgeInsets.all(8),
                      leading: Image.network(''
                          'https://www.pokemon.co.jp/ex/pika_vee/character/images/tw_180713_03.jpg'
                      ),
                      title: Column(
                        children: <Widget>[
                          Text('【最新版】ポケモン図鑑_完全攻略法',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                '100万回再生',
                                  style: TextStyle(fontSize: 13),
                              ),
                              Text(
                                '10日前',
                                  style: TextStyle(fontSize: 13),
                              ),
                            ],
                          ),
                        ],
                      ),
                      trailing: Icon(Icons.more_vert),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}