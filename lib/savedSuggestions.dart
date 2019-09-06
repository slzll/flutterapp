import 'package:flutter/material.dart';

class SavedSuggestions extends StatefulWidget {
  final saved;
  final biggerFont;
  SavedSuggestions({Key key, this.saved, this.biggerFont}) : super(key: key);

  @override
  _SavedSuggestionsState createState() => new _SavedSuggestionsState();
}

class _SavedSuggestionsState extends State<SavedSuggestions> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Saved Suggestions"),
      ),
      body: new ListView(
        children: divided(),
      ),
    );
  }

  List<Widget> divided() {
    return ListTile.divideTiles(
      context: context,
      tiles: widget.saved.map<Widget>((pair) {
        return new ListTile(
          title: new Text(
            pair.asPascalCase,
            style: widget.biggerFont,
          ),
        );
      }),
    ).toList();
  }
}
