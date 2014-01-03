
### (01-02-2014) Upgrade Chartboost Plugin to work with Corona SDK Graphics 2.0
======
**A special thanks to @Fernker for creating this critical update!**

* Changed all x,y coordinates to be centered in the middle of the screen (previously centered in the top left)
* Switched all ReferencePoints to Graphics 2.0 anchor points
* Converted color tables to use Graphics 2.0 percentage rgba values
* Switched to graphics 2.0 gradients
* Updated deprecated color methods (setTextColor->setFillColor, setColor->setStrokeColor)
* Adjusted positioning of MoreApps cells
