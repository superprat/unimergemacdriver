UniMerge mac driver
=================

Mac Git Driver for UniMerge[http://wiki.unity3d.com/index.php/UniMerge]

Paste this file in the root Folder and make sure Assets Folder is also available in the Root Folder

 <Local .git folder>/config needs a custom git driver
 
[merge "unity"]
 	  name = Unity merge
  	driver = ../merge-unity.sh %O %A %B 
  	
#TO DO

launch Unity and SceneMerge tool if Unity is not running
