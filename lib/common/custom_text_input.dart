import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:sizer/sizer.dart';
import 'package:sos_admin/config/app_colors.dart';
import 'package:sos_admin/config/app_sizes.dart';
import 'package:sos_admin/config/app_text_styles.dart';
import 'package:sos_admin/services/pages_util.dart';


class CustomTextInput extends StatelessWidget {
  const CustomTextInput({
    Key? key,
    required this.hintText,
    required this.onChanged,
    required this.controller,
    this.validator,
    required this.onsaved,
    this.keyboardType,
    this.disableFocusBorder,
    required this.inputAction,
    this.bgColor,
    this.borderSide,
    this.radius,
    this.maxLines,
    this.leftIcon,
    this.isrequired,
    this.inputFormatters,
  }) : super(key: key);

  ///input hint text
  final String hintText;
  final Icon? leftIcon;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final FormFieldValidator<String?>? validator;
  final void Function(String?)? onsaved;
  final TextInputAction inputAction;
  final List<TextInputFormatter>? inputFormatters;

  ///input hint text
  final Function(String s) onChanged;
  final BorderSide? borderSide;
  final double? radius;

  final Color? bgColor;
  final int? maxLines;
  final bool? disableFocusBorder;
  final bool? isrequired;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      textCapitalization: TextCapitalization.sentences,
      onSaved: onsaved,
      textInputAction: inputAction,
      maxLines: maxLines,
      inputFormatters: inputFormatters,
      decoration: InputDecoration(
        fillColor: bgColor,
        focusedBorder: OutlineInputBorder(
          borderSide: borderSide != null ? borderSide! : BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(radius != null ? radius! : AppSizes.radius_6),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: borderSide != null ? borderSide! : BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(radius != null ? radius! : AppSizes.radius_6),
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: borderSide != null ? borderSide! : BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(radius != null ? radius! : AppSizes.radius_6),
          ),
        ),
        border: OutlineInputBorder(
          borderSide: borderSide != null ? borderSide! : BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(radius != null ? radius! : AppSizes.radius_6),
          ),
        ),
        //hintText: hintText,
        labelText: hintText,
        labelStyle: Theme.of(context)
            .textTheme
            .bodySmall!
            .copyWith(color: AppColors.grayDefault),
        // hintStyle: Theme.of(context)
        //     .textTheme
        //     .bodySmall!
        //     .copyWith(color: CustomColors.grey, fontWeight: FontWeight.w500),
        suffixIcon: isrequired == true
            ? Icon(
                FontAwesomeIcons.asterisk,
                color: AppColors.danger,
                size: AppSizes.icon_size_2,
              )
            : null,
      ),
      keyboardType: keyboardType,
      onChanged: onChanged,
      validator: validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      style: Theme.of(context).textTheme.bodySmall?.copyWith(
            color: AppColors.black,
            decoration: TextDecoration.none,
            decorationThickness: 0.0,
          ),
    );
  }
}

class CustomTextInputBorder extends StatelessWidget {
  const CustomTextInputBorder({
    Key? key,
    required this.hintText,
    required this.labelText,
    required this.onChanged,
    required this.controller,
    required this.validator,
    required this.onsaved,
    this.keyboardType,
    required this.inputAction,
    this.enabled = true,
  }) : super(key: key);

  ///input hint text
  final String hintText;
  final String labelText;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final FormFieldValidator<String?> validator;
  final void Function(String?)? onsaved;
  final TextInputAction inputAction;
  final bool enabled;

  ///input hint text
  final Function(String s) onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: controller,
        onSaved: onsaved,
        textInputAction: inputAction,
        enabled: enabled,
        cursorColor: AppColors.primary,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.primary, width: 0.5),
              borderRadius: BorderRadius.all(
                Radius.circular(AppSizes.radius_7),
              ),
            ),
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.primary, width: 0.5),
              borderRadius: BorderRadius.all(
                Radius.circular(AppSizes.radius_7),
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: AppColors
                      .primary), // Change this to your desired underline color
            ),
            fillColor: AppColors.whiteOff,
            hintText: hintText,
            labelText: labelText,
            labelStyle: AppTextStyles.captionRegular
                .copyWith(color: AppColors.primary, fontSize: 20),
            hintStyle: AppTextStyles.titleBold
                .copyWith(color: AppColors.grayLight, fontSize: 20)),
        keyboardType: keyboardType,
        onChanged: onChanged,
        validator: validator,
        style: AppTextStyles.titleBold
            .copyWith(color: AppColors.grayDefault, fontSize: 20));
  }
}

class CustomPhoneInput extends StatelessWidget {
  const CustomPhoneInput({
    Key? key,
    required this.hintText,
    required this.onChanged,
    required this.controller,
  }) : super(key: key);

  ///input hint text
  final String hintText;
  final TextEditingController controller;

  ///input hint text
  final Function(String s) onChanged;

  String? validatephone(String value) {
    if (PagesUtil.isPhoneValidEthiopian(value)) {
      return null;
    }
    return "Please Provide valid Phone Number!";
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: [
        FilteringTextInputFormatter.deny(RegExp(r"\s")),
        CustomPhoneFormatter(),
      ],
      controller: controller,
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(AppSizes.radius_6),
          ),
        ),
        hintText: hintText,
        labelText: hintText,
        labelStyle: Theme.of(context)
            .textTheme
            .bodySmall!
            .copyWith(color: AppColors.grayDefault),
        alignLabelWithHint: true,
        filled: true,
        contentPadding: EdgeInsets.symmetric(
          vertical: 5.w,
          horizontal: 2.7.w,
        ),
        prefixIcon: Icon(
          Icons.phone,
          color: AppColors.grayDefault.withOpacity(0.5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(6.0),
          ),
          borderSide: BorderSide(
            color: AppColors.grayDefault,
          ),
        ),
      ),
      validator: (value) {
        return validatephone(value!);
      },
      onChanged: onChanged,
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: AppColors.black,
            decoration: TextDecoration.none,
            decorationThickness: 0.0,
          ),
    );
  }
}

class CustomPhoneFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final newText = newValue.text.replaceAll(RegExp(r'[^0-9+]'), '');
    return newValue.copyWith(text: newText);
  }
}
