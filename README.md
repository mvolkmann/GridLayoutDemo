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

A `GridRow` adds a default amount of space between each of its child cells.

## Cells

Cells are views that are children of a `GridRow`.
They are assigned to a specific column based on their order.
Even though each row can contain a different number of cells,
each row has the same number of columns.
In rows that have fewer cells than columns,
the excess columns remain empty.

The height of each row defaults to the height of the tallest cell in the row.
The width of each column defaults to the width of the widest cell in the column.

By default cells are centered vertically within their row
and centered horizontally within their column.


## Resources on SwiftUI Grids

- [SwiftUI Grid](https://sarunw.com/posts/swiftui-grid/)
- [Mastering grid layout in SwiftUI](https://swiftwithmajid.com/2022/08/10/mastering-grid-layout-in-swiftui/)
- [Eager Grids with SwiftUI](https://swiftui-lab.com/eager-grids/)
