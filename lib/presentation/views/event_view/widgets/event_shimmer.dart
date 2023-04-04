import 'package:event_app/base/app/config/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class EventShimmer extends StatefulWidget {
  const EventShimmer({
    Key? key,
  }) : super(key: key);

  @override
  State<EventShimmer> createState() => _EventShimmerState();
}

class _EventShimmerState extends State<EventShimmer> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return const EventCardShimmer();
        },
      ),
    );
  }
}

class EventCardShimmer extends StatefulWidget {
  const EventCardShimmer({Key? key}) : super(key: key);

  @override
  State<EventCardShimmer> createState() => _EventCardShimmerState();
}

class _EventCardShimmerState extends State<EventCardShimmer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16.0),
      child: ElevatedButton(
        style: ButtonStyle(
          padding: const MaterialStatePropertyAll(EdgeInsets.zero),
          fixedSize: const MaterialStatePropertyAll(
            Size(double.maxFinite, 80.0),
          ),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          backgroundColor: const MaterialStatePropertyAll(lightPurple),
        ),
        onPressed: () {},
        child: Align(
          alignment: Alignment.center,
          child: Shimmer.fromColors(
            enabled: true,
            baseColor: Colors.grey.shade400,
            highlightColor: Colors.grey.shade100,
            child: ListTile(
              title: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: BoxColor,
                ),
                width: 50.0,
                height: 12.0,
              ),
              subtitle: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: BoxColor,
                ),
                width: 75.0,
                height: 10.0,
              ),
              trailing: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: BoxColor,
                ),
                width: 20.0,
                height: 5.0,
              ),
              leading: Container(
                decoration: BoxDecoration(
                  color: BoxColor,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                width: 45.0,
                height: 45.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: BoxColor,
                      ),
                      width: 5.0,
                      height: 5.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: BoxColor,
                      ),
                      width: 5.0,
                      height: 5.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
