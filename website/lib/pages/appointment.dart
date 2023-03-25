import 'package:flutter/material.dart';

List<String> dates = <String>[
  'Monday',
  'Tuesday',
  'Wednesday',
  'Thursday',
  'Friday',
];

List<String> times = <String>[
'9:00 AM',
'10:00 AM',
'11:00 AM',
'12:00 PM',
'1:00 PM',
'2:00 PM',
'3:00 PM',
'4:00 PM',
];

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
        return Scaffold(
            body:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                    const Text(
                        'Book Appointment'
                    ),
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


class BookAppt extends StatefulWidget {
  const BookAppt({super.key});

  final String title = "Book";

  @override
  State<BookAppt> createState() => _BookApptState();
}

class _BookApptState extends State<BookAppt> {
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

    Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color oddItemColor = colorScheme.primary.withOpacity(0.05);
    final Color evenItemColor = colorScheme.primary.withOpacity(0.15);
    const int tabsCount = 5;

    return DefaultTabController(
      initialIndex: 1,
      length: tabsCount,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('When Would You Like To Visit?'),
          notificationPredicate: (ScrollNotification notification) {
            return notification.depth == 1;
          },
          scrolledUnderElevation: 4.0,
          shadowColor: Theme.of(context).shadowColor,
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: const Icon(Icons.calendar_today),
                text: dates[0],
              ),
              Tab(
                icon: const Icon(Icons.calendar_today),
                text: dates[1],
              ),
              Tab(
                icon: const Icon(Icons.calendar_today),
                text: dates[2],
              ),
              Tab(
                icon: const Icon(Icons.calendar_today),
                text: dates[3],
              ),
              Tab(
                icon: const Icon(Icons.calendar_today),
                text: dates[4],
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView.separated(
              itemCount: times.length,
              separatorBuilder: (BuildContext context, int index) => const Divider(),
              itemBuilder: (BuildContext context, int index) {
                return TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Color.fromARGB(255, 0, 0, 0),
                    shadowColor: Color.fromARGB(255, 71, 67, 67),
                    backgroundColor: index.isOdd ? oddItemColor : evenItemColor,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BookAppointment(),
                      ),
                    );
                  },
                  child: Text('${times[index]}'),
                );
              },
            ),
            ListView.separated(
              itemCount: times.length,
              separatorBuilder: (BuildContext context, int index) => const Divider(),
              itemBuilder: (BuildContext context, int index) {
                return TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Color.fromARGB(255, 0, 0, 0),
                    shadowColor: Color.fromARGB(255, 71, 67, 67),
                    backgroundColor: index.isOdd ? oddItemColor : evenItemColor,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BookAppointment(),
                      ),
                    );
                  },
                  child: Text('${times[index]}'),
                );
              },
            ),
            ListView.separated(
              itemCount: times.length,
              separatorBuilder: (BuildContext context, int index) => const Divider(),
              itemBuilder: (BuildContext context, int index) {
                return TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Color.fromARGB(255, 0, 0, 0),
                    shadowColor: Color.fromARGB(255, 71, 67, 67),
                    backgroundColor: index.isOdd ? oddItemColor : evenItemColor,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BookAppointment(),
                      ),
                    );
                  },
                  child: Text('${times[index]}'),

                );
              },
            ),
            ListView.separated(
              itemCount: times.length,
              separatorBuilder: (BuildContext context, int index) => const Divider(),
              itemBuilder: (BuildContext context, int index) {
                return TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Color.fromARGB(255, 0, 0, 0),
                    shadowColor: Color.fromARGB(255, 71, 67, 67),
                    backgroundColor: index.isOdd ? oddItemColor : evenItemColor,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BookAppointment(),
                      ),
                    );
                  },
                  child: Text('${times[index]}'),
                );
              },
            ),
            ListView.separated(
              itemCount: times.length,
              separatorBuilder: (BuildContext context, int index) => const Divider(),
              itemBuilder: (BuildContext context, int index) {
                return TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Color.fromARGB(255, 0, 0, 0),
                    shadowColor: Color.fromARGB(255, 71, 67, 67),
                    backgroundColor: index.isOdd ? oddItemColor : evenItemColor,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BookAppointment(),
                      ),
                    );
                  },
                  child: Text('${times[index]}'),
                );
              },
            ),
          ],
        ),
      ),
    );
  } 
}

