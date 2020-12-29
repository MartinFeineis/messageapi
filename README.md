# messageapi
A quick message api with django restframework
Python Version  Python 3.9.0
Pip Version  pip 20.2.3 from /home/wolle/.pyenv/versions/3.9.0/lib/python3.9/site-packages/pip (python 3.9)
Django Version 3.1.4
##Setup Dev-Env
```
pyenv local 3.9.0
python -m venv .
```
dev superuser wolle admin
curl example for GET first example retrieves List of all Posts second example retrieves the POST with id 3
```
curl http://127.0.0.1:8000/post/
curl http://127.0.0.1:8000/post/3
```
curl example for POST
```
curl --header "Content-Type: application/json"  --request POST --data '{"title":"Merry Curl","body":"longer body","author":"recco","slug":"noslug"}' http://127.0.0.1:8000/post/
```
