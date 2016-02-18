package OPS

class Month {
    String month
    String toString(){
        "${month}"
    }
    static belongsTo = [schedule:Schedule]
    static hasMany = [dates:Dates]
    static constraints = {
        schedule(nullable: true)
        month(inList: ["JAN","FEB","MAR","APR","MAY","JUN","JUL","AUG","SEP","OCT","NOV","DEC"])
        dates(nullable: true)

    }
}
