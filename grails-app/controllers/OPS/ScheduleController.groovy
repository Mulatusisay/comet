package OPS
import grails.plugin.springsecurity.annotation.Secured

@Secured(['permitAll'])
class ScheduleController {
    def Scaffold=true;

    def index() {}
}
