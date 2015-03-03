package meli.regalos



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class RegaloController {
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Regalo.list(params), model:[regaloInstanceCount: Regalo.count()]
    }

    def show(Regalo regaloInstance) {
        respond regaloInstance
    }

    def create() {
        respond new Regalo(params)
    }

    @Transactional
    def save(Regalo regaloInstance) {
        if (regaloInstance == null) {
            notFound()
            return
        }

        if (regaloInstance.hasErrors()) {
            respond regaloInstance.errors, view:'create'
            return
        }

        regaloInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'regalo.label', default: 'Regalo'), regaloInstance.id])
                redirect regaloInstance
            }
            '*' { respond regaloInstance, [status: CREATED] }
        }
    }

    def edit(Regalo regaloInstance) {
        respond regaloInstance
    }

    @Transactional
    def update(Regalo regaloInstance) {
        if (regaloInstance == null) {
            notFound()
            return
        }

        if (regaloInstance.hasErrors()) {
            respond regaloInstance.errors, view:'edit'
            return
        }

        regaloInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Regalo.label', default: 'Regalo'), regaloInstance.id])
                redirect regaloInstance
            }
            '*'{ respond regaloInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Regalo regaloInstance) {

        if (regaloInstance == null) {
            notFound()
            return
        }

        regaloInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Regalo.label', default: 'Regalo'), regaloInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'regalo.label', default: 'Regalo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
