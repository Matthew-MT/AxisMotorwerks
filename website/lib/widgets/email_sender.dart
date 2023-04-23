import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future sendEmail({
  required String name,
  required String email,
  required String phone,
  required String message,
}) async {
  const serviceId = 'service_cj7u4w1';
  const templateId = 'template_8av614c';
  const userId = 'J8c3Ub7SFGnpJZSg4';

  final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
  final response = await http.post(
    url,
    headers: {
      'Content-Type': 'application/json',
    },
    body: json.encode({
      'service_id': serviceId,
      'template_id': templateId,
      'user_id': userId,
      'template_params': {
        'user_name': name,
        'user_email': email,
        'user_phone': phone,
        'user_message': message,
      },
    },
    ),
  );
  name = "";
  email = "";
  phone = "";
  message = "";
}