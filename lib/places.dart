import 'package:favorite_places/add_place.dart';
import 'package:favorite_places/places_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:favorite_places/user_places.dart';

class PlacesScreen extends ConsumerWidget {
  const PlacesScreen({super.key});
  @override
  Widget build(BuildContext context,WidgetRef ref) {
//listener to data changes
final userPlaces= ref.watch(userPlaceProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('your places'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) => const AddPlaceScreen(),
                ),
              );
            },
          ),
        ],
      ),
      body: PlacesList(
        places: userPlaces,
      ),
    );
  }
}
