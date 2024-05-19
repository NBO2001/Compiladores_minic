from antlr4 import *
from MinicLexer import MinicLexer
from MinicParser import MinicParser

# Carregar a entrada do terminal
input_stream = InputStream(input("? "))
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

# http://www.example.com:80/path/to/file?search=query&sort=ascending#section2
# https://secure.example.com/register?user=abc&token=123#signup
# ftp://example.com/downloads/file.zip