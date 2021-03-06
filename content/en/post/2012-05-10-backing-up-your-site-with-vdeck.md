---
categories:
- technology
date: "2012-05-10T00:00:00Z"
tags:
- wordpress
title: Backing up your site with VDeck
---
I don't think anyone would argue that regularly backing up data is a good idea.  At the same time, most people including myself don't do so nearly often enough.  Fortunately, the VDeck control panel provided by my web host helps make backing up and restoring data a cinch.

To back up my Wordpress blog, I need to back up both the files and the MySQL database.  To back up files, use the Archive Gateway.

<img title="vdeck-1" src="http://yentran.isamonkey.org/gallery/images/vdeck-1.png" width="695" height="190" />

The Archive Gateway lets you create an archive of one or more folders, which you can retrieve by FTP.  Downloading a single large file is a lot faster than downloading hundreds of small files.  This page also lets you restore files from an archive.

<img title="vdeck-2" src="http://yentran.isamonkey.org/gallery/images/vdeck-2.png" width="643" height="528" />

To back up the database, use the MySQL Database tool.

<img title="vdeck-3" src="http://yentran.isamonkey.org/gallery/images/vdeck-3.png" width="695" height="190" />

On the Backup tab, you can create a backup for an entire database or for individual tables.

<img title="vdeck-4" src="http://yentran.isamonkey.org/gallery/images/vdeck-4.png" width="756" height="425" />
