package OPS
import grails.plugin.springsecurity.annotation.Secured

@Secured(['permitAll'])
class TaskController {
    def Scaffold = true;

    def index() {}
}
