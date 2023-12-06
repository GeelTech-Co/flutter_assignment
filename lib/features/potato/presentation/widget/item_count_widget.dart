
import 'package:assignment_test/config/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ItemCountWidget extends StatelessWidget {
  const ItemCountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            for(var i=0;i<5;i++)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: AppColors.blackColor,
                  height: 40,
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: Center(child: Text('$i',style: const TextStyle(color: AppColors.whiteColor),)),
                ),
              ),
          ],
        ),
        const Divider(thickness: 5,color: AppColors.blackColor,),

      ],
      
    );
  }
}