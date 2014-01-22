### Development Release: 3.3

__WARNING__: This is an unstable branch for development purposes only!

#### Changes

* `chartboost_internal.lua` has been updated to point at our newest API.
* Ad images and assets (frames and close buttons) will be returned in varying sizes based on current device and availability.
* Please discuss necessary changes to handle creatives of various sizes in the issues section of this repo!

Partial progress has already been made at https://github.com/vhanded/corona-sdk/commit/d4c69b447c9da0a94fa4f450fa668a222fc7b4f4 thanks to [@vhanded](https://github.com/vhanded)! Thanks for getting the ball rolling!

Review the help site 

#### Development and Testing

We recommend using an app in your own account and a cross-promotion campaign to test creatives of various sizes. iOS and Android should be tested separately, as iOS receives image sizes based on device type (e.g. iPhone5,1) whereas Android receives image sizes based on w \* height resolutions.

Submit any incremental changes as a pull request on this branch, we'll merge after testing and once all requirements have been met for the milestone, we'll merge with master.

__TODO: post more details on various close button and ad frame resolutions.
