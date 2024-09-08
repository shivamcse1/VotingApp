import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VotingScreen extends StatefulWidget {
  const VotingScreen({super.key});

  @override
  State<VotingScreen> createState() => VotingScreenState();
}

class VotingScreenState extends State<VotingScreen> {

  int _selectedValue=0;
  List<Color> colorList=[
    const Color(0xFFF5A1A1),
    const Color(0xFFA1D2F5),
    const Color(0xFFA1F5D3),
    const Color(0xFFBBF5A1),
  ];
  List<String> nameList=[
    "Omar D. Regalado",
    "Chester Cheng",
    "Robert Soliman",
    "Kristine Lim",
  ] ;
  List<String> imageList=[
   "assets/images/listimage1.png",
   "assets/images/listimage2.png",
   "assets/images/listimage3.png",
   "assets/images/listimage4.png",

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
           body: SingleChildScrollView(
            // physics: NeverScrollableScrollPhysics(),
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
               //!------Top Section---------/// 
              SizedBox(height: 44.h,) ,
              Container(
              margin: EdgeInsets.only(top: 10.h,left: 24.w,right: 24.w),  
              height:38.h ,
              width: 312.w,
              child:Center(
                child: TextField(
                decoration: InputDecoration(
                prefixIcon: Container(
                  alignment: Alignment.center,  
                  child: const Text(
                    'vote.org.my',
                    style: TextStyle(color:Color(0xFF64748B,),fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center, 
                  ),
                ),
                suffixIcon: IconButton(
                iconSize: 15.h,
                onPressed: (){
           
                },  
                icon:const Icon(Icons.share_outlined) ,), 
                border: OutlineInputBorder(
                 borderSide: BorderSide.none, 
                 borderRadius: BorderRadius.circular(16.r),
                ),  
                
                filled: true,
                fillColor: const Color(0xFFEDEDED),
                  
                ),
                ),
               )
              ),
           
              // const Divider(
              //   thickness: 3,
              // ),
              SizedBox(height: 10.h,),


               //!------Main body Section---------/// 

              Image.asset("assets/images/header_image.png",
              height: 142.h,
              width: double.infinity,
              fit: BoxFit.cover
              ),
              SizedBox(height: 24.h,),
              Card(
                margin: EdgeInsets.only(left: 64.w,right: 76.w),
                color: const Color(0xFFFCF4DD),                
                child: Container(
                  
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  height: 72.h,
                  width: 220.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Container(
                        margin: EdgeInsets.only(left: 41.w),
                        height: 53.h,
                        width: 55.w,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                              
                              Text("15",style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.w500),),
                              Text("Minutes",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w500),)
                          ],
                        ),
                      ),
                
                      Container(
                        margin: EdgeInsets.only(right: 41.w),
                        height: 53.h,
                        width: 55.w,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                              
                              Text("50",style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.w500),),
                              Text("Minutes",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w500),)
                          ],
                        ),
                      ),
                
                    ],
                    ),
                ),
              ),

              SizedBox(height: 38.h,),

              Container(
                margin: EdgeInsets.only(left: 24.w),
                child: Text("Who would you vote?",
                
                style: TextStyle(fontSize: 22.sp,fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(height: 12.h,),
                Container(
                margin: EdgeInsets.only(left: 24.w),
                child: Text("Please choose One Candidate to vote for",
                
                style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w500),
                ),
              ),

               ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context ,index){
               
                  return Stack(
                    children: [
                      
                    Card(
                    color: colorList[index],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r)
                    ),
                     margin: EdgeInsets.only(left: 24.w,right: 24.w,bottom: 15.h),
                     child: SizedBox(
                     height: 114.h,
                     child: Row(
                      children: [
                         
                         Container(
                          margin: EdgeInsets.only(left: 20.w),
                           height: 114.h,
                           width: 77.w,
                           child: Image.asset(imageList[index]),
                         ),
                         SizedBox(width: 16.w,),
                         Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Container(
                              margin: EdgeInsets.only(bottom: 12.h,top: 33.h),
                              child: Text(nameList[index],
                              style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w500),
                              ),
                             ),
                             Text("Lorem ipsum loremipsum",
                             style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w500),
                             )
                             
                           ],
                         ),
                        
                        ],
                       ),
                      ),
                     ),
                    Positioned(
                       right: 17.w,
                       bottom: 90.h,
                      child: Radio(
                          activeColor: const Color(0xFF274757),
                          value: index,
                          groupValue: _selectedValue,
                          onChanged: (value){
                            setState(() {
                              _selectedValue=value!;
                            });
                          }
                        ),
                    ),
                  
                    ],
                  );
                
                 },
                itemCount: imageList.length,
               
               ),
               SizedBox(height: 141.h,),
                 
               //!------Bottom Section---------///  
               const Divider(thickness: 1,
                height: 1,
               ),
               SizedBox(
               height: 30.h,
               width: double.infinity,
               child:SizedBox(
                width: 99.w,
                height: 22.h,
                child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   const Icon(Icons.lock_clock_outlined,color: Color(0xFF64748B),),
                   SizedBox(width: 12.w,),
                   Text("lorem.org.my",
                   style: TextStyle(fontSize: 10.sp,color: const Color(0xFF64748B)),
                   ),
                 ]
                ),
                )
              ), 
            ]
           )
           )
    );
  }
}