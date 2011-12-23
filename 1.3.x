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
url = http://x.aclark.net/django/1.3.x/settings.py.in
output = project/settings.py

[urls]
recipe = collective.recipe.template
url = http://x.aclark.net/django/1.3.x/urls.py.in
output = project/urls.py

[views]
recipe = collective.recipe.template
url = http://x.aclark.net/django/1.3.x/views.py.in
output = project/views.py
