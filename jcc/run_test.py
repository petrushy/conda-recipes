import sys, os

try:
    import jcc
    jcc.initVM()
    print ("JCC test OK")

except:
    print ('JCC Error')
    print ('JCC_JDK = ', os.environ['JCC_JDK'])
    print ('PATH = ', os.environ['PATH'])
    raise
