import org.antlr.v4.runtime.CharStreams
import org.antlr.v4.runtime.CommonTokenStream
import org.antlr.v4.runtime.tree.ParseTreeWalker

class HoLib {
    init {
        System.loadLibrary("HoLib")
    }

    external fun is_valid(lines: Int, count: Int): Boolean
}

fun main(args: Array<String>) {
    val filename = System.getenv("FILENAME") ?: "failed"
    if (filename == "failed") {
        println("Please define file to run via the FILENAME env variable")
        return
    }

    val file = CharStreams.fromFileName(filename)

    val lexer = ShantyCodeLexer(file)
    val tokens = CommonTokenStream(lexer)
    val parser = ShantyCodeParser(tokens)
    val entrypoint = parser.top_lvl_prog()
    val walker = ParseTreeWalker()
    val hocheck = HoChecker()
    val scListener = SCListener()
    walker.walk(hocheck,entrypoint)

    if(hocheck.check_ho()) {
        println("Ho number check passed!")
    }
    else {
        println("Ho number check failed :(")
        return
    }
    
    walker.walk(scListener,entrypoint)
}