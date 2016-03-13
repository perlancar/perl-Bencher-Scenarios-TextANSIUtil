package Bencher::Scenario::TextANSIUtil::Startup;

# DATE
# VERSION

our $scenario = {
    summary => 'Benchmark startup overhead of Text::ANSI::{Util,WideUtil}',
    module_startup => 1,
    modules => {
        'Text::ANSI::Util' => {version => 0.22},
    },
    participants => [
        {module => 'Text::ANSI::Util'},
        {module => 'Text::ANSI::WideUtil'},
    ],
};

1;
# ABSTRACT:
