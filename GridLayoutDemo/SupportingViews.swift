import SwiftUI

// Sample View
struct Square: View {
    var width: CGFloat?
    var body: some View {
        Rectangle()
            .frame(width: width, height: width)
    }
}

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

struct TitleRow: View {
    @Binding var sampleImage: SampleImage?
    var title: String
    var image: SampleImage
    var body: some View {
        HStack {
            Text(title)
            Button {
                sampleImage = image
            } label: {
                Image(systemName: "photo.circle.fill")
                    .imageScale(.large)
            }
        }
    }
}
