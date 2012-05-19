[buildout]
extensions = buildout.bootstrap
parts = django settings urls views

[django]
recipe = djangorecipe

[settings]
recipe = collective.recipe.template
url = http://pythonpackages.com/buildout/django/conf/settings.py.in
output = project/settings.py

[urls]
recipe = collective.recipe.template
url = http://pythonpackages.com/buildout/django/conf/urls.py.in
output = project/urls.py

[views]
recipe = collective.recipe.template
url = http://pythonpackages.com/buildout/django/conf/views.py.in
output = project/views.py

[versions]
Django = 1.4
