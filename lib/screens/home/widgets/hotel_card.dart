import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class HotelCard extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelCard({super.key, required this.hotel});
  
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width*0.6,
      height: 350,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppStyles.primaryColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              color: AppStyles.primaryColor,
              borderRadius: BorderRadius.circular(9),
              image: DecorationImage(
                image: AssetImage(AppMedia.hotelRoom),
                fit: BoxFit.cover
              )
            ),
          ),
          SizedBox(height: 10), 
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              hotel["place"], 
              style: AppStyles.headlineStyle1.copyWith(
                color: AppStyles.kakiColor
              )
            ),
          ),
          SizedBox(height: 5), 
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              hotel["destination"], 
              style: AppStyles.headlineStyle3.copyWith(
                color: Colors.white
              )
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "\$${hotel["price"]}/night", 
              style: AppStyles.headlineStyle3.copyWith(
                color: AppStyles.kakiColor
              )
            ),
          )
        ],
      ),
    );
  }
}