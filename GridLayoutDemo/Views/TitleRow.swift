import SwiftUI

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
