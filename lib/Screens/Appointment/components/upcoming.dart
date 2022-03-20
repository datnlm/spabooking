import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:spa_booking/models/service.dart';
import 'package:spa_booking/utils/constants.dart';
class UpcomingServiceBox extends StatelessWidget{
  Service2 service;
  UpcomingServiceBox({required this.service});
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.only(left: 10, right: 10,top: 10, bottom: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: ColorConstants.mainColor
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(StrConstants.imgPath+"spa1.png",width: size.width*0.28,height: size.width*0.28,fit: BoxFit.fill,),
                  SizedBox(width: 8,),
                  Container(
                    width: size.width*0.55,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          service.name,
                          style: TextStyle(
                              color: ColorConstants.textColorBold,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 3,),
                        Text(
                          "Address: ",
                          // "Address: "+service.spa.address,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 3,),
                        Text(
                          "Date: ",
                          // "Date: "+service.spa.address,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 3,),
                        Text(
                          "Time: ",
                          // "Time: "+service.spa.address,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 3,),
                        Text(
                          "Phone: ",
                          // "Phone: "+service.spa.phone,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 3,),
                      ],
                    ),
                  )

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 70,
                    height: 22,
                    child: RaisedButton(
                      onPressed: (){},
                      color: Colors.black45,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))
                      ),
                      child: Text(
                        "Cancel",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          fontSize: 12
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    width: 70,
                    height: 22,
                    child: RaisedButton(
                      onPressed: (){},
                      color: ColorConstants.mainColorBold,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))
                      ),
                      child: Text(
                        "Detail",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          fontSize: 12
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        SizedBox(height: 10,)
      ],
    );
  }

}