//
//  UITableView+RowConvenience.m
//  
//
//  Created by Evan Dekhayser on 5/22/14.
//
//

#import "UITableView+RowConvenience.h"

@implementation UITableView (RowConvenience)

- (NSIndexPath *)indexPathForAbsoluteRowNumber: (NSUInteger) rowNumber{
	NSIndexPath *newPath = nil;
	int currentRow = 0;
	for (int section = 0; section < [self numberOfSections]; section++) {
		for (int row = 0; row < [self numberOfRowsInSection:section]; row++) {
			if (currentRow == rowNumber) {
				return [NSIndexPath indexPathForRow: row inSection: section];
			}
			
			currentRow++;
		}
	}
	return newPath;
}

- (NSUInteger)absoluteRowNumberForIndexPath: (NSIndexPath *) indexPath{
	NSInteger rowNumber = 0;
	for (NSInteger i = 0; i < indexPath.section; i++) {
		rowNumber += [self numberOfRowsInSection:i];
	}
	rowNumber += indexPath.row;
	
	return rowNumber;
}

@end
