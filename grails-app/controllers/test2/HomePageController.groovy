package test2

import grails.converters.JSON

class HomePageController {



    def index() {


        redirect (action: 'create')


        }

    def update() {

        render "update"

    }

    def create() {

        Content c = new Content(content: 'test',title: 'testTitle')
        c.conten
        render c  as JSON


    }


}
