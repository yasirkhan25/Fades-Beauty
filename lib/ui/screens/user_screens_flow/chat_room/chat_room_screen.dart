import 'package:fades_and_beauty/core/constants/colors/colors.dart';
import 'package:fades_and_beauty/core/constants/custom_containers/appbar_container.dart';
import 'package:fades_and_beauty/ui/screens/manu_layout/menu_layout.dart';
import 'package:fades_and_beauty/ui/screens/user_screens_flow/chat_sceen/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'chat_room_provider.dart';

class ChatRoomScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return ChatRoomProvider();
      },
      child: Consumer<ChatRoomProvider>(builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(
            toolbarHeight: 100.h,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(20),
              ),
            ),
            title: AppBarContainer(
              name: 'Chat Room',
            ),
          ),
          drawer: MenuDashBoardPage(),
          body: Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 12, right: 12),
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFFF8F8F8),
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(width: 0.5, color: Colors.black12),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.search_outlined,
                          size: 30,
                        ),
                        hintText: 'Search for Conversation...',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  ListView.builder(
                      itemCount: chatRomUsersList.length,
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ChatScreen()),
                            );
                          },
                          child: Column(
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.12,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Color(0xFFFBFBFB),
                                  borderRadius: BorderRadius.circular(5),
                                  // boxShadow: [
                                  //   BoxShadow(
                                  //     color: primaryColor,
                                  //     offset: Offset(
                                  //         0, 0.1), // changes position of shadow
                                  //   ),
                                  // ],
                                ),
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset(
                                            chatRomUsersList[index].imageUrl,
                                            fit: BoxFit.cover,
                                            height: 60,
                                          ),
                                          SizedBox(
                                            width: 15.w,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                chatRomUsersList[index]
                                                    .name
                                                    .toString(),
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(
                                                height: 5.h,
                                              ),
                                              Text(
                                                'Lorem ipsum dolor si...',
                                                style: TextStyle(
                                                    color: Color(0xFFAEAEAE)),
                                              ),
                                            ],
                                          ),
                                          Expanded(
                                            child: SizedBox(),
                                          ),
                                          Column(
                                            children: [
                                              Icon(
                                                Icons.circle,
                                                color: Colors.green,
                                                size: 12,
                                              ),
                                              SizedBox(
                                                height: 10.h,
                                              ),
                                              Text(
                                                'Now',
                                                style: TextStyle(
                                                    color: Color(0xFFAEAEAE)),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}

/// Chat Room Users Class........................
///
///
///

class ChatRoomUsersClass {
  final String imageUrl;
  final String name;
  Widget myIcon;

  ChatRoomUsersClass({this.imageUrl, this.name, this.myIcon});
}

/// Chat Room Users List........................
///
///
///

final List<ChatRoomUsersClass> chatRomUsersList = [
  ChatRoomUsersClass(
    name: 'Maddy',
    imageUrl: 'assets/images/Ellipse 1.png',
  ),
  ChatRoomUsersClass(
    name: 'Samra',
    imageUrl: 'assets/images/Ellipse 785.png',
  ),
  ChatRoomUsersClass(
    name: 'Hania',
    imageUrl: 'assets/images/Ellipse 1.png',
  ),
  ChatRoomUsersClass(
    name: 'Noor',
    imageUrl: 'assets/images/Ellipse 785.png',
  ),
];
