package OPS

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class DaysController {
    def Scaffold=true;
    def index() {}
}
