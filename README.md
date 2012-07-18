bookmark_sorter
===============

sorts all your bookmarks automagically in a logical, concise manner (no not alphabetical)

just brainstorming for now... not sure if this is even possible...

gotta explore how firefox stores bookmarks, maybe we can extract them, one url per line, flatten it all out, disregarding any subfolders they might be in already.

then load each url to make sure we arent getting any 404s (skip if they are), then query some database that has information about what "kind" of website we're looking at. maybe pull out some keywords or maybe google can give us some analytical info.

based on these new results, sort bookmarks into appropriate subfolders and put it back into a format ready to be imported back into firefox all nicely sorted.