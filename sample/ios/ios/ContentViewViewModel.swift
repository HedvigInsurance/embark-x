import Foundation
import shared
import KMPNativeCoroutinesAsync

enum RandomError: Error {
    case storyUserCase(GetEmbarkStoryUseCaseError)
    case unknown
}

@MainActor
class ContentViewViewModel : ObservableObject {
    let getEmbarkStoryUseCase: GetEmbarkStoryUseCase = koin.get()
    
    func fetchStory(story: String) async throws -> Result<EmbarkStory_?, Error> {
        
        // Maybe try catch this
        let result = await asyncResult(
            for: getEmbarkStoryUseCase.invokeNative(
                embarkStoryName: EmbarkStoryName(name: story),
                locale: Locale.enSe
            )
        )
        
        return mapResult(result: result)
    }
    
    func mapResult(result: Result<Arrow_coreEither<GetEmbarkStoryUseCaseError, EmbarkStory_>, Error>) -> Result<EmbarkStory_?, Error> {
        switch result {
        case .success(let either):
            let mappedResult = either.fold { error in
                return error
            } ifRight: { story in
                return story
            }
            
            if let mappedResult = mappedResult as? EmbarkStory_ {
                return .success(mappedResult)
            } else if let error = mappedResult as? GetEmbarkStoryUseCaseError {
                return .failure(RandomError.storyUserCase(error))
            } else {
                return .failure(RandomError.unknown)
            }
        case .failure(_):
            return .failure(RandomError.unknown)
        }
    }
}
