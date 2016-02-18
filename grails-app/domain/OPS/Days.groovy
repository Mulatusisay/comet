package OPS

class Days {
    String days
    String toString(){
        "${days}"
    }
    static belongsTo = [month:Month]
    static constraints = {
        days(inList: ["MO","TU","WE","TH","FR","SA","SU"])
        month(nullable: true)
    }
}
