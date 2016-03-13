package Bencher::Scenario::TextANSIUtil::Wrap;

# DATE
# VERSION

use utf8;

our $scenario = {
    summary => 'Benchmark text wrapping',
    modules => {
        'Text::ANSI::Util' => {version => 0.22},
    },
    participants => [
        {fcall_template => 'Text::ANSI::Util::ta_wrap(<text>, <width>)'},
        {fcall_template => 'Text::ANSI::WideUtil::ta_mbwrap(<text>, <width>)'},
        {code_template  => 'local $Text::Wrap::columns = <width>; Text::Wrap::wrap("", "", <text>)', module=>'Text::Wrap'},
    ],
    datasets => [
        {name=>'ascii-100c-nocolor', tags=>['ascii'], args=>{text=>'foobar bz ' x 10, width=>77}},
    ],
};

1;
# ABSTRACT:
