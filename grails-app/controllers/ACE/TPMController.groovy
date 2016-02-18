package ACE
import grails.plugin.springsecurity.annotation.Secured

@Secured(['permitAll'])
class TPMController {
    def Scaffold=true;
    def index() {}
}
