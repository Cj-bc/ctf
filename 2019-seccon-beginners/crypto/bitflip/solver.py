from Crypto.Util.number import long_to_bytes                                                                                                                  
# Logic of F ^ r
# F ^ r | r == 1 && F % 2 == 0 = F + 1
#       | r == 1 && F % 2 == 1 = F - 1
#       | r == 2 && 2bit 0  = F + 2
#       | r == 2 && 2bit 1  = F - 2
#       | r == 4 && 3bit 0  = F + 4
#       | r == 4 && 3bit 1  = F - 4

C = 82095464138999038561660001216421591610173745734011075257833754285976853929684218975096276189770030997755430833265310096322846163996593906750141663232969276669064973339172970906791978577844232348991785160358927670924383670114242589045107554707076682668422130048831018206656008994878220426287718128558646983268 # Insert here

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
    print(str(FLAG_r))
    possible_FLAG.append(int.from_bytes(bytes([str(FLAG_r).encode()[0] ^ str(r).encode()[0]]), 'big'))

map(lambda x: long_to_bytes(x), possible_FLAG)
for f in possible_FLAG:
    print(f)

# vim:ft=python
