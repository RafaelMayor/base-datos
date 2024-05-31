delimiter //
create procedure ejemploProcedimiento (in p1 int)
    begin
        declare var int ;
        set var = p1 +2 ;
        case var
            when 2 then insert into lista values (66666);
            when 3 then insert into lista values (4545665);
            else insert into lista values (77777777);
        end case;
    end;
//