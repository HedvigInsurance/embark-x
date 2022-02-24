import Foundation
import shared

@MainActor // Not sure what this is
class ContentViewViewModel : ObservableObject {
    let getEmbarkStoryUseCase: GetEmbarkStoryUseCase = koin.get()
    
    @Published public var result // result type here
    
    func fetchStory(story: String) async {
        // Maybe try catch this
        getEmbarkStoryUseCase.invoke(
            embarkStoryName: EmbarkStory,
            locale: "en_SE",
            completionHandler: { either, error in
                result = either
            }
        )
    }
}
