package test2

class Content{



   String title

   String createdBy;
   String ipAddress;
   String content
   Boolean locked = false

   Date dateCreated
   Date dateModified

   String lastAccessedBy
   String keywords
   String categoryTags
   static transients = ['lastAccessedBy']
    static constraints = {
        title(blank: false,unique:false,maxSize:512)
        content(blank: false)
        createdBy(email: true,blank:false)
    }

    static mapping = {
       content type: 'text'
    }

}
