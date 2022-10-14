import itertools
from SeleniumLibrary import SeleniumLibrary
from Zoomba.GUILibrary import RS
from robot.libraries.BuiltIn import BuiltIn
from robot.api.deco import keyword
from robot.libraries.Collections import Collections
import importlib
import  selenium


class GUItest():
    ROBOT_LIBRARY_SCOPE = 'GLOBAL'

    @keyword("Get React List Option")
    def get_react_list_option(self, locator):

        options = RS.ReactSelect(react_select_container).options()
        return options
