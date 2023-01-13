import 'package:flutter/material.dart';

import 'package:componentesab/src/pages/home_page.dart';
import 'package:componentesab/src/pages/alert_page.dart';
import 'package:componentesab/src/pages/avatar_page.dart';
import 'package:componentesab/src/pages/card_page.dart';
import 'package:componentesab/src/pages/animated_container.dart';
import 'package:componentesab/src/pages/input_page.dart';
import 'package:componentesab/src/pages/slider_page.dart';
import 'package:componentesab/src/pages/listview_page.dart';

Map<String, WidgetBuilder> getAplicationRoutes() {

 return <String, WidgetBuilder>{
    '/'      : (BuildContext context) => HomePage(),
    'alert'  : (BuildContext context) => AlertPage(),
    'avatar' : (BuildContext context) => AvatarPage(),
    'card'   : (BuildContext context) => CardPage(),
    'animatedContainer'   : (BuildContext context) => AnimatedContainerPage(),
    'inputs'   : (BuildContext context) => InputPage(),
    'slider'   : (BuildContext context) => SliderPage(),
    'list'   : (BuildContext context) => ListaPage(),
};

}