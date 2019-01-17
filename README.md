## Features
* Animate cell scale while scrolling
* Rotate cell while scrolling
* Easy to integrate and use
* Easy Customizeable 

## Requirements
* iOS 11.0 +

## Usage

### Via code

Create a `SJCenterFlowLayout` object, set its itemSize and assign it to your UICollectionView.


```
let layout = SJCenterFlowLayout()
layout.itemSize = CGSizeMake(200, 200)
collectionView.collectionViewLayout = layout

```

#### via Interface Builder

Set the UICollectionView layout class to `SJCenterFlowLayout`, and set its itemSize and its properties as given below

![Alt text](https://github.com/yudiz-solutions/SJCenterFlowLayout/blob/master/Screenshot/screenshot_1.png "SJCenterFlowLayout-step1")

### Properties

* `animationMode` (default is scale with sideItemScale between 0 and 1, default is 0.7, sideItemAlpha: between 0 and 1, default is 0.6, sideItemShift: value in pixels, default is 0)
*Can be set only through code.*
 * `SJCenterFlowLayoutAnimation.scale(sideItemScale: 0.7, sideItemAlpha: 0.6, sideItemShift: 0.0)`

The animation apply following 2 here 
 1. Scale 
 2. Rotation

* `spacingMode` (default is fixed spacing of 40 pts)
*Can be set only through code.*
 * `SJCenterFlowLayoutSpacingMode.fixed(spacing: CGFloat)`
Items in the carousel are positioned with a fixed space between them.
 * `SJCenterFlowLayoutSpacingMode.overlap(visibleOffset: CGFloat)`
A fixed part of the side items are visible on the sides of the collection (and therefore the space between items depends on the collection size).


#### Scale Animation (With cells scale animation while scrolling)
* Set the animation mode for collectionview flow layout
``` 
centerFlowLayout.animationMode = SJCenterFlowLayoutAnimation.scale(sideItemScale: 0.6, sideItemAlpha: 0.6, sideItemShift: 0.0)
```
* Set the rotation scale, alpha of collectionView as per your need 

#### Rotation Animation (With cells rotation animation while scrolling)
* Set the animation mode for collectionview flow layout
``` 
centerFlowLayout.animationMode = SJCenterFlowLayoutAnimation.rotation(sideItemAngle: 45, sideItemAlpha: 0.6, sideItemShift: 0)
```
* Set the rotation angle, alpha of collectionView as per your need 



## Author
**Sandeep Joshi** - https://github.com/yudiz-solutions
