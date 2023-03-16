import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../bloc/maps_cubit.dart';
import '../widgets/map_type_option.dart';

import 'apply_settings_button.dart';

class MapsSettingBottomSheet extends StatefulWidget {
  const MapsSettingBottomSheet({
    super.key,
    required this.selectedType,
    required this.onSelect,
  });

  final MapType selectedType;
  final ValueSetter<MapType> onSelect;

  static Future<void> show(
    BuildContext context, {
    required MapType selectedType,
    required ValueSetter<MapType> onSelect,
  }) async {
    await showModalBottomSheet(
      context: context,
      useRootNavigator: true,
      isScrollControlled: false,
      builder: (_) => Wrap(
        children: [
          MapsSettingBottomSheet(
            selectedType: context.read<MapsCubit>().state.mapType,
            onSelect: context.read<MapsCubit>().setMapType,
          ),
        ],
      ),
    );
  }

  @override
  State<MapsSettingBottomSheet> createState() => _MapsSettingBottomSheetState();
}

class _MapsSettingBottomSheetState extends State<MapsSettingBottomSheet> {
  late MapType _mapType = widget.selectedType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(height: 10),
          const _Bar(),
          const SizedBox(height: 20),
          _buildTitle(context),
          const SizedBox(height: 30),
          _buildOptions(),
          const SizedBox(height: 30),
          const _Splitter(),
          const SizedBox(height: 30),
          ApplySettingsButton(
            onPressed: () {
              widget.onSelect(_mapType);
              context.pop();
            },
          ),
          const SizedBox(height: 56),
        ],
      ),
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        'Map Type',
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }

  Widget _buildOptions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MapTypeOption.normal(
          isSelected: _mapType == MapType.normal,
          onPressed: () => _setMapType(MapType.normal),
        ),
        MapTypeOption.satellite(
          isSelected: _mapType == MapType.satellite,
          onPressed: () => _setMapType(MapType.satellite),
        )
      ],
    );
  }

  void _setMapType(MapType mapType) {
    setState(() {
      _mapType = mapType;
    });
  }
}

class _Bar extends StatelessWidget {
  const _Bar();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 4,
      width: 67,
      decoration: BoxDecoration(
        color: Theme.of(context).dividerColor,
        borderRadius: BorderRadius.circular(30),
      ),
    );
  }
}

class _Splitter extends StatelessWidget {
  const _Splitter();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 1,
      color: Theme.of(context).dividerColor,
    );
  }
}
