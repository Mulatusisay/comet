package OPS

class Payroll {

    BigDecimal basicSalary
    BigDecimal bonus
    BigDecimal allowance
    Integer workingDays
    BigDecimal totalEarning
    BigDecimal tax
    BigDecimal deduction
    BigDecimal netPay



    static constraints = {
        basicSalary()
        bonus()
        allowance()
        workingDays()
        totalEarning()
        tax()
        deduction()
        netPay()

    }
}
