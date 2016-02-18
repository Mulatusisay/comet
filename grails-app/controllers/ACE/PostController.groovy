package ACE

import grails.plugin.springsecurity.annotation.Secured
import signin.User

@Secured(['ROLE_ADMIN'])
class PostController {
    def springSecurityService
    def index() {
        def msgs=currentUserTimeline()
        return [message: msgs]   //return is optional
        //[messages: messages, user: 'mula', city: 'addis'] key:value
    }
    def updateStatus={
        def post= new Post(message: params.message)
        post.author=lookupUser()
        post.save()
        def messages=currentUserTimeline()
        render template: 'messages', collection: messages, var: 'message'
    }
    private currentUserTimeline(){
        //def usr=lookupUser()
        def messages=Post.withCriteria {
            author{
                //eq 'username', usr.username
                eq 'username', springSecurityService.principal.username
            }
            maxResults 10
            order 'dateCreated', 'desc'
        }
        messages
    }
    private lookupUser(){
        User.get(springSecurityService.principal.id)
    }
}
