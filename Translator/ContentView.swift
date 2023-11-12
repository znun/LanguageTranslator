import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = LocalizableViewModel()

    var body: some View {
        VStack {
            Text("greeting")
                .font(.title)
                .padding()

            Button(action: {
                viewModel.switchToNextLocale()
            }) {
                Text("Switch Language")
                    .padding()
            }
        }
        .environment(\.locale, viewModel.currentLocale)
    }
}
