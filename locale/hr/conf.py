import sys
import os

PROJECT_PATH = os.path.dirname(os.path.realpath('%s/../..' % __file__))

sys.path.append(PROJECT_PATH)
sys.path.append(os.path.relpath("../../"))

from conf import *

language = 'hr'
html_static_path = ['../../_static']