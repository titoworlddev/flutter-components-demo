import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  
  'accessibility' : Icons.accessibility,
  'folder_open'   : Icons.folder_open,
  'add_alert'     : Icons.add_alert,
  'donut_large'   : Icons.donut_large,
  'input'         : Icons.input,
  'tune'          : Icons.tune,
  'list'          : Icons.list,

};


Icon getIcon( String nombreIcono ) {

  return Icon( _icons[nombreIcono], color: Colors.blue );

  
}