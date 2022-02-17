enum PredictionDate { today, tomorrow }

enum TabItems { all, favourite }


/// A utility with extensions for enum name and serialized value.
extension ExtTabItems on TabItems{
  String get modifiedName => this == TabItems.all ? 'All Tips' : 'Favourites';
}
