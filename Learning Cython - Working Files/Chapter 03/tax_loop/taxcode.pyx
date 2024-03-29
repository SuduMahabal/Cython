# Tax table for Australia for 2015/2016

cpdef double tax_table(double amount):
    if amount <= 18200:
        return 0
    elif amount <= 37000:
        return 0.19 * (amount - 18200)
    elif amount <= 80000:
        return 3572 + 0.325 * (amount - 37000)
    elif amount <= 180000:
        return 17547 + 0.37 * (amount - 80000)
    else:
        return 54547 + 0.45 * (amount - 180000)


cpdef double tot(double[:] taxable_incomes):
    cdef double total_tax = 0
    cdef int i, n
    n = taxable_incomes.shape[0]
    for i in range(n):
        total_tax += tax_table(
                taxable_incomes[i])
    return total_tax

