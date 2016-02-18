package OPS

class GSE {

    String position
    String dayOff

    Staff driverName
    static constraints = {

        driverName()
        position()
        dayOff()
    }
}
