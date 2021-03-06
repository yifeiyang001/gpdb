-- @author prabhd 
-- @created 2012-12-05 12:00:00 
-- @modified 2012-12-05 12:00:00 
-- @tags dml 
-- @db_name dmldb
-- @execute_all_plans True
-- @description update_test23: Update on table wit composite distribution key
\echo --start_ignore
set gp_enable_column_oriented_table=on;
\echo --end_ignore
SELECT SUM(b) FROM dml_heap_pt_p;
UPDATE dml_heap_pt_p SET b = (dml_heap_pt_p.b * 1.1)::int FROM dml_heap_pt_r WHERE dml_heap_pt_p.b = dml_heap_pt_r.a and dml_heap_pt_p.b = dml_heap_pt_r.b;
SELECT SUM(b) FROM dml_heap_pt_p;
