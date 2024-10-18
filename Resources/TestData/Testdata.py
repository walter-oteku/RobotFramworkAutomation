import os
from dotenv import load_dotenv
#default configs
defaultTimeout = 30

# Login Page
load_dotenv(override=True)

Username=os.getenv('Username')
Password=os.getenv('Password')


automation_url = "http://savannahinformatics.great-site.net/"
search_url = "https://automationexercise.com/products"




