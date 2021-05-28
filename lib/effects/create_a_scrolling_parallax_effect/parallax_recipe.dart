import 'package:flutter/material.dart';
import 'package:flutter_cookbook/effects/create_a_scrolling_parallax_effect/location.dart';
import 'package:flutter_cookbook/effects/create_a_scrolling_parallax_effect/location_list_item.dart';

class ParallaxRecipe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          for (final location in locations)
            LocationListItem(
              imageUrl: location.imageUrl,
              name: location.name,
              country: location.place,
            )
        ],
      ),
    );
  }
}
