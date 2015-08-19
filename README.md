# RTDSPHINX-PHP: ReadTheDocs-friendly Sphinx skeleton for multi-language PHP projects

Using Sphinx and ReadTheDocs to document PHP projects is less than straightforward. This project was made to remove most hurdles, so you can start writing your documentation in minutes, rather than waste days on setting it up.
 
## Usage:

### Install pre-requisites:

```bash
sudo pip install sphinx sphinx-autobuild sphinx_rtd_theme sphinxcontrib-phpdomain sphinx-intl
```

_The above assumes the `pip` command is available on your system. Pip is Python's package manager, and is easy to install on most operating systems. Google around for how if you don't have it._

### Clone this repo:

```bash
git clone https://github.com/sitepoint/rtdsphinx-php docs
```

_You can clone it into an existing project to which you just want to add docs, into its own folder, or any other location - the documentation project is self-contained, so it can be used as a part of a bigger whole or standalone._

### Change necessary values:

Open `/conf.py` and edit:

 - author
 - copyright
 - project
 - other values you want to change
 
_Todo: make a script to automate this from the command line_

### Start writing

The source code of the documentation are `.rst` files in the root folder. Edit those to write your docs.

To translate, generate `.po` files with:

```
make gettext
sphinx-intl update -p _build/locale -l xx
```

_`xx` above refers to the language you need to build `.po` files for. I.e., to generate for English and Croatian, use `sphinx-intl update -p _build/locale -l en -l hr`. You can use as many languages as you want here._

To build the docs:

```
sphinx-intl build
sphinx-build -b html -d _build/doctrees -D language='xx' -c locale/xx/ . _build/html/xx/
```

Inspect your generated docs by opening the `_build/html/xx/index.html` file.

Again, `xx` is the language you want to build. These need to be input one by one.

### Hosting on RTD

To host on RTD:

#### English Version (DO THIS FIRST)

 - make a new project manually
 - in Advanced Settings, put `requirements.txt` into the Requirements field
 - in Advanced Settings, put `locale/xx/conf.py` into the `conf` path, depending on the language you want the project to be in
 
#### Translations

 - make a new project manually
 - in Advanced Settings, put `requirements.txt` into the Requirements field
 - in Advanced Settings, put `locale/xx/conf.py` into the `conf` path, depending on the language you want the project to be in
 - go back to main (English) version, and under Translation settings, set the newly made project as the translation of the English one
 
### Other resources

 - Sphinx for PHP tutorial: http://www.sitepoint.com/using-sphinx-for-php-project-documentation
 - Sphinx for PHP multi language tutorial: tbd
 
## License

MIT

## Contributing

Pull requests and suggestions accepted. If you make some nifty themes for PHP docs, let us know and we'll feature them!