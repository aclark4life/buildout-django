[buildout]
allow-hosts = *.python.org
extensions = buildout.bootstrap
parts =
    django
    settings
    urls
    views

[django]
eggs = Django
recipe = djangorecipe

[settings]
recipe = collective.recipe.template
url = https://raw.github.com/pythonpackages/buildout-django/master/conf/settings.py.in
output = project/settings.py

[urls]
recipe = collective.recipe.template
url = https://raw.github.com/pythonpackages/buildout-django/master/conf/urls.py.in
output = project/urls.py

[views]
recipe = collective.recipe.template
url = https://raw.github.com/pythonpackages/buildout-django/master/conf/views.py.in
output = project/views.py

[versions]
Django = 1.4.1
