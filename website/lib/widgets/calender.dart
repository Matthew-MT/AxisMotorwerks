import 'package:flutter/material.dart';

class Calender extends StatefulWidget {
  const Calender({super.key});

  @override
  State<Calender> createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {

  DateTime _day = DateTime.now();
  DateTime _month = DateTime.now();

  void _selectedDate() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2024),
    ).then((date) {
      setState(() {
        _day = date!;
        _month = date;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(_day.day.toString(), style: const TextStyle(fontSize: 20.0),),
              Text(_month.month.toString(), style: const TextStyle(fontSize: 20.0),),
              ElevatedButton(
              onPressed: _selectedDate,
              child: const Padding(
                padding: EdgeInsets.all(30.0),
                child: Text('Pick a date',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    )),
              ),
        ),
            ],
          ),
    );
  }
}