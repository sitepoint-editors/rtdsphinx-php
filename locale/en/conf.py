import sys
import os

PROJECT_PATH = os.path.dirname(os.path.realpath('%s/../..' % __file__))

sys.path.append(PROJECT_PATH)

from conf import *

language = 'en'
html_static_path = ['../../_static']