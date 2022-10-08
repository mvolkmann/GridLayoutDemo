import SwiftUI

enum SampleImage: String, Identifiable, View {
    case Ex1, Ex2, Ex3
    var id: String {
        rawValue
    }

    var body: some View {
        Image(self.rawValue)
            .resizable()
            .scaledToFit()
            .padding()
    }
}

