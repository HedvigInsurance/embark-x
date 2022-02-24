import SwiftUI
import Form
import shared

struct ContentView: View {
    @StateObject private var viewModel: ContentViewViewModel = ContentViewViewModel()
    
    var body: some View {
        let (_) = viewModel.result // Use embark result in some way
        Text(shared.Greeting().greeting())
            .padding()
            .task {
                viewModel.fetchStory(story: "StoryName")
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
