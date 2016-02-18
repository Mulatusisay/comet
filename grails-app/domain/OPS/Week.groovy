package OPS

class Week {
    String week

    String toString(){
        "${week}"
    }
    static hasMany=[days:Days]
    static constraints = {
        week()
        days(nullable: true)
    }
}
