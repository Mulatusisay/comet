package OPS

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
@Secured(['ROLE_ADMIN'])
@Transactional(readOnly = true)
class WorkingDaysController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond WorkingDays.list(params), model: [workingDaysInstanceCount: WorkingDays.count()]
    }

    def show(WorkingDays workingDaysInstance) {
        respond workingDaysInstance
    }

    def create() {
        respond new WorkingDays(params)
    }

    @Transactional
    def save(WorkingDays workingDaysInstance) {
        if (workingDaysInstance == null) {
            notFound()
            return
        }

        if (workingDaysInstance.hasErrors()) {
            respond workingDaysInstance.errors, view: 'create'
            return
        }

        workingDaysInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'workingDays.label', default: 'WorkingDays'), workingDaysInstance.id])
                redirect workingDaysInstance
            }
            '*' { respond workingDaysInstance, [status: CREATED] }
        }
    }

    def edit(WorkingDays workingDaysInstance) {
        respond workingDaysInstance
    }

    @Transactional
    def update(WorkingDays workingDaysInstance) {
        if (workingDaysInstance == null) {
            notFound()
            return
        }

        if (workingDaysInstance.hasErrors()) {
            respond workingDaysInstance.errors, view: 'edit'
            return
        }

        workingDaysInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'WorkingDays.label', default: 'WorkingDays'), workingDaysInstance.id])
                redirect workingDaysInstance
            }
            '*' { respond workingDaysInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(WorkingDays workingDaysInstance) {

        if (workingDaysInstance == null) {
            notFound()
            return
        }

        workingDaysInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'WorkingDays.label', default: 'WorkingDays'), workingDaysInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'workingDays.label', default: 'WorkingDays'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
