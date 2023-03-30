import "package:flutter/material.dart";

class BookAppointment extends StatefulWidget {
  const BookAppointment({super.key});

  final String title = "Book";

  @override
  State<BookAppointment> createState() => _AppointmentState();
}

class _AppointmentState extends State<BookAppointment> {
  String _content = '';
  final myController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Start listening to changes.
    myController.addListener(_handleChange);
  }

  void _handleChange() {
    setState(() {
      _content = myController.text;
    });
  }

    Widget build(BuildContext context){
        return Center(
            child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                    TextField(
                        onChanged: (String value){
                            setState(()
                            {
                                _content = value;
                            });
                        },
                        autofocus: true,
                    ),
                ],
            ),
        );
    }
}

