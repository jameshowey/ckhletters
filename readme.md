# CKH correspondence processing

A thing that applies image processing to a folder of jpgs. 

Created using the procedure described here:

    https://superuser.com/questions/622950/is-there-a-way-to-increase-the-contrast-of-a-pdf-that-was-created-by-scanning-a

You can do this on your machine with effort, or you can deliver content to me and I can convert and publish them. I think you should get holt to set this up for you so you can optimize your settings, and see immediate results on your machine, but you do you.

## View content

You can see this doc and all the pieces at:

    https://github.com/jameshowey/ckhletters

Take a moment to investigate. All the scans and processed scans are accessible. Click on environment.jpg to see what I am looking at right now. That's the vs code ui. Navigate to /inputs and see your scans. Navigate to outputs and see the processed scans.

You can give this url to anybody and they will be able to do the same. Does the same work as dropbox.

## Update content

### Add scans

you can add new scans with less work than processing them.

### Prereqs to add scans
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

#### procedure to add scans

You will likely want to just send them to me. But you might find it amusing to do it yourself.

* To add scans, first fork the repo from the github site. You will use a command line that github gives you. Go to documents and run the command line. all these files show up.
* Then, repeatedly do the following:
  * Open folder in vs code.
  * Drop new scans in the inputs folder.
  * if you click the little networky button on the left, you see all your new files, along with a commit button. you type a message above the button and click it. That puts a checkpoint on your machine.
  * If you have a github account (free) I can let you publish changes with a click of the publish button. Otherwise you create a "pull request" and I can pull in your changes. Easiest would be to fork it to your own account, and then you can do whatever you want and distribute your own url for others to use.

## Process content

create your own shaded versions.

Install below prereqs.

Open folder in vs code. In command window type the following:

    ./enhance.ps1

You will get all the scans reprocessed showing up in /outputs folder.

Then commit changes and publish as described above.

### processing prereqs

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

#### powershell

This is likely already on your machine. its from microsoft.


### Notes

I have a folder with /inputs, /outputs. The following command makes a more readable version of one of your scans. the -level parameters can be adjusted to vary the appearance of the converted image. 

    magick convert '.\inputs\19441009 CKH to JKH pg 1.jpg' -level 20%,100%,0.3 '.\outputs\19441009 CKH to JKH pg 1.jpg'

I haven't been able to master the level settings so I just poke around without a plan. They are described here:

    https://imagemagick.org/script/command-line-options.php#level




