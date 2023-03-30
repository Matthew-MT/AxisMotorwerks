import 'package:flutter/material.dart';
import 'package:website/widgets/book.dart';
import 'package:website/widgets/calender.dart';

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

class BookAppt extends StatefulWidget {
  const BookAppt({super.key});

  final String title = "Book";

  @override
  State<BookAppt> createState() => _BookApptState();
}

class _BookApptState extends State<BookAppt> {
  
    @override
    Widget build(BuildContext context) {
      final
        width = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset : false,
      appBar: AppBar(
          title: const Text('When Would You Like To Visit?'),
          notificationPredicate: (ScrollNotification notification) {
            return notification.depth == 1;
          },
      ),
      
      body: SingleChildScrollView(
        child: Container(
        alignment: Alignment.topLeft,
      margin: EdgeInsets.only(
        left: width > 1024 ? (width - 1024) / 4 : 0,
        right: width > 1024 ? (width - 1024) / 4 : 0,
      ),
      padding: EdgeInsets.all(width / 16),
      decoration: BoxDecoration(
        color: Colors.lightBlue[50],
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: width,
            child: const Calender(),
          ),
          const Divider(
            height: 100.0
          ),
          SizedBox(
            width: width,
            child: const BookAppointment(),
          ),
        ],
      ),
      ),
      ),
    );
    /*
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
                    foregroundColor:const Color.fromARGB(255, 0, 0, 0),
                    shadowColor:const Color.fromARGB(255, 71, 67, 67),
                    backgroundColor: index.isOdd ? oddItemColor : evenItemColor,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BookAppointment(),
                      ),
                    );
                  },
                  child: Text(times[index]),
                );
              },
            ),
            ListView.separated(
              itemCount: times.length,
              separatorBuilder: (BuildContext context, int index) => const Divider(),
              itemBuilder: (BuildContext context, int index) {
                return TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                    shadowColor: const Color.fromARGB(255, 71, 67, 67),
                    backgroundColor: index.isOdd ? oddItemColor : evenItemColor,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BookAppointment(),
                      ),
                    );
                  },
                  child: Text(times[index]),
                );
              },
            ),
            ListView.separated(
              itemCount: times.length,
              separatorBuilder: (BuildContext context, int index) => const Divider(),
              itemBuilder: (BuildContext context, int index) {
                return TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                    shadowColor: const Color.fromARGB(255, 71, 67, 67),
                    backgroundColor: index.isOdd ? oddItemColor : evenItemColor,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BookAppointment(),
                      ),
                    );
                  },
                  child: Text(times[index]),

                );
              },
            ),
            ListView.separated(
              itemCount: times.length,
              separatorBuilder: (BuildContext context, int index) => const Divider(),
              itemBuilder: (BuildContext context, int index) {
                return TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                    shadowColor: const Color.fromARGB(255, 71, 67, 67),
                    backgroundColor: index.isOdd ? oddItemColor : evenItemColor,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BookAppointment(),
                      ),
                    );
                  },
                  child: Text(times[index]),
                );
              },
            ),
            ListView.separated(
              itemCount: times.length,
              separatorBuilder: (BuildContext context, int index) => const Divider(),
              itemBuilder: (BuildContext context, int index) {
                return TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                    shadowColor: const Color.fromARGB(255, 71, 67, 67) ,
                    backgroundColor: index.isOdd ? oddItemColor : evenItemColor,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BookAppointment(),
                      ),
                    );
                  },
                  child: Text(times[index]),
                );
              },
            ),
          ],
        ),
      ),
    );
    */
  } 
}

