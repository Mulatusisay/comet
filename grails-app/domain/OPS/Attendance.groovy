package OPS

class Attendance {
   // String day
    String shift
    String month
    //Date dateCreated
    String toString(){
        "${shift},${month}"
    }
    static hasMany = [attendanceDay:Attendance2]
    static constraints = {

        shift(inList: ["EVNG","LTEV","ERMG","MRNG","LTMG","OFHR","NOON"])
        attendanceDay(nullable: true)
        month(inList: ["JAN","FEB","MAR","APR","MAY","JUN","JUL","AUG","SEP","OCT","NOV","DEC"])

    }
}
