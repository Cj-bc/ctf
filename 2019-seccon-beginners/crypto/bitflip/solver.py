from Crypto.Util.number import long_to_bytes
# Logic of F ^ r
# F ^ r | r == 1 && F % 2 == 0 = F + 1
#       | r == 1 && F % 2 == 1 = F - 1
#       | r == 2 && 2bit目が0  = F + 2
#       | r == 2 && 2bit目が1  = F - 2
#       | r == 4 && 3bit目が0  = F + 4
#       | r == 4 && 3bit目が1  = F - 4

C = 0  # Insert here

# Think 'N' is enough big so that
# doesn't affect result of `pow(FLAG ^r, 3)`
# Which means, we consider `pow(FLAG ^ r, e, N)`
# as same as `pow(FLAG ^ r, e)`
#
# Let's reverse the procedure.

FLAG_r = pow(C, 1.0/3.0)

possible_FLAG = []
# As I don't know what r is, I'll try all pattern.
# It's obvious that `r` should be one of [0,1,2,3]
for r in range(4):
    possible_FLAG += FLAG_r ^ r

map(possible_FLAG, long_to_bytes)
for f in possible_FLAG:
    print(f)

# vim:ft=python
