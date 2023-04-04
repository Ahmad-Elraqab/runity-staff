import 'package:event_app/base/app/config/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:shimmer/shimmer.dart';

class ParticipantsGridShimmer extends StatefulWidget {
  const ParticipantsGridShimmer({
    Key? key,
  }) : super(key: key);

  @override
  State<ParticipantsGridShimmer> createState() =>
      _ParticipantsGridShimmerState();
}

class _ParticipantsGridShimmerState extends State<ParticipantsGridShimmer> {
  @override
  Widget build(BuildContext context) {
    return StaggeredGrid.count(
      crossAxisCount: 4,
      mainAxisSpacing: 17.0,
      crossAxisSpacing: 20.0,
      children: [
        for (var i = 0; i < 3; i++)
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: i == 0 ? 3 : 1.5,
            child: Container(
              decoration: BoxDecoration(
                color: BoxColor,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Center(
                child: Shimmer.fromColors(
                  baseColor: Colors.grey.shade400,
                  highlightColor: Colors.grey.shade100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 30.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                          color: BoxColor,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        height: 20.0,
                        width: 100.0,
                        decoration: BoxDecoration(
                          color: BoxColor,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
