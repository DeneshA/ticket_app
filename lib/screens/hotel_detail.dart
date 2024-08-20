import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/style/app_styles.dart';
import 'package:ticket_app/base/utils/all_json.dart';

class HotelDetail extends StatefulWidget {
  const HotelDetail({super.key});

  @override
  State<HotelDetail> createState() => _HotelDetailState();
}

class _HotelDetailState extends State<HotelDetail> {
  late int index=0;

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    var args = ModalRoute.of(context)!.settings.arguments as Map;
    print(args["index"]);
    index = args["index"];
    super.didChangeDependencies();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300.0,
            floating: false,
            pinned: true,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: (){Navigator.pop(context);},
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppStyles.primaryColor
                    ),
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              title: Text(hotelList[index]["place"]),
              background: Image.asset("assets/images/${hotelList[index]["image"]}",
              fit: BoxFit.cover,)
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                  "In this article, we will create a custom scrollable app bar with a background image in Flutter. The app bar will shrink as the user scrolls up, and it will include a back button. Below the image, we will display some descriptive text with a More or Less button to show or hide additional text. Finally, we will add a section to display recent images in a horizontal list."),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "More Images",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 200.0,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                        margin: const EdgeInsets.all(16),
                        child: Image.network(
                            "https://via.placeholder.com/200x200"));
                  }),
            )
          ]))
        ],
      ),
    );
  }
}
