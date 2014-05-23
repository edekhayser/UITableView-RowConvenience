//
//  UITableView+RowConvenience.h
//  
//
//  Created by Evan Dekhayser on 5/22/14.
//
//

@import Foundation;
@import UIKit;

@interface UITableView (RowConvenience)

- (NSIndexPath *)indexPathForAbsoluteRowNumber: (NSUInteger) rowNumber;
- (NSUInteger)absoluteRowNumberForIndexPath: (NSIndexPath *) indexPath;

@end
