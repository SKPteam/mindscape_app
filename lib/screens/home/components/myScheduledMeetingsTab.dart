import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mindscape_app/models/scheduledMeeting.dart';
import 'package:mindscape_app/sizes_helpers.dart';


class MyScheduledMeetings extends StatelessWidget{

  final List<ScheduledMeeting> scheduledMeetingsList = [
    ScheduledMeeting('Dr Charles Richard', 'assets/images/splash_screen.png', 'Relationship', '1wk', '13:00', '12/03/2021 - 19/03/2021'),
    ScheduledMeeting('Brenda Shaw', 'assets/images/splash_screen.png', 'Fitness', '30mins', '13:00', '12/03/2021'),
    ScheduledMeeting('Kunle Toriola', 'assets/images/splash_screen.png', 'Career', '30mins', '13:00', '12/03/2021'),
    ScheduledMeeting('Sharon Okocha', 'assets/images/splash_screen.png', 'Depression', '1wk', '13:00', '12/03/2021 - 19/03/2021'),
    ScheduledMeeting('Dr Timothy Benson', 'assets/images/splash_screen.png', 'Parenting', '30mins', '13:00', '12/03/2021'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top:displayHeight(context)*0.049),
        child: SizedBox(
            height: displayHeight(context)*0.22,
            child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(12, 12),
                        blurRadius: 12,
                        color: Colors.black38,
                        spreadRadius: -4
                    ),
                  ],
                ),
                child: Column(
                    children: [
                      Row(
                          children: [
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                                child: Row(
                                    children: [
                                      Text(
                                        'My scheduled meetings',
                                        style: TextStyle(
                                            fontSize: displayWidth(context)*0.042,
                                            color: Color(0xff575757)
                                        ),
                                      ),
                                      Container(
                                          margin: EdgeInsets.only(left:displayWidth(context)*0.14),
                                          decoration: BoxDecoration(
                                              color: Color(0xff266C29),
                                              borderRadius: BorderRadius.circular(15.0)
                                          ),
                                          child: Padding(
                                              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                                              child: Text(
                                                  '0', style: TextStyle(
                                                  fontSize: displayWidth(context)*0.042,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500
                                              ))
                                          ),
                                      )
                                    ]
                                ),
                            )
                          ]
                      ),
                      Expanded(
                        child: new ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: scheduledMeetingsList.length,
                            itemBuilder: (BuildContext context, int index)=>buildAppointmentCard(context, index)

                        ),
                      )
                    ]
                )
            )
        )
    );
  }

  Widget buildAppointmentCard(BuildContext context, int index){
    final appointment = scheduledMeetingsList[index];
    return Container(
      margin: EdgeInsets.only(left: 8, bottom: 8, right: 8),
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6.0),
          ),
        color: Colors.grey[300],
        child: Container(
          padding: EdgeInsets.all( 10.0),
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 70.0,
                    height: 70.0,
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35.0),
                      image: DecorationImage(
                        image: AssetImage(appointment.image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 2.0),
                    child: Text(
                        appointment.name,
                        style: TextStyle(
                            color: Color(0xff266C29),
                            fontWeight: FontWeight.bold)
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 2.0),
                    child: Text(
                        appointment.category,
                        style: TextStyle(
                            color: Color(0xff266C29)
                        )
                    )
                  ),
                  Padding(
                      padding: EdgeInsets.only(bottom: 4.0),
                      child: Row(
                        children: [
                          Text(appointment.type, style: TextStyle(color: Color(0xff266C29), fontWeight: FontWeight.bold)),
                          Text(' ('+appointment.time+')'),
                        ],
                      ),
                  ),

                  Text(
                    appointment.date, style: TextStyle(color: Color(0xff000000), fontWeight: FontWeight.bold)
                  ),
                ]
              )
            ],
          ),
        )
      ),
    );
  }

}