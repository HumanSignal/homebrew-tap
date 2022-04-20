# Contributing

## Bottles
Create a pull request.
Wait until the pull request’s checks become green.
Then label your pull request with the `pr-pull` label.
A new brew pr-pull workflow will be fired up and after a couple of minutes you should observe the PR closed, bottles uploaded and commits pushed to the master branch of your repository.

## Manual bottle build
GitHub actions supports only Catalina and Big Sur MacOS runners.
In case you want to populate release with manually prebuilt bottles:
1. Build bottle locally `brew bottle --verbose --json heartexlabs/tap/label-studio`
2. Upload bottle tar gz to release page in GitHub
3. Add sha256 of your bottle tar gz to the `bottle` section in formula file
4. Commit to master branch
