package OPS
import grails.plugin.springsecurity.annotation.Secured

@Secured(['permitAll'])
class MLFController {
    def Scaffold=true;

    def index() {}
}
