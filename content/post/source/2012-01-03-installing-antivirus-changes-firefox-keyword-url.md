---
categories:
- technology
date: "2012-01-03T00:00:00Z"
meta:
  _edit_last: "1"
  _wp_old_slug: panda-active-scan-changes-firefox-keyword-url
  aktt_notify_twitter: "no"
published: true
status: publish
tags:
- firefox
- keyword
- url
- yahoo
title: Installing antivirus program changes FireFox keyword URL
type: post
---
I tried out a well-known cloud-based antivirus solution.  It worked well enough, but after I installed it, I noticed that my FireFox searches were now redirected from Google to Yahoo!.  In the FF config screen (which can be opened by typing "about:config" in the location bar), I noticed that the keyword.URL setting had been changed to Yahoo!:

<img title="panda-yahoo-keyword-url" src="http://yentran.isamonkey.org/gallery/images/panda-yahoo-keyword-url.png" width="1212" height="113" />

This setting dictates which search service is used when the user enters a keyword (i.e., anything that does not resemble a URL like http://yahoo.com).  While Yahoo! search is no doubt capable, this type of unsolicited change is quite annoying, particularly for a product that's intended to detect and remove malware.  I reverted the setting back to Google by changing its value to `http://www.google.com/search?ie=UTF-8&amp;oe=UTF-8&amp;q=`.

Needless to say I wasn't sticking with this product.
