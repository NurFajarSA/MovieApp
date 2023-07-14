import 'package:flutter/material.dart';
import 'package:movie_app/core/theme/theme.dart';

class MyTextfield extends StatelessWidget {
  const MyTextfield(
      {Key? key,
      required this.label,
      required this.hint,
      this.onChanged,
      this.textStyle,
      this.hintStyle,
      this.labelStyle,
      this.validator,
      this.controller,
      this.keyboardType,
      this.textCapitalization,
      this.error,
      this.readOnly = false,
      this.enabled = true,
      this.isMandatory = false,
      this.textInputAction,
      this.onTap,
      required this.background,
      this.maxLines = 1,
      this.icon,
      this.suffixIcon})
      : super(key: key);

  final bool isMandatory;
  final String label;
  final String hint;
  final TextStyle? textStyle;
  final TextStyle? hintStyle;
  final TextStyle? labelStyle;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final TextCapitalization? textCapitalization;
  final TextInputAction? textInputAction;
  final String? error;
  final bool readOnly, enabled;
  final Function()? onTap;
  final Color background;
  final int? maxLines;
  final Widget? icon;
  final Icon? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (isMandatory) ...[
          RichText(
            text: TextSpan(
              text: label,
              style: labelStyle ??
                  ThemeData().textTheme.bodyMedium!.copyWith(
                        color: MyColor.neutralColor(12),
                        fontSize: 13,
                      ),
              children: [
                TextSpan(
                  text: '*',
                  style: ThemeData().textTheme.bodyMedium!.copyWith(
                        color: MyColor.dangerColor(11),
                        fontSize: 13,
                      ),
                )
              ],
            ),
          ),
        ] else ...[
          Text(
            label,
            style: labelStyle ??
                ThemeData().textTheme.bodyMedium!.copyWith(
                      color: MyColor.neutralColor(12),
                      fontSize: 13,
                    ),
          )
        ],
        // const SizedBox(height: kDefaultPadding / 5 * 2),
        TextFormField(
          onTap: onTap,
          enabled: enabled,
          readOnly: readOnly,
          textCapitalization: textCapitalization ?? TextCapitalization.none,
          keyboardType: keyboardType ?? TextInputType.text,
          controller: controller,
          validator: validator,
          onChanged: onChanged,
          style: textStyle ??
              ThemeData().textTheme.bodyMedium!.copyWith(
                    color: MyColor.primaryColor(11),
                    fontSize: 13,
                  ),
          textInputAction: textInputAction,
          maxLines: maxLines ?? 1,
          decoration: InputDecoration(
            isDense: true,
            prefixIcon: icon,
            contentPadding: const EdgeInsets.all(15),
            errorText: error != null && error!.isNotEmpty ? error : null,
            hintText: hint,
            fillColor: background,
            filled: true,
            suffixIcon: suffixIcon,
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: MyColor.dangerColor(18), width: 2),
            ),
            hintStyle: hintStyle ??
                ThemeData().textTheme.bodyMedium!.copyWith(
                      color: MyColor.neutralColor(8),
                      fontSize: 13,
                    ),
            errorStyle: ThemeData()
                .textTheme
                .bodyMedium!
                .copyWith(color: MyColor.dangerColor(18), fontSize: 12),
            errorMaxLines: 2,
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: MyColor.dangerColor(18)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: MyColor.primaryColor(12), width: 2),
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: MyColor.primaryColor(8))),
          ),
        ),
      ],
    );
  }
}
