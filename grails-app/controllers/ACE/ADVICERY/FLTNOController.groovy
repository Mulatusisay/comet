package ACE.ADVICERY

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class FLTNOController {
    def Scaffold=true;
    def index() { }
}
