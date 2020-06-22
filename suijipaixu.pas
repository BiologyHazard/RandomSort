program suijipaixu;
const
  N=10000;
var
  a:array[1..N] of longint;
  s:array[1..N] of boolean;
  i,t,r:longint;
procedure method1;
begin
  for i:=N downto 1 do
  begin
    r:=trunc(i*random)+1;
    t:=a[r];
    a[r]:=a[i];
    a[i]:=t;
  end;
  for i:=1 to N do
    write(a[i],' ');
end;

procedure method2;
begin
  for i:=1 to N do
    while true do
    begin
      r:=trunc(N*random)+1;
      if not s[r] then
      begin
        s[r]:=true;
        write(a[r],' ');
        break;
      end;
    end;
end;

begin
  assign(output,'suijipaixu.txt');
  rewrite(output);
  randomize;
  for i:=1 to N do
    a[i]:=i;
  method1;
  close(output);
end.
