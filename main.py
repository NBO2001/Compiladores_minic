from antlr4 import *
from MinicLexer import MinicLexer
from MinicParser import MinicParser
import sys

def app(fileName: str):

    with open(fileName, 'r') as f:
        file = f.read()

        # Carregar a entrada do terminal
        input_stream = InputStream(file)
        # Criar um lexer
        lexer = MinicLexer(input_stream)
        # Criar um fluxo de tokens a partir do lexer - CommonTokenStream eh uma classe de antlr4
        token_stream = CommonTokenStream(lexer)
        # Criar um parser com o fluxo de tokens
        parser = MinicParser(token_stream)
        # Chamar o metodo inicial do parser
        tree = parser.program()
        # Chamar o visitor passando a Arvore de Parser como parametro

        print(tree.toStringTree(recog=parser))


if __name__ == '__main__':
    n = len(sys.argv)

    assert n == 2, 'Ivalidade arguments'

    app(sys.argv[1])
