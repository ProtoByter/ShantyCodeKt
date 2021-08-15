import org.antlr.v4.runtime.CharStreams
import org.antlr.v4.runtime.CommonTokenStream
import org.antlr.v4.runtime.tree.ParseTreeWalker

fun main(args: Array<String>) {
    if (args.size != 2) {
        println("Usage: ShantyCodeKt filename")
        return
    }

    val filename = args[1]
    val file = CharStreams.fromFileName(filename)

    val lexer = ShantyCodeLexer(file)
    val tokens = CommonTokenStream(lexer)
    val parser = ShantyCodeParser(tokens)
    val entrypoint = parser.top_lvl_prog()
    val walker = ParseTreeWalker()
}