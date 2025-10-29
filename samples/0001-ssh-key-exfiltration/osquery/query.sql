-- Placeholder osquery query
-- Replace with a query that correlates file reads of ~/.ssh/* and outbound network activity
SELECT pid, name, cmdline FROM processes WHERE cmdline LIKE '%curl%' OR cmdline LIKE '%scp%';
