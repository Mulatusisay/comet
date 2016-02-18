package OPS

class AttendanceIn {
    Staff employee
    Date dateCreated

    static belongsTo = [day:Attendance2]
    String toString(){
        "${dateCreated}"
    }
    static constraints = {
        employee()
        dateCreated()
        day()
    }
}
