extension EnumByNameOrNull<T extends Enum> on Iterable<T> {
  T? byNameOrNull({required String name}) {
    for (final value in this) {
      if (value.name == name) {
        return value;
      }
    }
    return null;
  }
}
