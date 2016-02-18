package OPS

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class AttendanceController {
    def Scaffold=true;
    def index() {}
}
