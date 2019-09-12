import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutterapp/ratingPage.dart';
import 'package:flutterapp/savedSuggestions.dart';

class RandomWords extends StatefulWidget {
  @override
  _RandomWordsState createState() => new _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  final _saved = new Set<WordPair>();
  final _biggerFont = const TextStyle(fontSize: 18.0);

  Widget _buildSuggestions() {
    return new ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        if (i.isOdd) return new Divider();
        final index = i ~/ 2;
        if (index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestions[index]);
      },
    );
  }

  Widget _buildRow(WordPair pair) {
    final alreadySaved = _saved.contains(pair);
    return new ListTile(
      title: new Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
      trailing: new Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: alreadySaved ? Colors.red : null,
      ),
      onTap: () {
        setState(() {
          if (alreadySaved) {
            _saved.remove(pair);
          } else {
            _saved.add(pair);
          }
        });
      },
    );
  }

  void _pushSaved() {
    // Navigator.of(context).push(
    //   new MaterialPageRoute(
    //     builder: (context) {
    //       return new SavedSuggestions(
    //         saved: _saved,
    //         biggerFont: _biggerFont,
    //       );
    //     },
    //   ),
    // );
    // 另外一种路由使用方式
    Navigator.push(
      context,
      new MaterialPageRoute(builder: (context) {
        return new SavedSuggestions(
          saved: _saved,
          biggerFont: _biggerFont,
        );
      }),
    );
  }

  void _pushRating() {
    Navigator.of(context).push(
      new MaterialPageRoute(
        builder: (context) {
          return new RatingPage(
            title: 'Rating Page',
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Startup Name Generator'),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.list),
            onPressed: _pushSaved,
          )
        ],
      ),
      body: _buildSuggestions(),
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.star),
        onPressed: _pushRating,
      ),
    );
  }
}
