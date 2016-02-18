package OPS

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class MonthController {
    def Scaffold=true;
    def index() {}
}
