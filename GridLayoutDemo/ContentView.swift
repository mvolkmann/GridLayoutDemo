import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Introduction()
                .tabItem {
                    Label("Introduction", systemImage: "1.circle.fill")
                }
            TextGrids()
                .tabItem {
                    Label("Text Grids", systemImage: "2.circle.fill")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
