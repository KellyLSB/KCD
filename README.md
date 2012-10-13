KCD - Directory / Path Changer
==============================
At first glance you probabbly wondering why Kelly, should I use this script. So I will answer this question with a simple statement "No Reason." Through out the developers life of programming we always build little utility scripts to help us develop faster, and personalize our environments. We indeed know that every developer has his or her favorite themes and setups. Even if you use the same software it will still be setup different.

This script was designed to make my rails deploys easier. It's actually kinda silly the exact reason I wrote this script. It's actually because I wanted to type `deploy` instead of `./script/deploy` when deploying my rails app at work. My dilema though was that I did not want to add the rails script folder to my path (permanently). This script which will eventually grow and become a collection of directory/environment manipulation utilities was deisigned to acknowledge and find to solutions as such.

We start off by capturing the cd method by overriding cd in the users .zshrc, .bashrc, or .bash_profile (If you feel that I havent covered all the bases please fork and submit a pull request). Followed by changing the directory as normal then searching up the directory tree via `pwd` to find any file called `.path` which contains additions to the default path. We then cache the current path into a serialized cache file (eventually i want to store the shell instance as well) and prepend the contents of `.path` into the existing path and source it.

When we enter a directory above the one containing the `.path` file we then restore the original path.

Installation
============
Download `kcd` and `chmod +x ./kcd` and run `./kcd --install` it will append the bash function to one of the above listed files and move the `kcd` script to `/usr/local/bin`. The script will let you know once a day if an upgrade is available and will instruct you how to perform the upgrade.

License
=======
Copyright (c) 2012 Kelly Becker

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.