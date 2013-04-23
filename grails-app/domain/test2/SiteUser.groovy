package test2

class SiteUser {

    String userName;
    Integer age;


    static hasMany = [reports:Content]

    static constraints = {
        userName(unique: true,email: true,maxSize:255)
        age(range:18..99)
    }
}
