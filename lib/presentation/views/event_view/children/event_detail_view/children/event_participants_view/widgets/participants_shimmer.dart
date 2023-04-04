import 'package:event_app/base/app/config/app_constants.dart';
import 'package:event_app/presentation/views/event_view/children/event_detail_view/children/event_participants_view/widgets/radio_check.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ParticipantsShimmer extends StatelessWidget {
  const ParticipantsShimmer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ElevatedButton(
                onPressed: () => {
                  // context.router.push(
                  //   ParticipantRouter(),
                  // ),
                },
                style: ButtonStyle(
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  padding: const MaterialStatePropertyAll(
                    EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 15.0,
                    ),
                  ),
                  backgroundColor: const MaterialStatePropertyAll(lightPurple),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const ParticipantsListItemShimmer(),
                ),
              ),
              const SizedBox(height: 15.0),
            ],
          );
        },
      ),
    );
  }
}

class ParticipantsListItemShimmer extends StatelessWidget {
  const ParticipantsListItemShimmer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade400,
      highlightColor: Colors.grey.shade100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 20.0,
            width: 200.0,
            decoration: BoxDecoration(
              color: BoxColor,
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Container(
            height: 20.0,
            width: 100.0,
            decoration: BoxDecoration(
              color: BoxColor,
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Container(
            height: 20.0,
            width: 100.0,
            decoration: BoxDecoration(
              color: BoxColor,
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Divider(
            color: BoxColor,
            thickness: 2.0,
          ),
          const SizedBox(
            height: 15.0,
          ),
          const RadioCheck(
            isOn: false,
            label: 'Checked-in',
            label2: '21/11/2022, 10:00AM',
          ),
          const SizedBox(height: 10.0),
          const RadioCheck(
            isOn: false,
            label: 'Collected items',
            label2: '15/03/2012, 12:35PM',
          ),
        ],
      ),
    );
  }
}
