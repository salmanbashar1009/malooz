class SearchState {
  final bool showList;
  final String query;
  final Map<String, List<String>> filteredData;

  SearchState({
    required this.showList,
    required this.query,
    required this.filteredData,
  });

  SearchState copyWith({
    bool? showList,
    String? query,
    Map<String, List<String>>? filteredData,
  }) {
    return SearchState(
      showList: showList ?? this.showList,
      query: query ?? this.query,
      filteredData: filteredData ?? this.filteredData,
    );
  }
}
