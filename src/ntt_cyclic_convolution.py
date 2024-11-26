from modular_arithmetic import *


def Butterfly_CT(a, b, omega, q):
    """
    Cooley-Tukey Butterfly operation
    a <- a + (omega * b) mod q
    b <- a - (omega * b) mod q
    """
    b = modular_multiplication(b, omega, q)
    
    a_new = modular_addition(a, b, q)
    b_new = modular_subtraction(a, b, q)
    return a_new, b_new

def Butterfly_GS(a, b, omega, q):
    """
    Gentleman-Sande Butterfly operation
    a <- a + b mod q
    b <- (a - b) * omega mod q

    Note that it remains to divide a and b by two to make INTT
    """

    a_new = modular_addition(a, b, q)
    b_new = modular_subtraction(a, b, q)

    b_new = modular_multiplication(b_new, omega, q)
    return a_new, b_new



