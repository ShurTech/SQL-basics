MERGE tblMileage as t
USING [tblmileage import] as s
ON (T.nhid = s.NHID AND t.INTID = s.INTID)
WHEN MATCHED THEN
UPDATE SET t.mileage = s.value
WHEN NOT MATCHED THEN
INSERT   (NHID,IntID,Mileage) VALUES (s.nhid,s.intid, s.value);