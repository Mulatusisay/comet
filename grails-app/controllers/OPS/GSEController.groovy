package OPS
import grails.plugin.springsecurity.annotation.Secured

@Secured(['permitAll'])
class GSEController {
    def Scaffold=true;

    def index() {}
}
