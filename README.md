# Icon and text in UISegmentedControl

Simple category for adding icon and text together to default <i>UISegmentedControl</i>.

![alt tag](https://raw.github.com/maximbilan/UISegmentedControl_IconAndText/master/img/img1.png)
## Using
<pre>
[self.segmentedControl setImage:[UIImage imageFromImage:[UIImage imageNamed:@"star"]
												 string:@"First"
												   font:[UIFont systemFontOfSize:15]
												  color:[UIColor clearColor]] forSegmentAtIndex:0];
</pre>
## Implementation
<pre>
+ (id)imageFromImage:(UIImage *)image string:(NSString *)string font:(UIFont *)font color:(UIColor *)color
{
	CGSize expectedTextSize = [string sizeWithAttributes:@{NSFontAttributeName: font}];
	CGFloat width = expectedTextSize.width + image.size.width;
	CGFloat height = MAX(expectedTextSize.height, image.size.width);
	CGSize size = CGSizeMake(width, height);
	
	UIGraphicsBeginImageContextWithOptions(size, NO, 0);
	CGContextRef context = UIGraphicsGetCurrentContext();
	CGContextSetFillColorWithColor(context, color.CGColor);
	
	CGFloat fontTopPosition = (height - expectedTextSize.height) * 0.5;
	CGPoint textPoint = CGPointMake(0, fontTopPosition);
	[string drawAtPoint:textPoint withAttributes:@{NSFontAttributeName: font}];
	
	CGAffineTransform flipVertical = CGAffineTransformMake(1, 0, 0, -1, 0, size.height);
	CGContextConcatCTM(context, flipVertical);
	CGContextDrawImage(context, (CGRect){ {expectedTextSize.width, (height - image.size.height) * 0.5}, {image.size.width, image.size.height} }, [image CGImage]);
	UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
	UIGraphicsEndImageContext();
	
	return newImage;
}
</pre>
