import 'package:flutter/material.dart';

class NavButton extends StatefulWidget {
  final Widget child;
  final Function(bool) onTab;
  final double width;
  final double height;
  bool isOn;

  NavButton({
    Key key,
    this.isOn,
    this.child,
    this.onTab,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  _NavButtonState createState() => _NavButtonState();
}

class _NavButtonState extends State<NavButton> {
  bool isOn = false;

  @override
  void initState() {
    this.isOn = this.widget.isOn ?? false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.widget.width ?? 130.0,
      height: this.widget.height ?? 130.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(isOn
              ? "assets/images/button_on.png"
              : "assets/images/nav_button.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: InkWell(
        onTap: () {
          setState(() {
            isOn = !isOn;
          });
          if (this.widget.onTab != null) this.widget.onTab(isOn);
        },
        child: Align(
          alignment: Alignment.center,
          child: ColorFiltered(
            colorFilter: ColorFilter.mode(
              isOn ? Colors.white : Colors.grey.withOpacity(0.8),
              BlendMode.modulate,
            ),
            child: this.widget.child,
          ),
        ),
      ),
    );
  }
}
