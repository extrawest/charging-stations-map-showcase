import 'package:flutter/material.dart';
import '../../generated/assets.gen.dart';

class DistanceToStation extends StatelessWidget {
  const DistanceToStation({
    super.key,
    required this.distance,
  });

  final double distance;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '${distance.toStringAsFixed(0)} m',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(width: 12),
        Assets.images.stationDetails.distance.svg(),
      ],
    );
  }
}
