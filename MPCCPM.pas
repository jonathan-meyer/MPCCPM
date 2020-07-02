PROGRAM MPCCPM (INPUT, OUTPUT);

(* AUTHOR: DAVID C. STOCK *)

VAR 
    M:    REAL; (* MILEAGE *)
    G:    REAL; (* GALLONS *)
    C:    REAL; (* COST *)
    MPG:  REAL; (* THE MPG *)
    CPM:  REAL; (* THE CPM *)
    TTLM: REAL; (* TOTAL MILES *)
    TTLG: REAL; (* TOTAL GALLONS *)

BEGIN
    READ (LMMPG);
        IF LMMPG <= 0 THEN 
            BEGIN
                WRITE ('ERROR');
                WRITELN;
            END
        ELSE
            REPEAT
                BEGIN
                    READ (M);
                    READ (G);
                    READ (C);

                    WRITE (M, G, C);

                    MPG := M/G;
                    CPM := C/M;

                    WRITE (MPG, CPM);

                    TTLM := TTLM + M;
                    TTLG := TTLG + G;
                    TTLC := TTLC + C;
                
                    WRITE (CPM)

                END
            UNTIL M = 0
END.
