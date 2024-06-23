import 'package:mero_cloud_school/core/common/exports.dart';

/// KTextFormField - A Custom Text Form Field for Flutter Applications.
///
/// This widget is an enhanced version of the TextFormField, offering additional customization
/// and styling options. It's designed for easier integration into various forms across your
/// Flutter application, with support for features like custom hint text, label text, icons,
/// validation, and more.
///
/// Parameters:
///   [hintText] - (Optional) The hint text to display when the field is empty.
///   [labelText] - (Optional) The label text for the form field.
///   [controller] - TextEditingController to manage the text being edited.
///   [keyboardType] - The type of keyboard to display for editing.
///   [obscureText] - (Optional) Whether the text is obscured. Useful for passwords. Defaults to false.
///   [enableSuggestions] - (Optional) Whether to show suggestions. Defaults to true.
///   [autocorrect] - (Optional) Whether to enable autocorrect. Defaults to true.
///   [contentStyle] - (Optional) The TextStyle for the text being edited.
///   [hintTextStyle] - (Optional) The TextStyle for the hint text.
///   [labelTextStyle] - (Optional) The TextStyle for the label text.
///   [errorTextStyle] - (Optional) The TextStyle for the error text.
///   [enableIMEPersonalizedLearning] - (Optional) Whether to enable IME's personalized learning. Defaults to true.
///   [validator] - (Optional) Function for field validation.
///   [onChanged] - (Optional) Callback for when the field value changes.
///   [onSaved] - (Optional) Callback for when the field value is saved.
///   [onFieldSubmitted] - (Optional) Callback for when the field is submitted.
///   [onEditingComplete] - (Optional) Callback for when the editing is complete.
///   [onTap] - (Optional) Callback for when the field is tapped.
///   [prefixIcon] - (Optional) A widget to display before the text field.
///   [suffixIcon] - (Optional) A widget to display after the text field.
///   [onSuffixTap] - (Optional) Callback for when the suffix icon is tapped.
///   [fillColor] - (Optional) The background color for the field.
///   [inputFormatters] - (Optional) List of TextInputFormatters to control the input.
///   [focusNode] - (Optional) FocusNode for handling focus.
///   [textAlign] - (Optional) How the text should be aligned horizontally.
///
/// Example Usage:
/// ```dart
/// KTextFormField(
///   controller: _textController,
///   keyboardType: TextInputType.text,
///   hintText: 'Enter your text',
///   labelText: 'Your Text',
///   obscureText: false,
///   validator: (value) {
///     if (value!.isEmpty) {
///       return 'Please enter some text';
///     }
///     return null;
///   },
///   onSaved: (value) {
///     // Save or submit the value
///   },
///   prefixIcon: Icon(Icons.person),
///   suffixIcon: Icon(Icons.clear),
///   onSuffixTap: () {
///     _textController.clear();
///   },
/// )
/// ```
///
/// Note: This widget provides a rich set of features to enhance the user input experience. Customize the field
/// according to your application's theme and functionality requirements.

