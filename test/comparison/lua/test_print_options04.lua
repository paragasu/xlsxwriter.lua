----
-- Test cases for xlsxwriter.lua.
--
-- Test worksheet print options.
--
-- Copyright 2014-2015, John McNamara, jmcnamara@cpan.org
--

local Workbook = require "xlsxwriter.workbook"

local workbook  = Workbook:new("test_print_options04.xlsx")
local worksheet = workbook:add_worksheet()

worksheet:print_row_col_headers()
worksheet:write_string("A1", "Foo")

workbook:close()
