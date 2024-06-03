import os
from pathlib import Path
from dotenv import load_dotenv

def get_enviroment_variables():
    #Get the base directory
    basepath = Path()
    basedir = str(basepath.cwd())
    #Load the environment variables
    envars = basepath.cwd() / '.env' 
    load_dotenv(envars)

    environment_variables = {
        'CNPJ': os.getenv('CNPJ')
    }

    return environment_variables