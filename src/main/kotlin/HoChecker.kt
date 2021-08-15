class HoChecker : ShantyCodeBaseListener() {
    var num_of_ho = 0

    override fun enterHo(ctx: ShantyCodeParser.HoContext) {
        num_of_ho++
    }

    fun check_ho() {

    }
}