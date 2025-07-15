abstract class SearchEvent {}

class SearchQueryChanged extends SearchEvent {
  final String query;

  SearchQueryChanged(this.query);
}

class SearchFocusChanged extends SearchEvent {
  final bool hasFocus;

  SearchFocusChanged(this.hasFocus);
}
