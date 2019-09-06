import 'package:flutter/material.dart';

class SavedSuggestions extends StatelessWidget {
  final saved;
  final biggerFont;
  SavedSuggestions({this.saved, this.biggerFont});

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Saved Suggestions"),
      ),
      body: new ListView(
        children: divided(context),
      ),
    );
  }

  List<Widget> divided(ctx) {
    return ListTile.divideTiles(
      context: ctx,
      tiles: saved.map<Widget>((pair) {
        return new ListTile(
          title: new Text(
            pair.asPascalCase,
            style: biggerFont,
          ),
        );
      }),
    ).toList();
  }
}

// class SavedSuggestions extends StatefulWidget {
//   final saved;
//   final biggerFont;
//   SavedSuggestions({Key key, this.saved, this.biggerFont}) : super(key: key);

//   @override
//   _SavedSuggestionsState createState() => new _SavedSuggestionsState();
// }

// class _SavedSuggestionsState extends State<SavedSuggestions> {
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(
//         title: new Text("Saved Suggestions"),
//       ),
//       body: new ListView(
//         children: divided(),
//       ),
//     );
//   }

//   List<Widget> divided() {
//     return ListTile.divideTiles(
//       context: context,
//       tiles: widget.saved.map<Widget>((pair) {
//         return new ListTile(
//           title: new Text(
//             pair.asPascalCase,
//             style: widget.biggerFont,
//           ),
//         );
//       }),
//     ).toList();
//   }
// }
