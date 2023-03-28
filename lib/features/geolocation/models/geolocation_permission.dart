enum GeolocationPermission {
  unset,
  allowed,
  denied;

  bool get isDenied => this == GeolocationPermission.denied;
}
