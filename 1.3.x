[buildout]
extensions = buildout.bootstrap
parts =
    django
    settings
    urls
    views

[django]
recipe = djangorecipe

[settings]
recipe = collective.recipe.template
url = http://build.pythonpackages.com/buildout/django/latest/settings.py.in
output = project/settings.py

[urls]
recipe = collective.recipe.template
url = http://build.pythonpackages.com/buildout/django/latest/urls.py.in
output = project/urls.py

[views]
recipe = collective.recipe.template
url = http://build.pythonpackages.com/buildout/django/latest/views.py.in
output = project/views.py

