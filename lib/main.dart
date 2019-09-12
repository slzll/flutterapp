import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

import 'package:flutterapp/popup_menu_button_page.dart';
import 'package:flutterapp/popup_route_page.dart';
import 'package:flutterapp/reorderable_list_view_page.dart';
import 'package:flutterapp/safe_area_page.dart';
import 'package:flutterapp/spacer_page.dart';
import 'package:flutterapp/spread_page.dart';
import 'package:flutterapp/stepper_page.dart';
import 'package:flutterapp/test_page.dart';
import 'package:flutterapp/valuelistenablebuilder_page.dart';

import 'HeroDetailPage.dart';
import 'animated_container_page.dart';
import 'animated_icon_page.dart';
import 'animated_list_page.dart';
import 'animated_switcher_page.dart';
import 'animation_page.dart';
import 'aspect_ratio_page.dart';
import 'back_drop_filter_page.dart';
import 'banner_page.dart';
import 'drop_down_button_page.dart';
import 'expansion_panel_page.dart';
import 'login_page.dart';
import 'long_press_menu_page.dart';
import 'wrap_page.dart';
import 'dismissible_page.dart';
import 'draggable_page.dart';
import 'future_builder_page.dart';
import 'hero_page.dart';
import 'frinendly_chat.dart';
import 'randomWords.dart';

void main() => runApp(MyApp());

final ThemeData kIOSTheme = new ThemeData(
  primarySwatch: Colors.orange,
  primaryColor: Colors.grey[100],
  primaryColorBrightness: Brightness.light,
);

final ThemeData kDefaultTheme = new ThemeData(
  primarySwatch: Colors.purple,
  accentColor: Colors.orangeAccent[400],
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: defaultTargetPlatform == TargetPlatform.iOS
          ? kIOSTheme
          : kDefaultTheme,
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      routes: {
        'SafeAreaDemo': (context) => SafeAreaDemo(),
        'AnimatedContainerDemo': (context) => AnimatedContainerDemo(),
        'FutureBuilderPage': (context) => FutureBuilderPage(),
        'BackdropFilterPage': (context) => BackdropFilterPage(),
        'HeroPage': (context) => HeroPage(),
        'HeroDetailPage': (context) => HeroDetailPage(),
        'DismissiblePage': (context) => DismissiblePage(),
        'ValueListenableBuildPage': (context) => ValueListenableBuildPage(),
        'DraggablePage': (context) => DraggablePage(),
        'AspectRatioPage': (context) => AspectRatioPage(),
        'SpacerPage': (context) => SpacerPage(),
        'AnimatedListPage': (context) => AnimatedListPage(),
        'WrapPage': (context) => WrapPage(),
        'ExpansionPanelPage': (context) => ExpansionPanelPage(),
        'AnimatedIconPage': (context) => AnimatedIconPage(),
        'DropDownButtonPage': (context) => DropDownButtonPage(),
        'StepperPage': (context) => StepperPage(),
        'ReorderableListViewPage': (context) => ReorderableListViewPage(),
        'BannerPage': (context) => BannerPage(),
        'AnimatedSwitcherPage': (context) => AnimatedSwitcherPage(),
        'PopupMenuButtonPage': (context) => PopupMenuButtonPage(),
        'PopupRoutePage': (context) => PopupRoutePage(),
        'TestPage': (context) => TestPage(),
        'LongPressMenuPage': (context) => LongPressMenuPage(),
        'AnimationPage': (context) => AnimationPage(),
        'SpreadPage': (context) => SpreadPage(),
        'LoginPage': (context) => LoginPage(),
        'FriendlyChat': (context) => FriendlyChatPage(),
        'RandomWords': (context) => RandomWords(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Demo'),
      ),
      body: SafeArea(
        child: Center(
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.0,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
            ),
            children: <Widget>[
              RouteButton(name: 'SafeAreaDemo'),
              RouteButton(name: 'AnimatedContainerDemo'),
              RouteButton(name: 'FutureBuilderPage'),
              RouteButton(name: 'BackdropFilterPage'),
              RouteButton(name: 'HeroPage'),
              RouteButton(name: 'DismissiblePage'),
              RouteButton(name: 'ValueListenableBuildPage'),
              RouteButton(name: 'DraggablePage'),
              RouteButton(name: 'AspectRatioPage'),
              RouteButton(name: 'SpacerPage'),
              RouteButton(name: 'AnimatedListPage'),
              RouteButton(name: 'WrapPage'),
              RouteButton(name: 'ExpansionPanelPage'),
              RouteButton(name: 'AnimatedIconPage'),
              RouteButton(name: 'DropDownButtonPage'),
              RouteButton(name: 'StepperPage'),
              RouteButton(name: 'ReorderableListViewPage'),
              RouteButton(name: 'BannerPage', text: '轮播图'),
              RouteButton(name: 'AnimatedSwitcherPage'),
              RouteButton(name: 'PopupMenuButtonPage'),
              RouteButton(name: 'PopupRoutePage'),
              RouteButton(name: 'TestPage'),
              RouteButton(name: 'LongPressMenuPage', text: '长按菜单'),
              RouteButton(name: 'AnimationPage', text: '向上箭头动画'),
              RouteButton(name: 'SpreadPage', text: '水波纹扩散效果'),
              RouteButton(name: 'LoginPage', text: '登录页'), // 登录页
              RouteButton(name: 'FriendlyChat', text: '聊天室'),
              RouteButton(name: 'RandomWords', text: '无限列表'),
            ],
          ),
        ),
      ),
    );
  }
}

class RouteButton extends StatelessWidget {
  final name;
  final text;
  RouteButton({Key key, @required this.name, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      onPressed: () {
        Navigator.of(context).pushNamed(this.name);
      },
      child: Text(
          (this.text == null || this.text.isEmpty) ? this.name : this.text),
    );
  }
}
