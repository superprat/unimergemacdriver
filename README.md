UniMerge mac driver
=================

Mac Git Driver for [UniMerge](http://wiki.unity3d.com/index.php/UniMerge).

Paste `merge-unity.sh` into the project's root folder and make sure the `Assets` folder is also available in the root folder.

`<Local .git folder>/config` needs a custom git driver:
 
```
[merge "unity"]
 	name = Unity merge
  	driver = ./merge-unity.sh %A %B
```

Then, make a file called `.gitattributes` in the root folder and paste in the following:

```
*.unity		merge=unity
*.prefab	merge=unity
```
  	
UniMerge will now be used to merge scenes and prefabs.

##TO DO

- Launch Unity and SceneMerge tool if Unity is not running
