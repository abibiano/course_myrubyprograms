TEST_FLOAT = 3.146
test_float_round = TEST_FLOAT.round(2).to_s
test_float_sprintf = "%.2f" % TEST_FLOAT
puts test_float_round
puts test_float_sprintf
puts test_float_round == test_float_sprintf # prints TRUE