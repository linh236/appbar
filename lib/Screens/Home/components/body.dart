import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:flutter/scheduler.dart';
import 'package:appbar/Screens/Home/detail_screen.dart';
import 'package:appbar/constants.dart';
import 'package:appbar/models/meeting_model.dart';
import 'package:appbar/Screens/Event/event_screen.dart';
//import 'package:appbar/components/meeting_data_source.dart';
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void popUpChose(date) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
                title: Text("Test"),
                content: Text("Context test"),
                actions: [
                  FlatButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return DetailScreen(date: date);
                      }));
                    },
                    child: Text("Detail"),
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context){
                            return EventScreen();
                          }
                        )
                      );
                    },
                    child: Text("Add event"),
                  ),
                ]);
          });
    }

    return Scaffold(
        body: SfCalendar(
      view: CalendarView.month,
      dataSource: MeetingDataSource(_getDataSource()),
      showDatePickerButton: true,
      onTap: (CalendarTapDetails details) {
        var date = details.date;
        popUpChose(date);
      },
      allowedViews: <CalendarView>[
        CalendarView.day,
        CalendarView.week,
        CalendarView.workWeek,
        CalendarView.month,
        CalendarView.schedule
      ],
      monthViewSettings: MonthViewSettings(
          appointmentDisplayMode: MonthAppointmentDisplayMode.appointment),
    ));
  }
}

List<Meeting> _getDataSource() {
  var meetings = <Meeting>[];
  var arrayDate = [];
  final DateTime today = DateTime.now();
  final DateTime startTime = DateTime(today.year, today.month, today.day);
  final DateTime endTime = startTime.add(const Duration(hours: 2));

  Future<List> fetchUses() async {
    var result = await http.get(UrlGetUse);
    return json.decode(result.body)['data'];
  }

  final DateTime start = DateTime.parse("2021-02-18");
  meetings.add(Meeting('Test', start, start, const Color(0xFF0F8644), false));
  return meetings;
}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Meeting> source) {
    appointments = source;
  }

  @override
  DateTime getStartTime(int index) {
    return appointments[index].from;
  }

  @override
  DateTime getEndTime(int index) {
    return appointments[index].to;
  }

  @override
  String getSubject(int index) {
    return appointments[index].eventName;
  }

  @override
  Color getColor(int index) {
    return appointments[index].background;
  }

  @override
  bool isAllDay(int index) {
    return appointments[index].isAllDay;
  }
}
