import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../Widgets/EventCard.dart';
import '../Widgets/ProjectTile.dart';
import '../Widgets/creator_list.dart';
import '../Widgets/top_nav_bar.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});
  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xffF1F1EF),
      body: Column(children: [
        TopNavBar(),
        Expanded(
          child: Row(
            children: [
              Flexible(
                flex: 3,
                child: Container(
                  color: const Color(0xffF1F1EF),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            height: 250,
                            width: size.width * 0.9,
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight,
                                colors: [Color(0xff3B1ACF), Color(0xffF9AEAD)],
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 20,
                                  top: 30,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "ETHEREUM 2.0",
                                        style: TextStyle(
                                          color: Colors.white70,
                                          fontSize: 14,
                                          letterSpacing: 1.5,
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      const Text(
                                        "Top Rating\nProject",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 28,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      SizedBox(
                                        width: size.width * 0.4,
                                        child: const Text(
                                          "Trending project and high rating\nProject Created by team.",
                                          style: TextStyle(
                                            color: Colors.white70,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 20),
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              const Color(0xff261B4C),
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20, vertical: 12),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                        ),
                                        child: const Text("Learn More.",
                                            style:
                                                TextStyle(color: Colors.white)),
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  right: 10,
                                  top: 10,
                                  child: SizedBox(
                                    width: 250,
                                    height: 240,
                                    child: Image.asset(
                                        "assets/images/DALL_E_.png",
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            _buildProjectContainer(size),
                            const SizedBox(width: 20),
                            _buildCreatorContainer(size),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Container(
                            width: size.width * 0.9,
                            height: 400,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    blurRadius: 10)
                              ],
                            ),
                            padding: const EdgeInsets.all(20),
                            child: SfCartesianChart(
                              title: const ChartTitle(
                                  text: 'Overall Performance Over the Years'),
                              legend: const Legend(isVisible: true),
                              primaryXAxis: CategoryAxis(
                                axisLine: AxisLine(
                                    color: Colors.black.withOpacity(1),
                                    width: 2),
                                majorGridLines: MajorGridLines(
                                    color: Colors.black.withOpacity(0),
                                    width: 1),
                              ),
                              primaryYAxis: NumericAxis(
                                minimum: 0,
                                maximum: 60,
                                interval: 10,
                                axisLine: AxisLine(
                                    color: Colors.black.withOpacity(1),
                                    width: 2),
                                majorGridLines: MajorGridLines(
                                    color: Colors.black.withOpacity(0),
                                    width: 1),
                              ),
                              series: [
                                SplineSeries<ChartData, String>(
                                  name: 'Pending Done',
                                  dataSource: getChartData(),
                                  xValueMapper: (ChartData data, _) =>
                                      data.year,
                                  yValueMapper: (ChartData data, _) =>
                                      data.pending,
                                  color: const Color(0xff5041BC),
                                  width: 4,
                                ),
                                SplineSeries<ChartData, String>(
                                  name: 'Project Done',
                                  dataSource: getChartData(),
                                  xValueMapper: (ChartData data, _) =>
                                      data.year,
                                  yValueMapper: (ChartData data, _) =>
                                      data.done,
                                  color: const Color(0xffDF8C9A),
                                  width: 4,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 0,
                child: Container(
                  color: const Color(0xff1B254B),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "GENERAL 10:00 AM TO 7:00 PM",
                            style: TextStyle(
                                fontSize: 17.5,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ),
                        const SizedBox(height: 20),
                        _buildCalendar(),
                        const SizedBox(height: 20),
                        const EventCard(
                            title: "Today Birthday",
                            count: 2,
                            buttonText: "Birthday Wishing",
                            images: [
                              "assets/images/male.png",
                              "assets/images/male.png"
                            ]),
                        const SizedBox(height: 20),
                        const EventCard(
                            title: "Anniversary",
                            count: 3,
                            buttonText: "Anniversary Wishing",
                            images: [
                              "assets/images/male.png",
                              "assets/images/male.png",
                              "assets/images/male.png"
                            ]),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }

  Widget _buildProjectContainer(Size size) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 10),
        child: Container(
          height: 300,
          decoration: BoxDecoration(
              color: const Color(0xff101C44),
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 15),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text("All Projects",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w700)),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  children: const [
                    ProjectTile(
                        imageAsset: "assets/images/jpeg-optimizer_IMG_0978.JPG",
                        title: "Technology behind the Blockchain",
                        projectId: "#1",
                        isActive: true),
                    ProjectTile(
                        imageAsset: "assets/images/jpeg-optimizer_IMG_0978.JPG",
                        title: "Technology behind the Blockchain",
                        projectId: "#1",
                        isActive: false),
                    ProjectTile(
                        imageAsset: "assets/images/jpeg-optimizer_IMG_0978.JPG",
                        title: "Technology behind the Blockchain",
                        projectId: "#1",
                        isActive: false),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCreatorContainer(Size size) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.only(right: 20, top: 10),
        child: Container(
          height: 300,
          decoration: BoxDecoration(
              color: const Color(0xff101C44),
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 15),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text("Top Creators",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w700)),
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Text("Image",
                            style: TextStyle(
                                color: Colors.white60, fontSize: 14))),
                    Expanded(
                        flex: 3,
                        child: Text("Name",
                            style: TextStyle(
                                color: Colors.white60, fontSize: 14))),
                    Expanded(
                        flex: 2,
                        child: Text("Artworks",
                            style: TextStyle(
                                color: Colors.white60, fontSize: 14))),
                    Expanded(
                        flex: 2,
                        child: Text("Rating",
                            style: TextStyle(
                                color: Colors.white60, fontSize: 14))),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  children: const [
                    CreatorTile(
                        imageAsset: "assets/images/jpeg-optimizer_IMG_0978.JPG",
                        username: "@maddison_c21",
                        artworks: "9821",
                        progress: 0.8),
                    CreatorTile(
                        imageAsset: "assets/images/jpeg-optimizer_IMG_0978.JPG",
                        username: "@karl.will02",
                        artworks: "7032",
                        progress: 0.6),
                    CreatorTile(
                        imageAsset: "assets/images/jpeg-optimizer_IMG_0978.JPG",
                        username: "@john_doe",
                        artworks: "12000",
                        progress: 0.9),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCalendar() {
    return Container(
      height: 225,
      width: 250,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: Colors.white),
      child: CalendarDatePicker(
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime.now(),
        onDateChanged: (date) {
          print("Selected date: $date");
        },
      ),
    );
  }

  List<ChartData> getChartData() {
    return [
      ChartData('2015', 30, 20),
      ChartData('2016', 25, 18),
      ChartData('2017', 40, 35),
      ChartData('2018', 20, 15),
      ChartData('2019', 45, 40),
      ChartData('2020', 35, 30),
      ChartData('2023', 55, 50),
    ];
  }
}

class ChartData {
  final String year;
  final double pending;
  final double done;
  ChartData(this.year, this.pending, this.done);
}
