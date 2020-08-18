./arch/ia64/scripts/check-segrel.S: Assembler messages:
./arch/ia64/scripts/check-segrel.S:2: Error: unknown pseudo-op: `.rodata'
./arch/ia64/scripts/check-segrel.S:3: Error: no such instruction: `data4 @segrel(start)'
objdump: '/tmp/out3722': No such file
objdump: section '.rodata' mentioned in a -j option, but not found in any input file
./arch/ia64/scripts/toolchain-flags: 20: [: !=: unexpected operator
./arch/ia64/scripts/check-text-align.S: Assembler messages:
./arch/ia64/scripts/check-text-align.S:2: Error: unknown pseudo-op: `.proc'
./arch/ia64/scripts/check-text-align.S:3: Error: unknown pseudo-op: `.prologue'
./arch/ia64/scripts/check-text-align.S:4: Error: unknown pseudo-op: `.save'
./arch/ia64/scripts/check-text-align.S:7: Error: unknown pseudo-op: `.endp'
readelf: Error: '/tmp/out3722': No such file
./arch/ia64/scripts/check-gas-asm.S: Assembler messages:
./arch/ia64/scripts/check-gas-asm.S:1: Error: junk at end of line, first unrecognised character is `['
./arch/ia64/scripts/check-gas-asm.S:2: Error: unknown pseudo-op: `.xdata4'
objdump: '/tmp/out3749.o': No such file
objdump: section '.data' mentioned in a -j option, but not found in any input file
./arch/ia64/scripts/check-gas: 11: [: !=: unexpected operator
KCONFIG_SEED=0xF536090

WARNING: unmet direct dependencies detected for NUMA
  Depends on [n]: !IA64_HP_SIM [=n] && !FLATMEM [=y]
  Selected by [y]:
  - IA64_SGI_SN2 [=y] && <choice>
