program suijichouqu;
const
  N=42;
  M=10;
var
  a:array[1..N] of longint;
  i,t,r:longint;

begin
  assign(output,'suijichouqu.txt');
  rewrite(output);
  randomize;
  for i:=1 to N do
    a[i]:=i;
  for i:=1 to M do
  begin
    r:=trunc(random*(N+1-i))+1;
    t:=a[r];
    a[r]:=a[i];
    a[i]:=t;
  end;
  for i:=1 to M do
    write(a[i],' ');
  close(output);
end.
