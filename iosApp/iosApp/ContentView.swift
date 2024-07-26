import SwiftUI
import Shared

struct ContentView: View {
    @State private var showContent = false
    @State private var callResult: String? = nil
    var body: some View {
        VStack {
            Button("Click me!") {
                Networking().callNetworkExample(completionHandler: {res, error in
                    callResult = res
                    showContent = true
                })
            }

            if showContent {
                VStack(spacing: 16) {
                    Text("SwiftUI: \(callResult ?? "no response")")
                }
                .transition(.move(edge: .top).combined(with: .opacity))
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
