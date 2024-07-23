import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/base/widgets/app_double_text.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';
import 'package:ticket_app/screens/widgets/hotel.dart';

import '../base/utils/app_routes.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.backgroundColor,
      body: ListView (
        children: [
          const SizedBox(height: 15),
          //Whole Screen
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Section 1
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Good Morning!", style: AppStyles.headlineStyle3),
                        const SizedBox(height: 5),
                        Text("Book Tickets", style: AppStyles.headlineStyle1),
                      ],
                    ),
                     Container(
                       width: 50,
                       height: 50,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                         image: const DecorationImage(
                           image: AssetImage(AppMedia.logo)
                         )
                       )
                     ),
                  ],
                ),
                const SizedBox(height: 20),
                //Section 2
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color(0xFFF4F6FD),
                  ),
                  child: const Row(
                    children: [
                      Icon(FluentSystemIcons.ic_fluent_search_regular, color: Color(0xFFBFC205),),
                      Text ("Search"),
                    ],
                  ),
                ),
                const SizedBox(height: 40,),
                AppDoubleText(
                  bigText: 'Upcoming Flights',
                  smallText: 'View all',
                  func: ()=>Navigator.pushNamed(context, AppRoutes.allTickets),
                ),
                const SizedBox(height: 20,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child:
                    Row(
                      children: ticketList.take(3).map((singleTicket) {
                        return TicketView(ticket:singleTicket);
                      }
                      ).toList(),
                    )
                ),
                const SizedBox(height: 40,),
                AppDoubleText(
                  bigText: 'Hotels',
                  smallText: 'View all',
                  func: (){print("Hello there!");},
                ),
                const SizedBox(height: 20,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Row(
                        children: hotelList.take(2).map((singleHotel) {
                          return Hotel(hotel:singleHotel);
                        }
                        ).toList(),
                      )
                    ]
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}