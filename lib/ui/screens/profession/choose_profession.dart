import 'package:fades_and_beauty/core/constants/colors/colors.dart';
import 'package:fades_and_beauty/core/constants/custom_containers/appbar_container.dart';
import 'package:fades_and_beauty/ui/screens/experience_level_charges/experience_level_charges.dart';
import 'package:fades_and_beauty/ui/screens/manu_layout/menu_layout.dart';
import 'package:flutter/material.dart';
import 'package:fades_and_beauty/core/constants/custom_buttons/custom_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'choose_profession_provider.dart';

class ChooseProfession extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return ChooseProfessionProvider();
      },
      child:
      Consumer<ChooseProfessionProvider>(builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(
            toolbarHeight: 100.h,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(20),
              ),
            ),
            title: AppBarContainer(name: 'Profession'),
          ),
          drawer: MenuDashBoardPage(),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 25.h),
                Padding(
                  padding: EdgeInsets.only(left: 20.w),
                  child: Row(
                    children: [
                      Icon(Icons.arrow_back_ios_rounded),
                      SizedBox(width: 15.w),
                      Text(
                        'Choose Profession',
                        style:
                        TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 25.h),
                Container(
                  child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: professions.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: InkWell(
                              onTap: () {
                                model.getValue(index);
                              },
                              child: Container(
                                // height: MediaQuery.of(context).size.height * 0.2,
                                child: Container(
                                  padding: EdgeInsets.all(20),
                                  decoration: model.value == index
                                      ? BoxDecoration(
                                    border: Border.all(
                                        color: primaryColor, width: 01),
                                    boxShadow: [
                                      BoxShadow(
                                        color: primaryColor,
                                        blurRadius: 2,
                                        offset: Offset(0,
                                            0), // changes position of shadow
                                      ),
                                    ],
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                  )
                                      : BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 2,
                                        offset: Offset(0,
                                            4), // changes position of shadow
                                      ),
                                    ],
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(3),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                          border: Border.all(
                                              color: Colors.black45, width: 1),
                                        ),
                                        child: Container(
                                          height: 15.h,
                                          width: 15.w,
                                          decoration: BoxDecoration(
                                            color: model.value == index
                                                ? primaryColor
                                                : Colors.white,
                                            borderRadius:
                                            BorderRadius.circular(50),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Center(
                                        child: SvgPicture.asset(
                                          professions[index].imageUrl,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        // width: double.infinity,
                                        child: Center(
                                          child: Text(
                                            professions[index].title,
                                            style: TextStyle(
                                                color: Color(0xFF5A5A5A),
                                                fontSize: 15),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],
                      );
                    },
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 5 / 4.5,
                      crossAxisSpacing: 0,
                      mainAxisSpacing: 0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ExperienceLevelCharges()),
                    );
                  },
                  child: CustomButton(
                    text: 'Save',
                  ),
                ),
              ],
            ),
          ),
          );
      }),


    );
  }
}

class MyProfession {
  final String title;
  final String imageUrl;

  MyProfession({
    this.title,
    this.imageUrl,
  });
}

///Profession Class List
final List<MyProfession> professions = [
  MyProfession(
    title: 'Barbers',
    imageUrl: 'assets/icons/Vector.svg',
  ),
  MyProfession(
    title: 'Manipadi cure',
    imageUrl: 'assets/icons/Frame.svg',
  ),
  MyProfession(
    title: 'Eyelashes care',
    imageUrl: 'assets/icons/Frame_1.svg',
  ),
  MyProfession(
    title: 'Hair Style',
    imageUrl: 'assets/icons/Frame_2.svg',
  ),
  MyProfession(
    title: 'Beauty Products',
    imageUrl: 'assets/icons/Beauty Products.svg',
  ),
  MyProfession(
    title: 'Hair Care',
    imageUrl: 'assets/icons/Group.svg',
  ),
];
