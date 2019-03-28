Some pseudo codes generated from private frameworks on Apple platform via IDA and Hopper, along with some of my comments.
Only for personal use, don't count on it by any sort of means😂😂.

### How NSNumber become tagged pointer
- Foundation
    - NSNumber.mm
    - NSPlaceholderNumber.mm
    - NSPlaceholderValue.mm
    - _NSPlaceholderValueOrNumber.mm
- CoreFoundation
    - CFNumberCreate.mm

### What happens when UITableView's beginUpdates and endUpdates get called?
- UIKitCore
    - UITableView_beginUpdates.mm
    - UITableView_endUpdates.mm