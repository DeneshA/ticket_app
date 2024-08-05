import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/style/app_styles.dart';
import 'package:ticket_app/base/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_app/base/widgets/big_circle.dart';
import 'package:ticket_app/base/widgets/big_dot.dart';
import 'package:ticket_app/base/widgets/text_style_fourth.dart';
import 'package:ticket_app/base/widgets/text_style_third.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    // Find the screen size
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.85,
      height:8179,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          children:[
              // Blue part of the ticket
            Container(

              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: AppStyles.ticketBlue,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(21), topRight: Radius.circular(21))),
              child: Column(
                children: [
                  //Show departure and destination with icon first line
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TextStyleThird(text: "NYC",),
                      Expanded(child: Container()),
                      const BigDot(),
                      //Stack  widget uses for over lapping items
                      Expanded(
                          child: Stack(children: [
                        //LayoutBuilder() - to get the width / available space between 2 widgets
                        //Flex() - leave space between 2 widget / '--'
                        //List.generate() - generate No. of widget/ '-'
                        //SizeBox() - either use sizedBox or Container to display widget/'-'
                        const SizedBox(
                          height: 24,
                          child: AppLayoutbuilderWidget(
                            randomDivider: 6,
                          )),
                        Center(
                          child: Transform.rotate(
                              angle: 1.57,
                              child:  const Icon(
                                Icons.local_airport_rounded,color:Colors.white,
                              )),)
                      ])),
                      const BigDot(),
                      Expanded(child: Container()),
                      const TextStyleThird(text: "LDN",),
                    ],
                  ),
                  const SizedBox(height: 3),
                  //Show departure and destination names with time
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(
                        width: 100,
                        child: TextStyleFourth(text: 'New-York',),
                      ),
                      Expanded(child: Container()),
                      const TextStyleFourth(text: "08H 30M"),
                      Expanded(child: Container()),
                      const SizedBox(
                        width: 100,
                        child: TextStyleFourth(text: "London",align: TextAlign.end,),
                      )
                    ],
                  )
                ],
              ),
            ),
            //Circles and Dots
            Container(
              // height: 20,
              color: AppStyles.ticketOrange,
              child: const Row(
                children:[

                  BigCircle(isRight: false),
                  Expanded(child: AppLayoutbuilderWidget(randomDivider: 16,width: 6,)),
                  BigCircle(isRight: true)
                ],
              ),
            ),
            // Orange part of the ticket
            Container(

              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: AppStyles.ticketOrange,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(21), bottomRight: Radius.circular(21))),
              child: Column(
                children: [
                  //Show departure and destination with icon first line
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "1 May",
                        style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      Text("08:00 AM", style: AppStyles.headLineStyle3.copyWith(color: Colors.white),),
                      Expanded(child: Container()),
                      Text(
                        "23",
                        style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                      )
                    ],
                  ),
                  const SizedBox(height: 3),
                  //Show departure and destination names with time
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Date",
                        style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      Text("Departure time",
                        style: AppStyles.headLineStyle3.copyWith(color: Colors.white),),
                      Expanded(child: Container()),
                      Text(
                        "Number",
                        style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
