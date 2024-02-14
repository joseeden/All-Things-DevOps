
# Setting up GitHub Profile README


This guide provides details on how to create your own Github Profile README. Check out [my profile](https://github.com/joseeden).


## Create the Repository 

1. In your Github account, go to Repositories > New 
2. Enter a repository name that is the same as your username. Notice that a message will appear below it saying that this will be a special repository.
3. Tick the Add a README file box.
4. Click Create repository.

    <p align=center>
    <img width=500  src='../../Images/notes-adding-main-github-profile-readme.png'>
    </p>

5. Once created, it should appear at the top of your profile now. You can proceed to the next sections to learn how to customize it.


    <p align=center>
    <img width=700  src='../../Images/notes-main-github-profile-readme-created-done.png'>
    </p>


## Adding Header 

I initially played around with headers on my Github profile README, but ended up removing it instead as I want a more simplified look. 

If you want to explore headers, see the links below:

- [capsule-render](https://github.com/kyechan99/capsule-render?tab=readme-ov-file#soft)

## Connect with me 

We can set up the "Connect with me" section using icons from [Simple Icons](https://simpleicons.org/). Another way is to download the SVG icons and then reference them in your Github profile readme.

Here is an example in markdown:

```markdown
## Connect with me

[![website](./Images/twitter-light.svg)](https://twitter.com/eden_noel08#gh-light-mode-only)
[![website](./Images/twitter-dark.svg)](https://twitter.com/eden_noel08#gh-dark-mode-only)
&nbsp;&nbsp;

```

Another way to customize this section is to use shields.io.
As an example, we can search for X (Twitter) and customize the values. Click Execute to see the preview at the bottom. 

![](../../Images/notes-adding-twitter-x-icons-using-shieldsio.png)

Once done, copy the Markdown URL and use it on your Github README file.

```markdown
## Connect with me

[![X (formerly Twitter) Follow](https://img.shields.io/twitter/follow/eden_noel08?style=for-the-badge&logo=twitter&label=Twitter&labelColor=f3f7fa&color=1D9BF0)][twitter]
```

Other badges:

- [hendrasob.github.io/badges](https://hendrasob.github.io/badges/#social-)

- [Awesome Badges](https://dev.to/envoy_/150-badges-for-github-pnk)


## Github Stats 

<small>Reference: [anuraghazra/github-readme-stats](https://github.com/anuraghazra/github-readme-stats)</small>

1. In Github, go to Settings > Developer settings > Personal access tokens.

2. Click Generate new token.

    ![](../../Images/notes-github-generate-new-token-now.png)

3. Enter a name and then click Generate token at the bottom. 

    ![](../../Images/notes-genrate-tolen-enter-name.png)

4. Copy the token and save it. This will be the only time you'll see the token in this page.

    ![](../../Images/notes-gen-token-saved.png)

5. Go to vercel.com and sign up using your Github account. 

    ![](../../Images/notes-sign-up-vercel.png)

    ![](../../Images/notes-sign-up-vercel-using-github-go.png)


6. Go to Github and search for the [anuraghazra/github-readme-stats](https://github.com/anuraghazra/github-readme-stats) repo. Fork it. 

    ![](../../Images/notes-goto-github-repo-and-fork-repo.png)

7. Copy the URL of the forked repository.

    ```bash
    https://github.com/joseeden/github-readme-stats 
    ```

8. Go back to Vercel and import repository > Add Github account.

    ![](../../Images/notes-import-git-repo.png)

9. In the new window, click Only seelct repositories > choose the forked repository > Install.

    ![](../../Images/instal-vercel-on-selected-repo-only-specfically-readme-stats-repo.png)

10. Click Import.

    ![](../../Images/notes-click-import-in-vecelll.png)

11. Click Environment Variables. Enter "PAT_1" as the Key and paste the Github token (generated in step 2) in the Value field. Click Add > Deploy.

    ![](../../Images/notes-add-vercel-token-as-env-varr.png)

12. We should see the Congratulations page once done. Click Conttinue to dashboard.

    ![](../../Images/notes-deployed-vecel-congratulations.png)

13. Copy the domain provided.

    ```bash
    github-readme-stats-blond-theta-24.vercel.app
    ```
    ![](../../Images/notes-copy-domain-provided-by-vercelll.png)

14. Go back to your Github profile README file and add the following. 

    ```markdown

    ## Github Stats 

    <!-- This section shows "Github Stats" -->

    <a href="https://github.com/joseeden/joseeden">
    <img align="center" src="https://github-readme-stats-blond-theta-24.vercel.app/api?username=joseeden&show_icons=true&count_private=true&theme=radical&hide_border=true&bg_color=f3f7fa&text_color=000000&title_color=012e95&icon_color=012e95&border_color=012e95&card_width=400&line_height=25"/>


    <!-- This section shows "Most Used Languages" -->

    <a href="https://github.com/joseeden/joseeden">
    <img align="center" src="https://github-readme-stats.vercel.app/api/top-langs/?username=joseeden&hide=java,html&theme=radical&layout=compact&langs_count=8&hide_border=true&bg_color=f3f7fa&text_color=000000&title_color=012e95&icon_color=012e95&border_color=012e95&card_width=400&line_height=25"/>

    ```




## Recent Github Activity

Full instructions can be found in the link below:

- [GitHub Activity in Readme](https://github.com/marketplace/actions/github-activity-readme)

## References

- [Managing your profile README](https://docs.github.com/en/account-and-profile/setting-up-and-managing-your-github-profile/customizing-your-profile/managing-your-profile-readme)
- [How to create a GitHub Profile README](https://dev.to/github/how-to-create-a-github-profile-readme-jha)