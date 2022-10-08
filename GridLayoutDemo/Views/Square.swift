import SwiftUI

struct Square: View {
    var width: CGFloat?
    var body: some View {
        Rectangle()
            .frame(width: width, height: width)
    }
}
