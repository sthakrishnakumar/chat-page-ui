import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatSearchBar extends StatelessWidget {
  const ChatSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildChatSearchBar(context);
  }
}

Widget _buildChatSearchBar(context) {
  return Container(
    margin: EdgeInsets.only(
      top: 8.h,
      left: 15.w,
      right: 15.w,
    ),
    padding: EdgeInsets.symmetric(
      horizontal: 16.0.sp,
    ),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(
        12.0.r,
      ),
      // border: Border.all(width: .1, color: Colors.grey[800]!),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.075),
          offset: const Offset(0.0, 1.0),
          blurRadius: 15.0.r,
        )
      ],
    ),
    child: TextFormField(
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        icon: Padding(
          padding: EdgeInsets.only(
            top: 4.h,
          ),
          child: Icon(
            Icons.search,
            size: 22.sp,
          ),
        ),
        hintStyle: GoogleFonts.poppins(
          color: Colors.grey[700],
          fontSize: 13.sp,
        ),
        border: InputBorder.none,
        hintText: 'Search for Product,Brands and More',
      ),
    ),
  );
}
