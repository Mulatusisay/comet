package OPS

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class TemporaryController {
    def Scaffold=true;
    def index() {}
}
