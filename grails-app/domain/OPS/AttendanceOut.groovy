package OPS

class AttendanceOut {
    Date createdDate
    Staff employee
    static belongsTo = [out:Attendance2]

    String toString(){
        "${createdDate}"
    }
    static constraints = {
        employee()
        createdDate()
        out(nullable: true)
    }

}
