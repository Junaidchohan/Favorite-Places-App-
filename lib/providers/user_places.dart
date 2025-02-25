import 'package:favorite_places/models/place.dart';
import 'package:riverpod/riverpod.dart';

class UserPlacesNotifier extends StateNotifier<List<Place>> {
  UserPlacesNotifier()
      : super([]); // Remove `const` to avoid immutability issues.

  void addPlace(String title) {
    final newPlace = Place(title: title);
    state = [newPlace, ...state]; // Correct way to update the state.
  }
}

final userPlacesProvider =
    StateNotifierProvider<UserPlacesNotifier, List<Place>>(
  (ref) => UserPlacesNotifier(),
);
