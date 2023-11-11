# CKH correspondence processing

A thing that applies image processing to a folder of jpgs. 

Created using the procedure described here:

    https://superuser.com/questions/622950/is-there-a-way-to-increase-the-contrast-of-a-pdf-that-was-created-by-scanning-a

You can do this on your machine with effort, or you can deliver content to me and I can convert and publish them. I think you should get holt to set this up for you so you can optimize your settings, and see immediate results on your machine, but you do you.

### Prereqs

#### imagemagick

The program we are using is called imagemagick. Homepage:

    https://imagemagick.org/script/download.php

recommended windows download. this has a nice windows installer.

    https://imagemagick.org/archive/binaries/ImageMagick-7.1.1-21-Q16-HDRI-x64-dll.exe

#### ghostscript

this is a pure circa 1985 style wad of C. Homepage:

    https://www.ghostscript.com/

download is a straight .exe. Amusing old-school manipulation to find a folder, update path, etc. I put it in program files/bin which for some reason was already on path.

    https://github.com/ArtifexSoftware/ghostpdl-downloads/releases/download/gs10021/gs10021w64.exe

#### git

git provides source control. You use it to 
* fetch this package
* update images without fear of destruction 
* facilitate publishing to shared site

download from:

    https://git-scm.com/downloads

#### vs code

I use vs code to edit and publish this content. You can see a picture of the environment in environment.jpg.

Fetch it from:

    https://code.visualstudio.com/download
    

I have a folder with /inputs, /outputs. The following command makes a more readable version of one of your scans. the -level parameters can be adjusted to vary the appearance of the converted image. 

    magick convert '.\inputs\19441009 CKH to JKH pg 1.jpg' -level 20%,100%,0.3 '.\outputs\19441009 CKH to JKH pg 1.jpg'

I haven't been able to master the level settings so I just poke around without a plan. They are described here:

    https://imagemagick.org/script/command-line-options.php#level




