import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class Validators {
  //Zorunlu Alan Doğrulaması
  static FormFieldValidator<String> requiredValidator(String errorMessage) {
    return (value) {
      if (value == null || value.isEmpty) {
        return errorMessage;
      }
      return null;
    };
  }

  //Email doğrulaması
  static FormFieldValidator<String> emailValidator(String errorMessage) {
    return (value) {
      if (value == null || value.isEmpty) {
        return errorMessage;
      }
      // "@" ve "." karakterlerini kontrol et
      if (!value.contains('@') || !value.contains('.')) {
        return 'Geçersiz email adresi';
      }
      return null;
    };
  }

  // Minimum uzunluk doğrulaması
  static FormFieldValidator<String> minLengthValidator(
    int length,
    String errorMessage,
  ) {
    return (value) {
      if (value == null || value.length < length) {
        return errorMessage;
      }
      return null;
    };
  }

  // Maximum uzunluk doğrulaması

  static FormFieldValidator<String> maxLengthValidator(
    int length,
    String errorMessage,
  ) {
    return (value) {
      if (value != null && value.length < length) {
        return errorMessage;
      }
      return null;
    };
  }

  //Sadece sayısal değer doğrulaması

  static FormFieldValidator<String> numericValidator(String errorMessage) {
    return (value) {
      if (value == null || double.tryParse(value) == null) {
        return errorMessage;
      }
      return null;
    };
  }
}
