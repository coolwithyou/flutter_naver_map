part of flutter_naver_map;

mixin _NaverMapControlHandler {
  void onMapReady();

  void onMapTapped(NPoint point, NLatLng latLng);

  void onSymbolTapped(NSymbolInfo symbol);

  void onCameraChange(NCameraUpdateReason reason, bool animated);

  void onCameraIdle();

  void onSelectedIndoorChanged(NSelectedIndoor? selectedIndoor);

  void onMapLoaded();

  Future<dynamic> handle(MethodCall call) async {
    switch (call.method) {
      case "onMapReady":
        onMapReady();
        break;
      case "onMapTapped":
        final args = call.arguments;
        onMapTapped(
          NPoint._fromMessageable(args["nPoint"]),
          NLatLng._fromMessageable(args["latLng"]),
        );
        break;
      case "onSymbolTapped":
        onSymbolTapped(NSymbolInfo._fromMessageable(call.arguments));
        break;
      case "onCameraChange":
        final args = call.arguments;
        onCameraChange(
          NCameraUpdateReason._fromMessageable(call.arguments["reason"]),
          args["animated"],
        );
        break;
      case "onCameraIdle":
        onCameraIdle();
        break;
      case "onSelectedIndoorChanged":
        final selectedIndoor = call.arguments != null
            ? NSelectedIndoor._fromMessageable(call.arguments)
            : null;
        onSelectedIndoorChanged(selectedIndoor);
        break;
      case "onMapLoaded":
        onMapLoaded();
        break;
    }
  }
}
