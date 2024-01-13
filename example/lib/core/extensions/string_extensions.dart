extension StringExtensions on String {
  String get firstToUpper {
    return "${this[0].toUpperCase()}${substring(1)}";
  }
}
