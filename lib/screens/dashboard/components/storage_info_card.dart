
import 'package:admin/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class StorageInfoCard extends StatelessWidget {
  const StorageInfoCard({
    Key key,
    this.title,
    this.svgSrc,
    this.filesCount,
    this.filesDataSize,
  }) : super(key: key);

  final String title, svgSrc, filesCount, filesDataSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      margin: EdgeInsets.only(top: defaultPadding),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: primaryColor.withOpacity(0.15),
        ),
        borderRadius: BorderRadius.all(Radius.circular(defaultPadding)),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 20,
            height: 20,
            child: SvgPicture.asset(svgSrc),
          ),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      filesCount,
                      style: Theme.of(context)
                          .textTheme
                          .caption
                          .copyWith(color: Colors.white70),
                    )
                  ],
                ),
              )),
          Text(filesDataSize)
        ],
      ),
    );
  }
}