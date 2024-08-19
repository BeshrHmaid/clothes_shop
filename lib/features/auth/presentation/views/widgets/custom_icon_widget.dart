import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomCircularWidget extends StatefulWidget {
  final double widgetSize;
  final Color bgColor;
  final String iconPath;
  final double iconSize;
  final bool isSvg;
  const CustomCircularWidget(
      {super.key,
      required this.widgetSize,
      required this.bgColor,
      required this.iconPath,
      required this.iconSize,
      required this.isSvg});
  @override
  _CustomCircularWidgetState createState() => _CustomCircularWidgetState();
}

class _CustomCircularWidgetState extends State<CustomCircularWidget> {
  bool _isPressed = false;

  void _onTapDown(TapDownDetails details) {
    setState(() {
      _isPressed = true;
    });
  }

  void _onTapUp(TapUpDetails details) {
    setState(() {
      _isPressed = false;
    });
  }

  void _onTapCancel() {
    setState(() {
      _isPressed = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      onTapCancel: _onTapCancel,
      child: Container(
        width: widget.widgetSize,
        height: widget.widgetSize,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: _isPressed
              ? Color(0xffcccfdd).withOpacity(0.7)
              : widget.bgColor, // Change color when pressed
        ),
        child: Center(
          child: widget.isSvg
              ? SvgPicture.asset(
                  widget.iconPath,
                  height: widget.iconSize,
                  width: widget.iconSize,
                )
              : Image.asset(
                  widget.iconPath,
                  height: widget.iconSize,
                  width: widget.iconSize,
                ),
        ),
      ),
    );
  }
}
