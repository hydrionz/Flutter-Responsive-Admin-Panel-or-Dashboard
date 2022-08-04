import 'package:admin/constants.dart';
import 'package:admin/screens/dashboard/components/storage_info_card.dart';
import 'package:flutter/material.dart';

import 'chart.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 2,
        child: Container(
          padding: EdgeInsets.all(defaultPadding),
          decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Storage Details",
                style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: defaultPadding,
              ),
              Chart(),
              StorageInfoCard(
                title: "Document Files",
                svgSrc: "assets/icons/Documents.svg",
                filesCount: "1563 Files",
                filesDataSize: "1.3GB",
              ),
              StorageInfoCard(
                title: "Media Files",
                svgSrc: "assets/icons/media.svg",
                filesCount: "256 Files",
                filesDataSize: "12.6GB",
              ),
              StorageInfoCard(
                title: "Other Files",
                svgSrc: "assets/icons/folder.svg",
                filesCount: "6592 Files",
                filesDataSize: "229GB",
              ),
              StorageInfoCard(
                title: "Unknown",
                svgSrc: "assets/icons/unknown.svg",
                filesCount: "2544 Files",
                filesDataSize: "63.5GB",
              ),
            ],
          ),
        ));
  }
}


