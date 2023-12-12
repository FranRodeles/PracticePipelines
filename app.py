from decouple import Config

config = config()

SECRET_KEY = config.get('SECRET_KEY')
API_KEY = config.get('API_KEY')
DEBUG= config.getboolean('DEBUG')

print(SECRET_KEY,API_KEY,DEBUG)
