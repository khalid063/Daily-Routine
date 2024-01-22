import 'package:daily_routine/widgets/utils/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter/material.dart';

import 'app_colors.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String title;
  final Widget child;

  const CustomAppBar({Key? key, required this.title, required this.child, }) : super(key: key);

  @override
  _CustomAppBarState createState() => _CustomAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(50);
}

class _CustomAppBarState extends State<CustomAppBar> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 5),
        height: 50,
        color: Colors.white,
        child: AppBar(
          centerTitle: true,
          title: Text(
            widget.title,
            style: TextStyle(color: Colors.white, fontSize: 22,),
          ),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0),
                bottomRight: Radius.circular(15.0),
                bottomLeft: Radius.circular(15.0),
              )
          ),
          elevation: 8,
          backgroundColor: AppColors.primaryColorShadRedAccent,
          leading: Builder(
            builder: (context) {
              return IconButton(
                icon: SvgPicture.asset(ImageAssets.menuIconSVG),
                iconSize: 25,
                onPressed: () => Scaffold.of(context).openDrawer(),
              );
            },
          ),
          actions: [
            widget.child
          ],
        ),
      ),
    );
  }
}