package et

class IndexController {

    def index() {
        //def createMessasges()

    }

    def createMessages(){
        def post= new Index()
        post.message=params.message
        post.name=params.name
        post.email=params.email
        post.save()
    }

}
