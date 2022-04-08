import 'package:cached_network_image/cached_network_image.dart';
import 'package:chat_page_ui/models/ChatModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnlineStatus extends StatelessWidget {
  const OnlineStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _data = ChatModel.imageList;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      height: 50.h,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: _data.length,
        itemBuilder: (context, index) {
          return _data[index].isOnline == true
              ? Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 4.w),
                      child: CircleAvatar(
                        maxRadius: 27.r,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          maxRadius: 25.r,
                          backgroundImage:
                              CachedNetworkImageProvider(_data[index].image),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 45.w,
                      top: 31.h,
                      child: CircleAvatar(
                        radius: 7.r,
                        backgroundColor: Colors.white,
                      ),
                    ),
                    Positioned(
                      left: 46.w,
                      top: 32.h,
                      child: ChatModel.imageList[index].isOnline
                          ? CircleAvatar(
                              radius: 6.r,
                              backgroundColor: Colors.green,
                            )
                          : const SizedBox.shrink(),
                    ),
                  ],
                )
              : const SizedBox.shrink();
        },
      ),
    );
  }
}
