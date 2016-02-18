package OPS

class Dates {
    Integer dates
    String toString(){
        "${dates}"
    }
    static belongsTo = [month:Month]
    static constraints = {
        dates(range: 1..31)
        month(nullable: true)
    }
}
