package OPS

class WorkingDays {
    String workingDays
    Integer date
    Date wrkDate

    static hasMany=[staff:Staff]
    String toString (){
        "${workingDays}"
    }
    //static belongsTo = [staff: Staff]
   //static hasMany = [staff:Staff]
    //Staff staff
    static constraints = {
        workingDays (inList: ["MON","TUE","WED","THU","FRI","SAT","SUN"])
        date range: 1..31
        //staff(nullable: true)
        wrkDate(nullable: true)
    }
}
