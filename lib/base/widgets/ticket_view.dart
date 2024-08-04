import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/style/app_styles.dart';
import 'package:ticket_app/base/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_app/base/widgets/big_dot.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    // Find the screen size
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.85,
      height: 179,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          children: [
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
                      Text(
                        "NYC",
                        style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                      ),
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
                      Text(
                        "LDN",
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
                        "New-York",
                        style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      Text("8H 30M",
                      style: AppStyles.headLineStyle3.copyWith(color: Colors.white),),
                      Expanded(child: Container()),
                      Text(
                        "London",
                        style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(

              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(21), bottomRight: Radius.circular(21))),
              child: Column(
                children: [
                  //Show departure and destination with icon first line
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "NYC",
                        style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                      ),
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
                      Text(
                        "LDN",
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
                        "New-York",
                        style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      Text("8H 30M",
                        style: AppStyles.headLineStyle3.copyWith(color: Colors.white),),
                      Expanded(child: Container()),
                      Text(
                        "London",
                        style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
