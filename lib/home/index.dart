import 'package:flutter/material.dart';
// 首页
Scaffold homePage = Scaffold(
  appBar: new AppBar(
    title: new Text('时间记录器')
  ),
  body: new ThingTypeGroup(),
);

// 事件类别分组
class ThingTypeGroup extends StatefulWidget {
   @override
  _ThingTypeGroup createState() => new _ThingTypeGroup();
}
class _ThingTypeGroup extends State<ThingTypeGroup> {
  final name = '占位';
  @override
  Widget build(BuildContext context) {
    return new Row(
      children: <Widget>[
        new ThingButton(name)
      ],
    );
  }
}
class ThingButton extends StatefulWidget {
  final name;
  ThingButton(this.name);
  @override
  _ThingButton createState() => new _ThingButton(name);
}

class _ThingButton extends State<ThingButton> {
  _ThingButton(this.name);
  final String name;
  
  void _pressHandle () {
    showDialog<Null>(
      context: context,
      builder: (context) => new AlertDialog(
        // content：对话框的可选内容，以浅色字体显示在对话框的中心
        content: new Text('无事发生'),
        // actions：显示在对话框底部的可选操作
      )
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      child: new Text(name),
      onPressed: _pressHandle,
    );
  }
}