class KTextFormField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? topLabelText;
  final bool? isTopLabelText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final bool? enableSuggestions;
  final bool? autocorrect;
  final TextStyle? topLabelStyle;
  final TextStyle? contentStyle;
  final TextStyle? hintTextStyle;
  final TextStyle? labelTextStyle;
  final TextStyle? errorTextStyle;
  final bool? enableIMEPersonalizedLearning;
  final String? Function(String?)? validator;
  final void Function(String?)? onChanged;
  final void Function(String?)? onSaved;
  final void Function(String?)? onFieldSubmitted;
  final void Function()? onEditingComplete;
  final void Function()? onTap;
  final Color? fillColor; // Added parameter for fill color
  final Widget? prefixIcon; // Added parameter for prefix icon
  final Widget? suffixIcon; // Added parameter for suffix icon
  final void Function()? onSuffixTap; // Added parameter for suffix tap
  final List<TextInputFormatter>? inputFormatters;
  final FocusNode? focusNode;
  final TextAlign? textAlign;
  final int? maxLines;
  final bool? readOnly;
  final bool? isSuffixText;
  final String? suffixText;

  const KTextFormField({
    super.key,
    this.hintText,
    this.labelText,
    this.topLabelText,
    this.isTopLabelText = true,
    this.controller,
    this.keyboardType,
    this.obscureText = false,
    this.enableSuggestions = true,
    this.autocorrect = true,
    this.topLabelStyle,
    this.contentStyle,
    this.hintTextStyle,
    this.labelTextStyle,
    this.errorTextStyle,
    this.enableIMEPersonalizedLearning = true,
    this.validator,
    this.onChanged,
    this.onSaved,
    this.onFieldSubmitted,
    this.onEditingComplete,
    this.onTap,
    this.fillColor,
    this.prefixIcon,
    this.suffixIcon,
    this.onSuffixTap,
    this.inputFormatters,
    this.focusNode,
    this.textAlign,
    this.maxLines = 1,
    this.readOnly,
    this.isSuffixText = false,
    this.suffixText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        isTopLabelText == true
            ? Text(
                topLabelText ?? "",
                style: topLabelStyle ?? Theme.of(context).textTheme.f12W6,
              )
            : const SizedBox.shrink(),
        SizedBox(height: 4.h),
        TextFormField(
          readOnly: readOnly ?? false,
          controller: controller,
          textAlign: textAlign ?? TextAlign.start,
          keyboardType: keyboardType,
          obscureText: obscureText ?? false,
          inputFormatters: inputFormatters,
          enableSuggestions: enableSuggestions ?? true,
          autocorrect: autocorrect ?? true,
          textInputAction: TextInputAction.next,
          // autovalidateMode: AutovalidateMode.onUserInteraction,
          enableIMEPersonalizedLearning: enableIMEPersonalizedLearning ?? true,
          style: contentStyle ?? Theme.of(context).textTheme.f16W4,
          focusNode: focusNode,
          maxLines: maxLines,
          decoration: InputDecoration(
            counterText: '',
            errorMaxLines: 2,
            errorStyle: Theme.of(context).textTheme.f14W4.copyWith(
                  color: Colors.red,
                ),
            hintText: hintText,
            labelText: labelText,
            // hintStyle: hintTextStyle ?? Theme.of(context).textTheme.f16W4,
            hintStyle: Theme.of(context).textTheme.f14W4.copyWith(
                  color:
                      Theme.of(context).colorScheme.onSurface.withOpacity(0.5),
                ),
            labelStyle: hintTextStyle ?? Theme.of(context).textTheme.f16W4,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4.r),
              borderSide: const BorderSide(
                color: PrimitiveColors.grey300,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4.r),
              borderSide: const BorderSide(
                color: PrimitiveColors.grey300,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4.r),
              borderSide: const BorderSide(
                color: PrimitiveColors.grey300,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4.r),
              borderSide: BorderSide(
                color: AppColors()
                    .errorContainer, // Set the error border color to amber
              ),
            ),

            fillColor: fillColor ?? AppColors().surfaceDim,
            filled: true,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 8.h,
            ),
            prefixIcon: prefixIcon,
            hintTextDirection: TextDirection.ltr,
            suffixIcon: isSuffixText == true
                ? SizedBox(
                    width: 60.w,
                    child: Center(
                        child: Text(
                      suffixText.toString(),
                      style: Theme.of(context).textTheme.f12W4,
                    )),
                  )
                : suffixIcon != null
                    ? GestureDetector(
                        onTap: onSuffixTap,
                        child: suffixIcon,
                      )
                    : null,
          ),
          validator: validator,
          onChanged: onChanged,
          onSaved: onSaved,
          onFieldSubmitted: onFieldSubmitted,
          onEditingComplete: onEditingComplete,
          onTap: onTap,
          onTapOutside: (details) {
            FocusScope.of(context).unfocus();
          },
        ),
      ],
    );
  }
}
