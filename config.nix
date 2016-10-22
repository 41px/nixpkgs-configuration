{
        allowUnfree = true;
	allowBroken = true;
        virtualbox.enableExtensionPack = true;

    	firefox = {
             enableGoogleTalkPlugin = true;
             enableAdobeFlash = true;
         };

	packageOverrides = pkgs: with pkgs; rec {
	     mplayer = pkgs.stdenv.lib.overrideDerivation pkgs.mplayer (oldAttrs: {
	        dvdnavSupport = true;
	    });
	    emacs = pkgs.stdenv.lib.overrideDerivation pkgs.emacs (oldAttrs: {
	    	        withGtk2 = false;
			withGtk3 = true;
	                withXwidgets = true;
			imagemagick = pkgs.imagemagickBig;
       	    });
	};
}
