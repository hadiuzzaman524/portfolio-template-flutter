import 'package:flutter/material.dart';
import 'package:protfolio/widgets/freamwork_view.dart';
import 'package:protfolio/widgets/skills/framework_skills.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../slill_item_card.dart';

class ToolsAndTechnology extends StatelessWidget {
  const ToolsAndTechnology({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, size) {
      return GridView.count(
        crossAxisCount: size.deviceScreenType == DeviceScreenType.desktop
            ? 3
            : size.deviceScreenType == DeviceScreenType.tablet
                ? 2
                : 1,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        mainAxisSpacing: 6,
        crossAxisSpacing: 6,
        childAspectRatio: 4 / 2,
        children: [
          FreamWorkView(
            title: 'MS Word',
            src: 'images/word.jpg',
          ),
          FreamWorkView(
            title: 'MS PowerPoint',
            src: 'images/powerpoint.jpg',
          ),
          FreamWorkView(
            title: 'Git',
            src: 'images/gith.png',
          ),
          FreamWorkView(
            title: 'Adobe XD',
            src: 'images/xd.png',
          ),
          FreamWorkView(
            title: 'CodeBlocks',
            src: 'images/codeblocks.png',
          ),
          FreamWorkView(
            title: 'Dev C++',
            src: 'images/dev.png',
          ),
          FreamWorkView(
            title: 'Android Studio',
            src: 'images/androidstudio.png',
          ),
          FreamWorkView(
            title: 'TexStudio',
            src: 'images/texstudio.jpg',
          ),
          FreamWorkView(
            title: 'NetBeans',
            src: 'images/netbeans.png',
          ),
          FreamWorkView(
            title: 'Jupyter Notebook',
            src: 'images/jupyter.png',
          ),
        ],
      );
    });
  }
}
