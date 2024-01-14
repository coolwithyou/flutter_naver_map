import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:flutter_naver_map_example/pages/examples/camera_example.dart';
import 'package:flutter_naver_map_example/pages/examples/controller_example.dart';
import 'package:flutter_naver_map_example/pages/examples/overlay_example.dart';
import 'package:flutter_naver_map_example/pages/examples/pick_example.dart';
import 'package:flutter_naver_map_example/util/overlay_portal_util.dart';
import 'package:transparent_pointer/transparent_pointer.dart';

import 'pages/utils/bottom_drawer.dart';
import 'pages/utils/new_window_page.dart';
import 'design/map_function_item.dart';
import 'design/theme.dart';

import 'pages/examples/options_example.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await NaverMapSdk.instance.initialize(
      clientId: '2vkiu8dsqb',
      onAuthFailed: (error) {
        print('Auth failed: $error');
      });

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const FNMapPage(),
        theme: ExampleAppTheme.lightThemeData,
        darkTheme: ExampleAppTheme.darkThemeData);
  }
}

class FNMapPage extends StatefulWidget {
  const FNMapPage({Key? key}) : super(key: key);

  @override
  State<FNMapPage> createState() => _FNMapPageState();
}

class _FNMapPageState extends State<FNMapPage> {
  /* ----- UI Size ----- */
  late EdgeInsets safeArea;
  double drawerHeight = 0;

  final nOverlayInfoOverlayPortalController = NInfoOverlayPortalController();

  @override
  Widget build(BuildContext context) {
    safeArea = MediaQuery.of(context).padding;
    return Scaffold(
        body: PopScope(
            onPopInvoked: (didPop) => drawerTool.processWillPop(),
            child: Stack(children: [
              GestureDetector(
                  onTapDown: (details) => _onLastTouchStreamController.sink
                      .add(details.globalPosition)),
              Positioned.fill(child: TransparentPointer(child: mapWidget())),
              drawerTool.bottomDrawer,
              OverlayPortal(
                  controller: nOverlayInfoOverlayPortalController,
                  overlayChildBuilder: (context) =>
                      nOverlayInfoOverlayPortalController.builder(
                          context, mapController)),
            ])));
  }

  /*
    --- Naver Map Widget ---
  */

  late NaverMapController mapController;
  NaverMapViewOptions options = const NaverMapViewOptions();

  Widget mapWidget() {
    final mapPadding = EdgeInsets.only(bottom: drawerHeight - safeArea.bottom);
    return NaverMap(
      options: options.copyWith(contentPadding: mapPadding, initialCameraPosition: randomCameraPosition),
      onMapReady: onMapReady,
      onMapTapped: onMapTapped,
      onSymbolTapped: onSymbolTapped,
      onCameraChange: onCameraChange,
      onCameraIdle: onCameraIdle,
      onSelectedIndoorChanged: onSelectedIndoorChanged,
      onMapLoaded: () {
        nDebugPrint("onMapLoaded", icon: "🔥", pageId: 1);
      },
    );
  }

  static const testCameraPositions = [
    NCameraPosition(target: NLatLng(37.55, 126.914), zoom: 15),
    NCameraPosition(target: NLatLng(37.5, 127.028), zoom: 16),
    NCameraPosition(target: NLatLng(37.5, 127.035), zoom: 17),
    NCameraPosition(target: NLatLng(37.45, 126.944), zoom: 10),
    NCameraPosition(target: NLatLng(36.487, 127.26), zoom: 14),
    NCameraPosition(target: NLatLng(35.16, 129.058), zoom: 13),
    NCameraPosition(target: NLatLng(33.49, 126.496), zoom: 16),
  ];

// 랜덤 포지션 얻기 함수 예제. 순차적으로 가져가도 상관 없습니다.
  NCameraPosition get randomCameraPosition =>
      testCameraPositions[Random().nextInt(testCameraPositions.length)];

  /* ----- Events ----- */

