#devtools::install_github("rstudio/bookdown")
bookdown::render_book("bookdown::gitbook")

## git commands to sync gh-pages with folder _book
### create a local gh-pages branch containing the splitted output folder
git subtree split --prefix _book -b gh-pages
### force the push of the gh-pages branch to the remote gh-pages branch at origin
git push -f origin gh-pages:gh-pages
### delete the local gh-pages because you will need it: ref
git branch -D gh-pages