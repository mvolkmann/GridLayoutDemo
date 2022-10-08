# GridLayoutDemo

## Overview

A grid contains a number of rows and
each row can contain a different number of cells.
Each cell holds a view that is either "pushing" or "pulling".

## `Grid`

A `Grid` is a container view that takes all the space offered to it.

## `GridRow`

A `GridRow` is a child of a `Grid` that
takes all the space inside its parent `Grid`.

A `GridRow` adds a default amount of space (10)
between each of its child cells
and a default amount of space (10) between each row.
To change these, pass the `horizontalSpacing` and/or `verticalSpacing`
arguments to the `Grid` initializer.

To set the vertical alignment of cells within a row,
pass the `alignment` argument to the `GridRow` initializer
with a value like `.bottom`, `.center`, or `.top`.

## Cells

Cells are views that are children of a `GridRow`.

Cells are assigned to a specific column based on their order.
Even though each row can contain a different number of cells,
each row has the same number of columns.
In rows that have fewer cells than columns,
the excess columns remain empty.

The height of each row defaults to the height of the tallest cell in the row.
The width of each column defaults to the width of the widest cell in the column.

By default cells are centered vertically within their row
and centered horizontally within their column.

To cause a cell to span multiple columns,
apply the `gridCellColumns(numberOfColumns)` view modifier.

To override the vertical alignment setting of the current `GridRow`
for a specific cell, apply the `gridCellAnchor` view modifier
with a value like `.bottom`, `.center`, or `.top`.

To change the horizontal alignment of a cell within all the columns it spans,
apply the `gridCellAnchor` view modifier
with a value like `.leading`, `.center`, or `.trailing`.

## Resources on SwiftUI Grids

- [SwiftUI Grid](https://sarunw.com/posts/swiftui-grid/)
- [Mastering grid layout in SwiftUI](https://swiftwithmajid.com/2022/08/10/mastering-grid-layout-in-swiftui/)
- [Eager Grids with SwiftUI](https://swiftui-lab.com/eager-grids/)
