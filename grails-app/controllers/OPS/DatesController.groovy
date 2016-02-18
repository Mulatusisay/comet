package OPS
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class DatesController {
    def Scaffold=true;
    def index() {}
}
