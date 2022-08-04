import 'package:fades_and_beauty/core/constants/custom_containers/appbar_container.dart';
import 'package:fades_and_beauty/ui/screens/manu_layout/menu_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExperienceLevel extends StatefulWidget {
  @override
  _ExperienceLevelState createState() => _ExperienceLevelState();
}

class _ExperienceLevelState extends State<ExperienceLevel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 100.h,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        title: AppBarContainer(
          name: 'Experience level',
          subname: '',
        ),
      ),
      drawer: MenuDashBoardPage(),
      body: Padding(
        padding: EdgeInsets.only(top: 10,left: 25,right: 25),
        child: Column(
          children: [

            Padding(
              padding: EdgeInsets.only(top: 10,bottom: 10),
              child: Row(
                children: [
                  Icon(Icons.arrow_back_ios_rounded),
                  SizedBox(width: 15.w),
                  Text(
                    'Choose Experience',
                    style:
                    TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),

                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: experiencelist.length,
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Image.asset(
                            experiencelist[index].imageUrl,
                            fit: BoxFit.fitWidth,
                            // alignment: Alignment.center,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Image.asset(
                            experiencelist[index].image2Url,
                            fit: BoxFit.fitWidth,
                            //alignment: Alignment.center,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 30,top: 40),
                          child: Text(experiencelist[index].name,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

class ExperienceLevelOption {
  final String imageUrl;
  final String image2Url;
  final String name;

  ExperienceLevelOption({this.imageUrl, this.name,this.image2Url});
}

final List<ExperienceLevelOption> experiencelist = [
  ExperienceLevelOption(
    name: 'Super Star',
    imageUrl: 'assets/images/Group 5780.png',
    image2Url: 'assets/images/Vector.png'
  ),
  ExperienceLevelOption(
      name: 'All Star',
      imageUrl: 'assets/images/Rectangle 204.png',
      image2Url: 'assets/images/Mask Group.png'
  ),
  ExperienceLevelOption(
      name: 'Veteran',
      imageUrl: 'assets/images/Group 5800.png',
      image2Url: 'assets/images/Group 5800.png',
  ),
  ExperienceLevelOption(
      name: 'Rookie Sensation',
      imageUrl: 'assets/images/Rectangle 206.png',
      image2Url: 'assets/images/Group 5802.png'
  ),
];