  void onMapReady(NaverMapController controller) {
    mapController = controller;
    nDebugPrint("onMapReady", icon: "++", pageId: 1);
  }

  void onMapTapped(NPoint point, NLatLng latLng) async {
    // ...
  }

  void onSymbolTapped(NSymbolInfo symbolInfo) {
    // ...
  }

  void onCameraChange(NCameraUpdateReason reason, bool isGesture) {
    // ...
    _onCameraChangeStreamController.sink.add(null);
  }

  void onCameraIdle() {
    // ...
  }

  void onSelectedIndoorChanged(NSelectedIndoor? selectedIndoor) {
    // ...
  }

  final _onCameraChangeStreamController = StreamController<void>.broadcast();
  final _onLastTouchStreamController = StreamController<Offset>.broadcast();

  /*
    --- Bottom Drawer Widget ---
  */

  late final drawerTool = ExampleAppBottomDrawer(
      context: context,
      onDrawerHeightChanged: (height) => setState(() => drawerHeight = height),
      rebuild: () => setState(() {}),
      pages: pages);

  late final List<MapFunctionItem> pages = [
    MapFunctionItem(
        title: "지도 위젯 옵션 변경하기",
        description: "위젯에 보여지는 걸 바꿔봐요",
        icon: Icons.map_rounded,
        page: (canScroll) => NaverMapViewOptionsExample(
            canScroll: canScroll,
            options: options,
            onOptionsChanged: (changed) {
              if (changed != options) setState(() => options = changed);
            })),
    MapFunctionItem(
        title: "오버레이 추가 / 제거",
        description: "마커/경로/도형 등을 띄워봐요",
        icon: Icons.add_location_alt_rounded,
        isScrollPage: false,
        page: (canScroll) => NOverlayExample(
            nOverlayInfoOverlayPortalController:
                nOverlayInfoOverlayPortalController,
            canScroll: canScroll,
            mapController: mapController)),
    MapFunctionItem(
        title: "카메라 이동",
        isScrollPage: false,
        icon: Icons.zoom_in_rounded,
        description: "지도를 요리조리 움직여봐요",
        page: (canScroll) => CameraUpdateExample(
            onCameraChangeStream: _onCameraChangeStreamController.stream,
            canScroll: canScroll,
            mapController: mapController)),
    MapFunctionItem(
        title: "주변 Pickable 보기",
        description: "주변 심볼, 오버레이를 찾아봐요",
        icon: Icons.domain_rounded,
        page: (canScroll) {
          final screenSize = MediaQuery.sizeOf(context);
          return NaverMapPickExample(
            canScroll: canScroll,
            mapController: mapController,
            mapEndPoint:
                Point(screenSize.width, screenSize.height - drawerHeight),
            onCameraChangeStream: _onCameraChangeStreamController.stream,
          );
        }),
    MapFunctionItem(
        title: "기타 컨트롤러 기능",
        description: "컨트롤러 기능을 살펴봐요",
        isScrollPage: false,
        icon: Icons.sports_esports_rounded,
        page: (canScroll) => NaverMapControllerExample(
              canScroll: canScroll,
              mapController: mapController,
              onCameraChangeStream: _onCameraChangeStreamController.stream,
              onLastTouchStream: _onLastTouchStreamController.stream,
            )),
    MapFunctionItem(
      title: "새 페이지에서 지도 보기",
      icon: Icons.note_add_rounded,
      description: "테스트용이에요",
      onTap: (_) => Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const NewWindowTestPage())),
    ),
  ];
}


String get nDebugTimeStamp {
  final n = DateTime.now();
  return "${n.minute.toString().padLeft(2, "0")}:${n.second.toString().padLeft(2, "0")} ${n.microsecond.toString().padLeft(3, "0")}";
}

void nDebugPrint(String signature, {required String icon, required int pageId}) {
  print("$icon\t[$pageId] ${signature.padRight(12)}!\t$nDebugTimeStamp");
}