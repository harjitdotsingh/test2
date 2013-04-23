package test2

class Content{



   String title
   String content
   Boolean locked = false

   Date dateCreated
   Date dateModified


   String lastAccessedBy
   static transients = ['lastAccessedBy']
    static constraints = {
        title(blank: false,unique:true)
        content(blank: false)
    }

}
