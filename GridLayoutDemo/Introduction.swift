import SwiftUI

struct Introduction: View {
    @State private var sampleImage: SampleImage?
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    TitleRow(
                        sampleImage: $sampleImage,
                        title: "Cell Alignments and Spans",
                        image: .Ex1
                    )
                    Grid {
                        GridRow(alignment: .top) {
                            Square(width: 110) // 100+10 for space between cells
                                .gridCellColumns(2)
                            Square(width: 50)
                            Square(width: 50)
                                .gridCellAnchor(.bottom)
                        }
                        GridRow {
                            Square(width: 50)
                            Square(width: 50)
                            Square(width: 50)
                                .gridCellColumns(2)
                                .gridCellAnchor(.trailing)
                        }
                        Divider()
                            .gridCellUnsizedAxes([.horizontal])
                    }
                    TitleRow(
                        sampleImage: $sampleImage,
                        title: "Grid/Column/Row Alignments and Overrides",
                        image: .Ex2
                    )
                    Grid(alignment: .leading) {
                        GridRow {
                            Square(width: 100)
                            Square(width: 50)
                            Square(width: 50)
                            Square(width: 50)
                        }
                        GridRow(alignment: .top) {
                            Square(width: 50)
                            Square(width: 100)
                            Square(width: 50)
                                .gridColumnAlignment(.trailing)
                            Square(width: 50)
                        }
                        GridRow(alignment: .bottom) {
                            Square(width: 50)
                            Square(width: 50)
                            Square(width: 100)
                            Square(width: 50)
                        }
                        GridRow {
                            Square(width: 100)
                            Square(width: 50)
                                .gridCellAnchor(.bottomTrailing)
                            Square(width: 50)
                            Square(width: 50)
                        }
                    }
                    Spacer()
                }
                .navigationTitle("Introduction")
                .sheet(item: $sampleImage) {
                    $0.withDismissButton().presentationDetents([.medium])
                }
            }
        }
    }
}

struct Introduction_Previews: PreviewProvider {
    static var previews: some View {
        Introduction()
    }
}
