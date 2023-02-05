
# challenger

## Scenario

There are two instances, one for git server, and one for dev server. Login to dev server. Then save URL for git server

```bash
cd gitchallenge/ 
origin_url=git://ec2-35-93-28-72.us-west-2.compute.amazonaws.com/lab.git 
echo $origin_url 
```

### Challenge 1:

The $origin_url variable you set corresponds to a local, empty git repository set up for this lab. In the /gitchallenge Git repository you navigated to earlier, set the "origin" Git remote to this URL. Then, because your /gitchallenge git repository is a local repository and your new remote doesn't contain the files in your repository, push your master branch to your new origin remote.

Name second repo as "origin"

```bash
git remote add origin $origin_url
```

### Challenger 2:

A careless developer has created a typo in the server.js file. Create a new branch with any name you'd like. In this branch, fix the typo, which says, "Hello, Wrld". Once the spelling is corrected to "Hello, World", commit the change and merge the branch into master. Make sure to push to your origin once you're done.

Create new branch called "test".
Stage and commit with message "Fixed typo".

```bash
git checkout -b test 
```
```bash
vim server.js  
```
```bash
use strict';
  
            const express = require('express');

            // Constants
            const PORT = 8001;
            const HOST = '0.0.0.0';

            // App
            const app = express();
            app.get('/', (req, res) => {
              res.send('Hello, World');
            });

            app.listen(PORT, HOST);
            console.log(`Running on http://${!HOST}:${!PORT}`); 
```
```bash
git add .; git commit -m "Fixed typo" 
```
```bash
git checkout master
git merge test  
```

### Challenge 3 

Still in server.js, the port is listed as 8001, but your infrastructure doesn't support this port. Create a second new branch with another name of your choice, change the port to 8000, and once again commit the change and merge it into master. Push the master branch to the origin remote.

Name 2nd branch as test2.
Stage and commit using message "Changed port"

```bash
git checkout -b test2 
vim server.js 
```
```bash
git add .; git commit -m "Changed port"  
```
```bash
git checkout master  
git merge test 
git push origin master
```

