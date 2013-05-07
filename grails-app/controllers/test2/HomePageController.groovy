package test2

class HomePageController {

     def monoBreakerService;

    def index() {


        redirect (action: 'create')


        }

    def update() {

        render "update"

    }

    def create() {
        try{
        Content c = new Content(content: 'test',title: 'testTitle')

            def status = monoBreakerService.serviceMethod


            if (status) {
                render "OK"
            }  else {
                render "Not OK" + status.error
            }



        } catch(Exception) {

        }


    }


}
