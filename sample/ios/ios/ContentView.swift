import SwiftUI
import Form
import shared

struct ContentView: View {
    @StateObject private var viewModel: ContentViewViewModel = ContentViewViewModel()
    
    @State private var result: Any? = nil
    
    var body: some View {
        Text("\(result)")
            .padding()
            .task {
                result = try? await viewModel.fetchStory(story: "StoryName")
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
