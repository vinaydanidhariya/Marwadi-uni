-- Write a function that calculates the binary value for the given number.

CREATE OR REPLACE FUNCTION dec2bin (N in number) RETURN varchar2 IS
  binval varchar2(64);
  N2     number := N;
BEGIN
  while ( N2 > 0 ) loop
     binval := mod(N2, 2) || binval;
     N2 := trunc( N2 / 2 );
  end loop;
  return binval;
END dec2bin;
/

SQL> SELECT dec2bin(22) FROM dual;
DEC2BIN(22)
----------------
10110
