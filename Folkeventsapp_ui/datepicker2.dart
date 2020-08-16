import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



class DatePicker extends StatefulWidget {

  @override
  _DatePickerState createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  DateTime _dateTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[

            FloatingActionButton(
              child: Center(child: Icon(Icons.calendar_today)),
              onPressed: () {
                showDatePicker(
                    context: context,
                    initialDate: _dateTime == null ? DateTime.now() : _dateTime,
                    firstDate: DateTime(2020),
                    lastDate: DateTime(2021)
                ).then((date) {
                  setState(() {
                    _dateTime = date;
                  });
                });
              },
            )
          ],
        ),
      ),
    );
  }
}