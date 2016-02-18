package OPS

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class WeekController {
    def Scaffold=true;
    def index() {}
}
