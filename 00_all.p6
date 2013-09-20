use v6;
=begin explanation
For our convenience (for now), all the demo programs are in this single file.
They will be broken out into separate files by a Perl 5 utility script.
This file is best edited with Vim sized to 80 columns X 25 lines. To size:
  perl6 -e 'say (^8).map({$_ x 10}); say (0..9).join x 8; .say for 3..25;'
`scroll` should auto-set to 25; Ctrl-U and Ctrl-D to navigate.

Code+output *must* fit in a single 80x25 screen.

format:
 #--- title           Marks the start of a new, separate program
 # Comment-only lines for new concepts
 say some_code();          # brief explanation
 say some_other_code();    # brief explanation

 say $even_more + $code; # brief explanation

 =begin output
 output of some_code
 output of some_other_code
 output of addition
 =end output
=end explanation

#--- say
# Statements end with ';', and comments start with '#'

# To output to the screen, use the say() or print() function.

say(4);   say(32);  # say() adds a "newline" to its output.

print(9); print(8); # print() does not add a newline.
say;                # say() with no argument only outputs a newline.

say 7, 6;           # The parenthesis are optional.

# Simple string literals are enclosed in single quotes.
say 'Hello, world!';

=begin output
4
32
98
76
Hello, world!
=end output



#--- new file
# XXX Stop being boring!
# Basic math operators have the same precedence as in Algebra.
# The ** operator is used for exponents ( X ** Y means X to the Yth power).
say 2 + 3 * 4 ** 2;
say 2 + 3 * 4 ** (1/2);

# The ~ operator concatenates (stitches together) two strings.
say 'sol' ~ 'ace';

# When you use a string where a number is expected, it gets converted to a
# number.
say '38' + '4';

# The reverse conversion also happens as needed.
say 2 ~ 'cool' ~ ( 3 + 1 ) ~ 'school';

=begin output
50
8
solace
42
2cool4school
=end output

#--- x and xx

say 'WOOT!' x 15; # The x operator "repeats" a string

say 2 + ( '9' x 3 );

say 'a', ( 'B', 'c', 'd' ) xx 3  ; # The xx operator repeats a list

=begin output
WOOT!WOOT!WOOT!WOOT!WOOT!WOOT!WOOT!WOOT!WOOT!WOOT!WOOT!WOOT!WOOT!WOOT!WOOT!
1001
aBcdBcdBcd
=end output












#--- quotes - single and double

say "abc\n\txyz"; # Tabs and newlines can be used in double-quoted strings.
say 'abc\n\txyz'; # Single-quoted strings treat nothing as special.

=begin output
abc
	xyz
abc\n\txyz
=end output















#--- Vars - scalar

# Variables are declared with "my".
# Simple variable names start with $
my $name;
$name = 'Camelia'; # Values are assigned to variables with =

# You can declare, calculate, and assign at the same time.
my $full_name = $name ~ ' the Butterfly';
say $full_name;

=begin output
Camelia the Butterfly
=end output











#--- control structures

# Comparison operators are either for numbers, or for strings
# 	Numeric: <  >  <= >= == !=
# 	String:  lt gt le gt eq ne

# The basic conditionals: if, unless
my $age = 42;
if $age >= 17 {
    say "You are of-age in Harry Potter's world";
}

my $mood = 'angry';
unless $mood eq 'happy' {
    say 'No soup for you!';
}


=begin output
You are of-age in Harry Potter's world
No soup for you!
=end output



#--- Ranges1
say  1  ..  4 ; # The .. operator creates a "range"
say 'a' .. 'z';
say 'A' .. 'D', 'F'; # A range in a list

say  3  ..  6;
say  3 ^..  6;
say  3  ..^ 6;
say  3 ^..^ 6;

say 'A' ^..^ 'Z';
# XXX needs comments!
=begin output
1234
abcdefghijklmnopqrstuvwxyz
ABCDF
3456
456
345
45
BCDEFGHIJKLMNOPQRSTUVWXY
=end output



# Local variables:
#   c-file-style: "parrot"
# End:
# vim: expandtab shiftwidth=4 scroll=25 :
