package ACE.ADVICERY

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class REGISTRATIONController {
    def Scaffold=true;
    def index() {}
}
