package OPS
import grails.plugin.springsecurity.annotation.Secured

@Secured(['permitAll'])
class PayrollController {
    def Scaffold=true;
    def index() {}
}
