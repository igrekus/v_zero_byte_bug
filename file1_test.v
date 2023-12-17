module main

[assert_continues]
fn test_bug() {
	part1 := 'test1'
	part2 := 'test2'
	s1 := '$part1\x00$part2'
	s2 := 'test1\x00test2'

	b1 := s1.bytes()
	b2 := 'test1\x00test2'.bytes()

	assert s1 == s2
	assert b1 == b2
}
