import Foundation
import shared

private var _koin: Koin_coreKoin?

var koin: Koin_coreKoin {
    return _koin!
}

func initializeKoin() {
    _koin = shared.KoinKt.initializeDi().koin
}

extension Koin_coreKoin {
    func get() -> GetEmbarkStoryUseCase {
        koin.getForNative(objCClass: GetEmbarkStoryUseCase.self) as! GetEmbarkStoryUseCase
    }
}
