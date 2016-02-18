

package OPS

class Schedule {
    Date period
    String shift
    static hasMany = [month:Month]
    //Staff name
    //BCH leadBCH
   // BCH teamLeader
    String toString(){
        "${shift}"
    }
    static constraints = {
        shift(inList: ["EVNG","ERMN","LTMN","OFHR","GRVE"])
        period()
        month(nullable: true)
    }
}
