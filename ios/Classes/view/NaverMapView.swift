import NMapsMap

internal class NaverMapView: NSObject, FlutterPlatformView {
    private let naverMap: NMFNaverMapView!
    private let naverMapViewOptions: NaverMapViewOptions
    private let naverMapControlSender: NaverMapControlSender
    private var eventDelegate: NaverMapViewEventDelegate!
    private var cacheDelegate: NaverMapOfflineCacheDelegate!

    init(frame: CGRect, options: NaverMapViewOptions, channel: FlutterMethodChannel, overlayController: OverlayController) {
        naverMap = NMFNaverMapView(frame: frame)
        naverMapViewOptions = options
        naverMapControlSender = NaverMapController(naverMap: naverMap, channel: channel, overlayController: overlayController)
        super.init()

        naverMapViewOptions.updateWithNaverMapView(naverMap: naverMap, isFirst: true)
        onMapReady()
    }

    private func onMapReady() {
        setMapEventListener()
        naverMapControlSender.onMapReady()
    }

    private func setMapEventListener() {
        eventDelegate = NaverMapViewEventDelegate(sender: naverMapControlSender,
                initializeConsumeSymbolTapEvents: naverMapViewOptions.consumeSymbolTapEvents)
        eventDelegate.registerDelegates(mapView: naverMap.mapView)
        cacheDelegate = NaverMapOfflineCacheDelegate(sender: naverMapControlSender)
        cacheDelegate.startObserve()
    }

    func view() -> UIView {
        naverMap
    }

    deinit {
        eventDelegate.unregisterDelegates(mapView: naverMap.mapView)
        (naverMapControlSender as! NaverMapController).removeChannel()
    }
}

