import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import 'package:protfolio/constants.dart';
import 'package:protfolio/widgets/project_style/project_bottombar.dart';
import 'package:protfolio/widgets/project_style/project_topbar.dart';

class ProjectCard extends StatelessWidget {
  final String title;
  final String gitHubLink;
  final String playStoreLink;
  final String appLogo;
  final String description;
  final String technology;

  ProjectCard(
      {@required this.title,
      @required this.gitHubLink,
      @required this.appLogo,
      @required this.description,
      @required this.technology,
      @required this.playStoreLink});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: HoverAnimatedContainer(
        hoverColor:hoverColor,
        child: Card(
          elevation: 8,
          margin: EdgeInsets.all(10),
          color: Theme.of(context).accentColor,
          child: Column(
            children: [
              Expanded(
                child: ProjectTopBar(
                  title: title,
                  gitHubLink: gitHubLink,
                  playStoreLink: playStoreLink,
                ),
                flex: 2,
              ),
              Expanded(
                child: Container(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          height: MediaQuery.of(context).size.height,
                          child: Image.asset(appLogo),
                          // width: 200,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: MediaQuery.of(context).size.height,
                          //  color: Color(0xffededed),
                          padding: EdgeInsets.all(15),
                          child: SingleChildScrollView(
                            child: Text(
                              description,
                              style: normalTextStyle,
                              textAlign: TextAlign.justify,
                              overflow: TextOverflow.visible,
                            ),
                          ),
                        ),
                        flex: 7,
                      ),
                    ],
                  ),
                ),
                flex: 8,
              ),
              Expanded(
                child: ProjectBottomBar(
                  language: technology,
                ),
                flex: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
