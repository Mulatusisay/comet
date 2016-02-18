package OPS


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class UITestController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond UITest.list(params), model: [UITestInstanceCount: UITest.count()]
    }
    def SimZirzir= {
        def allzirzirs=UITest.list()
        [allzirzirs:allzirzirs]

    }
    def show(UITest UITestInstance) {
        respond UITestInstance
    }

    def create() {
        respond new UITest(params)
    }

    @Transactional
    def save(UITest UITestInstance) {
        if (UITestInstance == null) {
            notFound()
            return
        }

        if (UITestInstance.hasErrors()) {
            respond UITestInstance.errors, view: 'create'
            return
        }

        UITestInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'UITest.label', default: 'UITest'), UITestInstance.id])
                redirect UITestInstance
            }
            '*' { respond UITestInstance, [status: CREATED] }
        }
    }

    def edit(UITest UITestInstance) {
        respond UITestInstance
    }

    @Transactional
    def update(UITest UITestInstance) {
        if (UITestInstance == null) {
            notFound()
            return
        }

        if (UITestInstance.hasErrors()) {
            respond UITestInstance.errors, view: 'edit'
            return
        }

        UITestInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'UITest.label', default: 'UITest'), UITestInstance.id])
                redirect UITestInstance
            }
            '*' { respond UITestInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(UITest UITestInstance) {

        if (UITestInstance == null) {
            notFound()
            return
        }

        UITestInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'UITest.label', default: 'UITest'), UITestInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'UITest.label', default: 'UITest'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
