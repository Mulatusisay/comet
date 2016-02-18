package ACE

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class HealthController {
    def Scaffold=true;

    def index() { }

}
