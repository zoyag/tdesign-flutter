import 'package:flutter/material.dart';
import 'package:tdesign_flutter/td_export.dart';

import '../../base/example_widget.dart';


class TDIconPage extends StatefulWidget {
  const TDIconPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _TDIconPageState();
}

class _TDIconPageState extends State<TDIconPage> {
  @override
  Widget build(BuildContext context) {
    return ExamplePage(title: 'icon图标',
        children: [
        ExampleModule(title: '默认',
        children: [
          ExampleItem(
              desc: 'icon数量: ${TDIcons.all.length}',
              builder: (_) => Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: Wrap(
          children: [
            for (var iconData in TDIcons.all.values) SizedBox(
              height: 100,
              width: 175,

              child: Column(
                children: [
                  Icon(iconData),
                  TDText(iconData.name)
                ],
              ),
            )
          ],
        ),
      ))
    ])]);

  }
}
