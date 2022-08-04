import 'package:admin/constants.dart';
import 'package:flutter/material.dart';

import 'components/header.dart';
import 'components/my_files.dart';
import 'components/storage_details.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return Container(color: Colors.green,);

    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Header(),
          SizedBox(
            height: defaultPadding,
          ),
          Row(
            children: [
              Expanded(
                flex: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MyFiles(),
                    SizedBox(height: defaultPadding,),
                    Container(
                      height: 400,
                      width: double.infinity,
                      decoration: BoxDecoration(color: secondaryColor,borderRadius: BorderRadius.all(Radius.circular(10))),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: defaultPadding,
              ),
              StorageDetails()
            ],
          )
        ]),
      ),
    );
  }
}
