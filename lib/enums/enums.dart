enum PredictionDate { today, tomorrow }

enum TabItems { all, favourite }

enum MatchInfoItems {predictions, last_5}


/// A utility with extensions for enum name and serialized value.
extension TabItemsX on TabItems{
  String get modifiedName => this == TabItems.all ? 'All Tips' : 'Favourites';
}

/// A utility with extensions for enum name and serialized value.
extension MatchInfoItemsX on MatchInfoItems{
  String get modifiedName => this == MatchInfoItems.predictions ? 'Predictions' : 'Last 5 stats';
}
