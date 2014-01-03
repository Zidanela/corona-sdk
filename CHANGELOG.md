
Upgrade Chartboost Plugin to work with Corona SDK Graphics 2.0
======





* sample/main.lua
	* changed line 12: 
		* switched x,y coordinates to be the center of the screen, in graphics 2.0 rectangle's anchor points are in the center verus being in the top left
	* changed line 13:
		* Switched color to use the decimal rgba format of Graphics 2.0
	* Changed lines 60,79,92,110,124,139,155,180:
		* Changed the button labels to be white on the blue background
	



* corona-sdk/src/nativeviews/CBActionButton.lua:
	* Changed lines: 39,40,119
		* Switched ReferencePoints to Graphics 2.0 anchor points 

* corona-sdk/src/nativeviews/CBMoreAppsRegularCell.lua:
	* Changed lines: 38,69,77
		* Switched ReferencePoints to Graphics 2.0 anchor points

* corona-sdk/src/nativeviews/CBRoundRectImageView.lua:
	* Changed lines: 40,47
		* Switched ReferencePoints to Graphics 2.0 anchor points

* corona-sdk/src/view/CBAnimationManager.lua:
	* Changed lines: 120, 128
		* Switched ReferencePoints to Graphics 2.0 anchor points

* corona-sdk/src/view/CBLoadingView.lua:
	* Changed lines: 35
		* Switched ReferencePoints to Graphics 2.0 anchor points
	* Changed lines: 36
		* Converted color table to use Graphics 2.0 percentage rgba values
		* Changed setTextColor (deprecated) to setFillColor

* corona-sdk/src/view/CBUnderfinedProgressBar.lua:
	* Changed lines: 133, 242
		* Switched ReferencePoints to Graphics 2.0 anchor points 

	* Changed lines: 132
		* Converted color table to use Graphics 2.0 percentage rgba values

	* Changed line: 243
		* :setColor is deprecated, changed to :setStrokeColor

* corona-sdk/src/view/CBPopupImpressionView.lua:
	* Changed line: 24
		* Changed coordinates to be center based instead of top left (changed in Graphics 2.0)

* corona-sdk/src/view/CBBackgroundView.lua:
	* Changed line: 30
		* Changed coordinates to be center based instead of top left (changed in Graphics 2.0)
	* Changed line: 31
		* Changed 0xA0 to .6, the old value wouldn't show it as transparent.  Perhaps related to the change to percentage based color values in Graphics 2.0?

* corona-sdk/src/view/CBMoreAppsCell.lua
	* Changed line: 36
		* Changed gradient to new Graphics 2.0 syntax, newGradient() is deprecated
	* Changed lines: 11, 12, 41, 43
		* Graphics 2.0 requires RGBA in decimal form, converted from old way to decimal
	* Changed lines: 35, 40, 42
		* Changed x,y (unless it was 0) to be center row bases as per the changed in Graphics 2.0
	* Changed line: 42
		* Changed the y position from row.height -1, to row.height -2, for some reason 1 pixel wasn't enough and it would on be seen as a flicker on scroll.  Changing it to -2 pixels seems to let it stick

* corona-sdk/src/view/CBActionButton.lua
	* Changed lines: 16, 17 
		* Graphics 2.0 requires RGBA in decimal form, converted from old way to decimal
	* Changed line: 78
		* Rectangles anchor points are now at the center versus top/left, changed x,y parameters to reflect that
	* Changed lines: 30, 34
		* setTextColor is deprecated, using setFillColor now

* corona-sdk/src/view/CBMoreAppsViewProtocol.lua
	* Changed lines: 26
		* Graphics 2.0 requires RGBA in decimal form, converted from old way to decimal

* corona-sdk/src/view/CBMoreAppsRegularCell.lua
	* Changed lines: 72, 80
		* changed colors and alpha value to decimal, and changed to setFillColor since setTextColor is deprecated
