// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import 'package:sizer/sizer.dart';
import 'package:sos_admin/common/app_icon_button.dart';
import 'package:sos_admin/config/app_colors.dart';
import 'package:sos_admin/config/app_sizes.dart';
import 'package:sos_admin/config/app_text_styles.dart';
import 'package:sos_admin/gen/assets.gen.dart';


class CustomSliderButton extends StatefulWidget {
  final VoidCallback onPressed;
  final Alignment alignLabel;
  final String? label;
  final String? icon;
  final double width;
  final double radius;
  final double buttonSize;
  final bool dismissible;
  final Color buttonColor;
  final Color backgroundColor;
  final Color highlightedColor;
  final Color baseColor;

  const CustomSliderButton({
    super.key,
    required this.onPressed,
    this.alignLabel = Alignment.center,
    this.label,
    this.icon,
    this.width = 200.0,
    this.radius = 30.0,
    this.buttonSize = 60.0,
    this.dismissible = true,
    this.buttonColor = Colors.white,
    this.backgroundColor = Colors.blue,
    this.highlightedColor = Colors.green,
    this.baseColor = Colors.grey,
  });

  @override
  _SliderButtonState createState() => _SliderButtonState();
}

class _SliderButtonState extends State<CustomSliderButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  bool _isButtonDragged = false;
  bool _isButtonPressed = false;
  double _buttonPosition = 0.0;
  Color _backgroundColor = AppColors.danger;
  String _icon = Assets.icons.arrowright;
  String _label = "Send SOS";

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _handleDragStart(DragStartDetails details) {
    setState(() {
      _isButtonDragged = true;
    });
  }

  void _handleDragUpdate(DragUpdateDetails details) {
    if (_isButtonDragged) {
      setState(() {
        _buttonPosition += details.delta.dx;
      });
    }
  }

  void _handleDragEnd(DragEndDetails details) {
    setState(() {
      _isButtonDragged = false;
    });

    if (_buttonPosition >= widget.width - widget.buttonSize) {
      if (_label == 'SOS sent') {
        Future.delayed(Duration(seconds: 1), () {
          setState(() {
            _buttonPosition = 0;
            _isButtonPressed = false;
            _backgroundColor = AppColors.danger;
            _icon = Assets.icons.arrowright;
            _label = "Send SOS";
          });
        });

        setState(() {
          _buttonPosition = widget.width -
              widget.buttonSize -
              12; // Subtract a small value to adjust the position
          _isButtonPressed = true;
          _backgroundColor = AppColors.primary;
          _icon = Assets.icons.check;
          _label = "SOS sent";
        });
      } else if (_label == 'Send SOS') {
        Future.delayed(Duration(seconds: 1), () {
          setState(() {
            _buttonPosition = 0;
            _isButtonPressed = false;
            _backgroundColor = AppColors.danger;
            _icon = Assets.icons.arrowright;
            _label = "SOS sent";
          });
        });

        setState(() {
          _buttonPosition = widget.width -
              widget.buttonSize -
              12; // Subtract a small value to adjust the position
          _isButtonPressed = true;
          _backgroundColor = AppColors.primary;
          _icon = Assets.icons.check;
          _label = "Send SOS";
        });
      }

      widget.onPressed();
    } else {
      setState(() {
        _buttonPosition = 0;
        _isButtonPressed = false;
        _backgroundColor = AppColors.danger;
        _icon = Assets.icons.arrowright;
        _label = "Send SOS";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragStart: _handleDragStart,
      onHorizontalDragUpdate: _handleDragUpdate,
      onHorizontalDragEnd: _handleDragEnd,
      child: Container(
        width: widget.width,
        height: 7.h,
        decoration: BoxDecoration(
          color: _backgroundColor,
          borderRadius: BorderRadius.circular(widget.radius),
        ),
        child: Stack(
          children: [
            Positioned(
              left: _buttonPosition,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                    height: 9.w,
                    width: 10.w,
                    decoration: BoxDecoration(
                      color: _isButtonPressed
                          ? widget.highlightedColor
                          : widget.buttonColor,
                      borderRadius: BorderRadius.circular(widget.radius),
                    ),
                    child: AppSvgButton(
                      imagePath: _icon,
                      onPressed: () {},
                      iconColor: _isButtonPressed
                          ? widget.baseColor
                          : AppColors.danger,
                      size: AppSizes.icon_size_4,
                    )),
              ),
            ),
            Align(
              alignment: widget.alignLabel,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Shimmer.fromColors(
                    baseColor: AppColors.primary,
                    highlightColor: Colors.yellow,
                    child: Text(_label,
                        style: AppTextStyles.bodyLargeBold
                            .copyWith(color: AppColors.whiteOff))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
