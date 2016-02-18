package OPS
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class AttendanceInController {
    def Scaffold=true;
    def index() {}
}
