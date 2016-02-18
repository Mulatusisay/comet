package OPS

class Attendance2 {
    String day
    Date dateCreated
    static hasMany = [reportIn:AttendanceIn, reportOut:AttendanceOut]
    static belongsTo = [schedule: Attendance]
    String toString(){
        "${day},${dateCreated}"
    }

    static constraints = {
        day (inList: ["MON","TUE","WED","THU","FRI","SAT","SUN"])
        reportIn(nullable: true)
        reportOut(nullable: true)
    }
}
