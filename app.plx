#!/bin/perl

use Dancer2;
use File::Slurp;
use Mojo::SQLite;
use Template::Toolkit;
set port => 8080;
set template => 'template_toolkit';

# setup the db and flag
my $db = Mojo::SQLite->new('sqlite:db/hhctf.db')->db;
for my $query (split ';', read_file('db/movies.sql')) {$db->query($query);}
my $flag = "FLAG{H0_Rc-RuX_3S}";
# cleanup
$SIG{INT} = sub {exit 0};
END {unlink(glob('db/hhctf*'))}

get qr'^/$|^/index.html.*$' => sub {
    my $search = query_parameters->get('search');
    if($search) {
        # here is the vulnerable part
        my $res = $db->query("SELECT * FROM movies WHERE id = $search")->hashes->to_array;
        return template 'index.html' => {movie => @$res, search => $search} if @$res > 0;
    }
    return template 'index.html';
};

any ['get', 'post'] => '/login' => sub {
    my $user = body_parameters->get('username');
    my $pass = body_parameters->get('password');
    if($user && $pass) {
        # supposed not to be vulnerable to sql injection
        my $res = $db->query('SELECT * FROM users7693 WHERE username = (?) AND password = (?)',$user, $pass)->hashes->to_array;
        return "Good job, here's your flag $flag\n" if scalar @$res > 0;
        return template 'login.html' => {error => "Wrong username or password"};
    }
    return template 'login.html';
};

start;
