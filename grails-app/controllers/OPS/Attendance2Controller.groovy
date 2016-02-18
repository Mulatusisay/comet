package OPS
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class Attendance2Controller {
    def Scaffold=true;
    def index() {}
}
