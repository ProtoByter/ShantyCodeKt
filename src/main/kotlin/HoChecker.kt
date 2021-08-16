class HoChecker : ShantyCodeBaseListener() {
    var num_of_ho = 0
    var lines = 0

    override fun enterHo(ctx: ShantyCodeParser.HoContext) {
        num_of_ho++
    }

    override fun enterSc_statement(ctx: ShantyCodeParser.Sc_statementContext) {
        lines++
    }

    fun check_ho(): Boolean {
        return HoLib().is_valid(lines,num_of_ho)
    }
}