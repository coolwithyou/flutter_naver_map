import NMapsMap

internal class NaverMapViewEventDelegate: NSObject, NMFMapViewTouchDelegate, NMFMapViewCameraDelegate, NMFIndoorSelectionDelegate {
    private weak var sender: NaverMapControlSender?

    private let initializeConsumeSymbolTapEvents: Bool
    private var animated: Bool = true

    init(sender: NaverMapControlSender, initializeConsumeSymbolTapEvents: Bool) {
        self.sender = sender
        self.initializeConsumeSymbolTapEvents = initializeConsumeSymbolTapEvents
    }

    func mapView(_ mapView: NMFMapView, didTapMap latlng: NMGLatLng, point: CGPoint) {
        sender?.onMapTapped(nPoint: NPoint.fromCGPointWithDisplay(point), latLng: latlng)
    }

    func mapView(_ mapView: NMFMapView, didTap symbol: NMFSymbol) -> Bool {
        sender?.onSymbolTapped(symbol: symbol) ?? initializeConsumeSymbolTapEvents
    }

    func mapView(_ mapView: NMFMapView, cameraWillChangeByReason reason: Int, animated: Bool) {
        self.animated = animated
        sender?.onCameraChange(cameraUpdateReason: reason, animated: animated)
    }

    func mapView(_ mapView: NMFMapView, cameraIsChangingByReason reason: Int) {
        sender?.onCameraChange(cameraUpdateReason: reason, animated: animated)
    }

    func mapView(_ mapView: NMFMapView, cameraDidChangeByReason reason: Int, animated: Bool) {
        self.animated = animated
        sender?.onCameraChange(cameraUpdateReason: reason, animated: animated)
    }

    func mapViewCameraIdle(_ mapView: NMFMapView) {
        sender?.onCameraIdle()
    }

    func indoorSelectionDidChanged(_ indoorSelection: NMFIndoorSelection?) {
        sender?.onSelectedIndoorChanged(selectedIndoor: indoorSelection)
    }

    func registerDelegates(mapView: NMFMapView) {
        mapView.touchDelegate = self
        mapView.addCameraDelegate(delegate: self)
        mapView.addIndoorSelectionDelegate(delegate: self)
    }

    func unregisterDelegates(mapView: NMFMapView) {
        mapView.touchDelegate = nil
        mapView.removeCameraDelegate(delegate: self)
        mapView.removeIndoorSelectionDelegate(delegate: self)
    }
}

class NaverMapOfflineCacheDelegate: NSObject, NMFOfflineStorageDelegate {
    private weak var sender: NaverMapControlSender?
    private var isLoaded: Bool = false
    private let storage = NMFOfflineStorage()
    
    init(sender: NaverMapControlSender) {
        self.sender = sender
        super.init()
    }
    
    deinit {
        clearObserve()
    }
    
    func startObserve() {
        storage.delegate = self
    }
    
    func clearObserve() {
        storage.delegate = nil
    }
    
    func offlineStorage(_ storage: NMFOfflineStorage, urlForResourceOf kind: NMFResourceKind, with url: URL) -> URL {
        onMapLoaded(desc: "sure")
        print("offlineStorageSaved: \(url.absoluteString)")
        
        if kind == .source {
            return URL(string: NSTemporaryDirectory())!
        } else {
            clearObserve()
        }

        switch kind {

        case .glyphs:
            print("glyphs")
            break
        case .image:
            print("image")
            break
        case .source:
            print("source")  // json
            break
        case .spriteImage:
            print("spriteImage")
            break
        case .spriteJSON:
            print("spriteJSON")
            break
        case .style:
            print("style")
            break
        case .tile:
            print("tile")
            break
        default:
            print("unknown")
            break
        }
        
        return url
    }
    
    private func onMapLoaded(desc: String) {
        if isLoaded { return }
        do {
            isLoaded = true
            sender?.onMapLoaded()
            print("[swift, \(desc)] onMapLoaded! : \(Date().timeIntervalSince1970)")
        }
    }
}
