import 'package:fades_and_beauty/core/constants/colors/colors.dart';
import 'package:fades_and_beauty/ui/screens/home/home_screen.dart';
import 'package:fades_and_beauty/ui/screens/my_profile/my_profile.dart';
import 'package:fades_and_beauty/ui/screens/notification/notification_screen.dart';
import 'package:fades_and_beauty/ui/screens/seller_mode/seller_mode_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final Color backgroundColor = primaryColor;

class MenuDashBoardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: primaryColor,
          body: Padding(
            padding: EdgeInsets.only(left: 25, top: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.arrow_back,
                  size: 30,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      child: Image.asset(
                        'assets/images/Ellipse 1.png',
                        scale: 0.6,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Dark_Emeralds',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: Colors.white,
                              size: 20,
                            ),
                            Text(
                              'Georgia',
                              style: TextStyle(color: Colors.white, fontSize: 13),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 150.h,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child: Container(
                    height: 40.h,
                    // width: double.infinity,
                    child: Row(
                      children: [
                        Icon(
                          Icons.home_outlined,
                          color: Colors.white,
                          size: 25,
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        Text(
                          'Home',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => MyProfileScreen()));
                  },
                  child: Container(
                    height: 40.h,
                    //width: 100.w,
                    child: Row(
                      children: [
                        Icon(
                          Icons.person_outline,
                          color: Colors.white,
                          size: 25,
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        Text(
                          'Profile',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => NotificationScreen()));
                  },
                  child: Container(
                    height: 40.h,
                    // width: 100.w,
                    child: Row(
                      children: [
                        Icon(
                          Icons.notifications_none_outlined,
                          color: Colors.white,
                          size: 25,
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        Text(
                          'Notification',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => SellerModeProfileScreen()));
                  },
                  child: Container(
                    height: 40.h,
                    // width: 100.w,
                    child: Row(
                      children: [
                        Icon(
                          Icons.settings_outlined,
                          color: Colors.white,
                          size: 25,
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        Text(
                          'Setting',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 200.h,
                ),
                Container(
                  height: 40.h,
                  // width: 100.w,
                  child: Row(
                    children: [
                      Icon(
                        Icons.logout,
                        color: Colors.white,
                        size: 25,
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Text(
                        'Log out',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
// Widget menu(context) {
//   return ListView(
//     padding: EdgeInsets.zero,
//     children: [
//       UserAccountsDrawerHeader(
//         decoration: BoxDecoration(color: primaryColor),
//         accountName: Text(
//           "Dark_Emeralds",
//           style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
//         ),
//         accountEmail: Row(
//           children: [
//             Icon(
//               Icons.location_on_outlined,
//               color: Colors.white,
//               size: 15,
//             ),
//             Text(
//               'Georgia',
//               style: TextStyle(color: Colors.white, fontSize: 15),
//             ),
//           ],
//         ),
//         currentAccountPicture: CircleAvatar(
//           backgroundColor: Colors.white,
//           child: ClipRRect(
//             child: Image.asset("assets/images/usericon.png"),
//             borderRadius: BorderRadius.circular(50.0),
//           ),
//         ),
//       ),
//       ListTile(
//         //leading: Icons.home_filled,
//         title: Text('Home',
//             style: TextStyle(
//                 color: Colors.blue.shade800,
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold)),
//         onTap: () {
//           Navigator.push(
//               context, MaterialPageRoute(builder: (context) => HomeScreen()));
//
//         }
//       ),
//       ListTile(
//         title: Text('Profile',
//             style: TextStyle(
//                 color: Colors.blue.shade800,
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold)),
//         onTap: () {
//           Navigator.push(
//               context, MaterialPageRoute(builder: (context) => SellerModeProfileScreen()));
//         },
//       ),
//       ListTile(
//         title: Text('Buyer Request',
//             style: TextStyle(
//                 color: Colors.blue.shade800,
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold)),
//         onTap: () {},
//       ),
//       ListTile(
//         title: Text('Message',
//             style: TextStyle(
//                 color: Colors.blue.shade800,
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold)),
//         onTap: () {},
//       ),
//       ListTile(
//         title: Text('Notification',
//             style: TextStyle(
//                 color: Colors.blue.shade800,
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold)),
//         onTap: () {
//           Navigator.push(
//               context, MaterialPageRoute(builder: (context) => NotificationScreen()));
//         },
//       ),
//       ListTile(
//         title: Text('Setting',
//             style: TextStyle(
//                 color: Colors.blue.shade800,
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold)),
//         onTap: () {
//           Navigator.push(
//               context, MaterialPageRoute(builder: (context) => PaymentMethodScreen()));
//         },
//       ),
//       SizedBox(
//         height: 50,
//       ),
//       ListTile(
//         title: Text('Logout',
//             style: TextStyle(
//                 color: Colors.blue.shade800,
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold)),
//         onTap: () {
//           // Navigator.push(
//           //   context,
//           //   MaterialPageRoute(builder: (context) => Login()),
//           // );
//         },
//       ),
//     ],
//   );
// }
