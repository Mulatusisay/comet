package ACE.ADVICERY

class EZ {

    String org
    String inFlt
    String eSTA
    String aCTA
    String otFlt
    REGISTRATION reg
    String dst
    String dPTM
    Stand sTD
    Integer psg
    String load
    String rtn
    String gse
    String agt
    String bch
    String brs
    String add
    static constraints = {
        org(inList: ["ADD","DXB","LOS","IAD","LFW","DUB","YYZ","MXP"])
        inFlt(inList: ['100','101','501',"503",'703'])
        eSTA()
        aCTA()
        otFlt(inList: ["200","404","604"])
        reg()
        dst()
        dPTM()
        sTD()
        psg()
        rtn()
        load()
        gse()
        bch()
        agt()
        brs()
        add()

    }
}
