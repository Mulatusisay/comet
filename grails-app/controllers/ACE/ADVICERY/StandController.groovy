package ACE.ADVICERY

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class StandController {
    def Scaffold=true;
    def index() {}
}
