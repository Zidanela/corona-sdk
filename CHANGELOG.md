
Upgrade Chartboost Plugin to work with Corona SDK Graphics 2.0
======





* sample/main.lua
	* changed line 12: switched x,y coordinates to be the center of the screen, in graphics 2.0 rectangle's anchor points are in the center verus being in the top left
	* Switched app ID to use one set up just for testing
	



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