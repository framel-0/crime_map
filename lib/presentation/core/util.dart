import 'package:flutter/material.dart';

import 'colors.dart';

InputDecoration textDecoration(
    {required String label, String? hint, Widget? suffix}) {
  const radiusBorder = 12.0;
  const radiusBorderErr = 6.0;
  return InputDecoration(
      // filled: true,
      contentPadding:
          const EdgeInsets.symmetric(horizontal: 18.0, vertical: 14.0),
      floatingLabelBehavior: FloatingLabelBehavior.auto,
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: colorSecondary, width: 2),
        borderRadius: BorderRadius.all(
          Radius.circular(radiusBorder),
        ),
      ),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: colorSecondary, width: 2),
        borderRadius: BorderRadius.all(
          Radius.circular(radiusBorder),
        ),
      ),
      // disabledBorder: OutlineInputBorder(
      //     borderSide: BorderSide(color: colorAccentYellow, width: 2),
      //     borderRadius: BorderRadius.all(Radius.circular(2))),
      errorBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: colorPrimary, width: 2),
        borderRadius: BorderRadius.all(
          Radius.circular(radiusBorderErr),
        ),
      ),
      focusedErrorBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: colorPrimary, width: 2),
        borderRadius: BorderRadius.all(
          Radius.circular(radiusBorderErr),
        ),
      ),
      labelStyle: const TextStyle(color: colorSecondary),
      errorStyle: const TextStyle(
        color: colorPrimary,
      ),
      labelText: label,
      hintText: hint,
      suffixIcon: suffix);
}
