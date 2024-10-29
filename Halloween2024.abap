report zz_frighten_abap_devs.
 
define summon_ghost.
  assign component sy-index of structure spookyghosts to field-symbol(&1).
  skip. data(i1) = sy-index + 1. data(i2) = i1 + 3.
end-of-definition.
 
data: begin of spookyghosts,
        blinky type c length 50 value 'gkHRMadxpJwpuAyloHC6aJWlpflvroLpwqReGSe9inUCRXwZIA',
        pinky  type c length 50 value '0GFS82oHBmEcefhtKWiHymSYe2CsW6T1nrueu0de7E',
        inky   type c length 50 value 'EZeXH7Wo8brVsrVNo1nrn2LoZu8Srg0kOZsE6IdpnvN',
        clyde  type c length 50 value 'WR3enYwSo5zuZZrT2O80wL0n2USxyAOcP6tCfcomzdzfeQsv1x',
      end of spookyghosts, c1.
 
do 4 times.
  summon_ghost <f>.
  do 14 times varying c1
    from <f>+i1(1) next <f>+i2(1) range <f>.
    write c1.
  enddo.
enddo.
