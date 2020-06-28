import 'package:flutter/material.dart';

import '../../utilities/constant.dart';
import 'sparkling_mask_widget.dart';

const Widget sizedBoxHeight16 = const SizedBox(height: 16);

const Widget sizedBoxWidth8 = const SizedBox(width: 8);

class DragoonAppBar extends AppBar {
  DragoonAppBar({
    Key key,
    String title,
    Widget leadingWidget,
    Widget bottom,
  }) : super(
          key: key,
          iconTheme: IconThemeData(
            color: kThemeColor, //change your color here
          ),
          title: Text(
            title,
            style: TextStyle(color: kThemeColor),
          ),
          elevation: 0,
          backgroundColor: Color.fromARGB(160, 22, 29, 32),
          leading: leadingWidget,
          bottom: bottom,
          centerTitle: true,
        );
}

class DragoonScaffold extends Scaffold {
  DragoonScaffold({
    Key key,
    AppBar appBar,
    Color backgroundColor = Colors.black,
    Widget body,
  }) : super(
          key: key,
          extendBodyBehindAppBar: true,
          appBar: appBar,
          backgroundColor: backgroundColor,
          body: Stack(
            children: [
              DragoonAppBg(),
              SafeArea(
                child: body,
              )
            ],
          ),
        );
}

class DragoonAppBg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "images/appBg@3x.png",
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
        ),
        SparklingMask(
          size: MediaQuery.of(context).size,
        ),
      ],
    );
  }
}