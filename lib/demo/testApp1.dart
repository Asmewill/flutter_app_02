import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
//一个无限滚动的ListView
class testApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // final wordPair=new WordPair.random();
    return new MaterialApp(
      title: "一个无限滚动的ListView",
      home: new RandomWords(),
      theme: new ThemeData(
          primaryColor: Colors.blueGrey
      ),
    );
  }
}

/**
 * Stateful widget
 * 持有的状态可能在widget生命周期中发生变化. 实现一个 stateful widget 至少需要两个类:
 * 一个 StatefulWidget类
 * 一个 State类
 */
class RandomWords extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new RandomWordsState();
  }
}

class RandomWordsState extends State<StatefulWidget> {
  final _suggestions = <WordPair>[];
  final TextStyle _biggerFont = new TextStyle(fontSize: 18.0);
  final _saved = new Set<WordPair>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("一个无限滚动的ListView"),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.list), onPressed: _pushSaved)
        ],
      ),
      body: _buildSuggestions(),
    );
  }

  Widget _buildSuggestions() {
    return new ListView.builder(itemBuilder: (context, i) {
      if (i.isOdd) {
        return new Divider();
      }
      final index = i ~/ 2;
      if (index >= _suggestions.length) {
        _suggestions.addAll(generateWordPairs().take(10));
      }
      return _buildRow(_suggestions[index]);
    });
  }

  Widget _buildRow(WordPair pair) {
    final alreadSaved = _saved.contains(pair);
    print("------111:" + alreadSaved.toString());
    return new ListTile(
      title: new Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
      trailing: new Icon(
        alreadSaved ? Icons.favorite : Icons.favorite_border,
        color: alreadSaved ? Colors.red : null,
      ),
      onTap: () {
        setState(() {
          if (alreadSaved) {
            _saved.remove(pair);
          } else {
            _saved.add(pair);
          }
        });
      },
    );
  }


  void _pushSaved() {
    Navigator.of(context).push(
        new MaterialPageRoute(
            builder:(context){
              final tiles=_saved.map(
                      (WordPair pair){
                    return new ListTile(
                      title: new Text(
                        pair.asPascalCase,
                        style: _biggerFont,
                      ),
                    );
                  }
              );
              final divided=ListTile.divideTiles(context: context, tiles:tiles).toList();//divideTiles()方法在每个ListTile之间添加1像素的分割线
              return new Scaffold(
                appBar: new AppBar(
                  title: new Text("Saved List"),
                ),
                //body: new ListView(children:tiles.toList()),//未加入分隔线
                body: new ListView(children: divided),//有分隔线
              );

            })
    );
  }
}