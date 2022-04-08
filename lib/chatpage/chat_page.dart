import 'package:cached_network_image/cached_network_image.dart';
import 'package:chat_page_ui/chatpage/chat_search_bar.dart';
import 'package:chat_page_ui/chatpage/online_status.dart';
import 'package:chat_page_ui/models/ChatModel.dart';
import 'package:chat_page_ui/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Messages',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.sp,
                  ),
                ),
                Text(
                  'Edit',
                  style: TextStyle(
                    color: Constant.kprimaryColor,
                    fontSize: 14.sp,
                  ),
                ),
              ],
            ),
          ),
          const ChatSearchBar(),
          SizedBox(
            height: 5.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 15.w,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '   ONLINE FRIENDS',
                  style: TextStyle(
                    fontSize: 14.sp,
                  ),
                ),
                const OnlineStatus(),
                // SizedBox(
                //   height: 5.h,
                // ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10.w,
            ),
            child: ListView.separated(
              separatorBuilder: ((context, index) {
                return SizedBox(
                  height: 6.h,
                );
              }),
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: ChatModel.imageList.length,
              itemBuilder: (BuildContext context, int index) {
                final _item = ChatModel.imageList[index];
                return Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.w,
                  ),
                  child: ListTile(
                    tileColor: Colors.white,
                    style: ListTileStyle.list,
                    leading: CircleAvatar(
                      radius: 25.r,
                      backgroundImage: CachedNetworkImageProvider(_item.image),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          _item.name,
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 16.sp,
                          ),
                        ),
                        Text(
                          'data',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 14.sp,
                          ),
                        ),
                      ],
                    ),
                    subtitle: Text(
                      _item.title!,
                      style: TextStyle(fontSize: 14.sp),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
