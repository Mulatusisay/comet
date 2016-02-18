package OPS

class Temporary {
        Staff mLF
        String dayOff

        String toString(){
            "${mLF}"
        }
       // static belongsTo = [group:Bch]

        static constraints = {
           // group()
            mLF()
            dayOff(inList: ["MON","TUE","WED","THU","FRI","SAT","SUN"])

        }
    }

