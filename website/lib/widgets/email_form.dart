import 'package:flutter/material.dart';
import 'email_sender.dart';

Container emailForm() {
  final controllerName = TextEditingController();
  final controllerEmail = TextEditingController();
  final controllerPhone = TextEditingController();
  final controllerMessage = TextEditingController();

  return Container(
    height: 600,
    padding: const EdgeInsets.all(40),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        newTextFieldRow(
          name: "Name", 
          email: "Email", 
          phone: "Phone Number", 
          controllerName: controllerName, 
          controllerEmail: controllerEmail, 
          controllerPhone: controllerPhone,
        ),
        const SizedBox(height: 40),
        newTextFieldMessage(
          message: "Message", 
          controllerMessage: controllerMessage,
        ),
        const SizedBox(height: 40),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 38, 214, 94),
            minimumSize: const Size.fromHeight(50),
            textStyle: const TextStyle(fontSize: 20),
            elevation: 10,
            shadowColor: Colors.black
            ),
          onPressed: () => sendEmail(
            name: controllerName.text,
            email: controllerEmail.text,
            phone: controllerPhone.text,
            message: controllerMessage.text,
          ),
          child: const Text('Send'), 
        ),
      ],
    ),
  );
}

Widget newTextFieldRow({
  required String name,
  required String email,
  required String phone,
  required TextEditingController controllerName,
  required TextEditingController controllerEmail,
  required TextEditingController controllerPhone,
}) => Row(
  crossAxisAlignment: CrossAxisAlignment.center,
  
  children: [ 
    Expanded(
      child: TextField(
        
        controller: controllerName,
        decoration: const InputDecoration(
          labelText: "Name",
          border: OutlineInputBorder(),
        ),
      ),
    ),
    const SizedBox(width: 60),
    Expanded(
      child: TextField(
        controller: controllerEmail,
        decoration: const InputDecoration(
          labelText: "Email",
          border: OutlineInputBorder(),
        ),
      ),
    ),
    const SizedBox(width: 60),
    Expanded(
      child: TextField(
        controller: controllerPhone,
        decoration: const InputDecoration(
          labelText: "Phone Number",
          border: OutlineInputBorder(),
        ),
      ),
    ),
  ],
);

Widget newTextFieldMessage({
  required String message,
  required TextEditingController controllerMessage,
}) => Row(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Expanded(
      child: TextField(
        controller: controllerMessage,
        decoration: const InputDecoration(
          labelText: "Message",
          border: OutlineInputBorder(),
        ),
        maxLines: 7,
      ),
    ),
  ],
);
