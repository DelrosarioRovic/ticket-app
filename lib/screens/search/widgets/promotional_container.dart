import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class PromotionalContainer extends StatelessWidget {
  const PromotionalContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      spacing: 15,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: size.width*.43,
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Container(
                height: 190,
                width: 300,
                decoration: BoxDecoration(
                  color: AppStyles.primaryColor,
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: AssetImage(AppMedia.planeImage),
                    fit: BoxFit.cover
                  )
                ),
              ),
              SizedBox(height: 12),
              Text("20% discount on the early booking of this flight. Don't miss.", style: AppStyles.headlineStyle2,),
              SizedBox(height: 30),
            ],
          ),
        ),
        Container(
          width: size.width*.43,
          child: Column(
            spacing: 10,
            children: [
              Stack(
                children: [
                  Container(
                    height: 195,
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: AppStyles.discountColor
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Discount\nfor survey", 
                          style: AppStyles.headlineStyle2.copyWith(
                            color: Colors.white
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Take the survey about our\nservices and get discount", 
                          style: AppStyles.headlineStyle3.copyWith(
                            color: Colors.white
                          )
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: -45,
                    top: -45,
                    child: Container(
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 18,
                        color: const Color.fromARGB(255, 20, 119, 119)
                      )
                    ),
                  )
                )
                ],
              ),
              Container(
                height: 195,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.deepOrange,
                ),
                child: Column(
                  children: [
                    Text(
                      "Take love", 
                      style: AppStyles.headlineStyle2.copyWith(
                        color: Colors.white
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "😀", 
                          style: TextStyle(
                            fontSize: 24
                          )
                        ),
                        Text(
                          "🥰", 
                          style: TextStyle(
                            fontSize: 32
                          )
                        ),
                        Text(
                          "😍", 
                          style: TextStyle(
                            fontSize: 24
                          )
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}