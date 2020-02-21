project(
    'solt',
    ['c'],
    version: '0.1',
    license: [
        'MIT',
    ],
    default_options: [
        'prefix=/usr',
    ],
)

path_prefix = get_option('prefix')
path_datadir = join_paths(path_prefix, get_option('datadir'))

solt_dir = join_paths(path_datadir, 'solt')
completions_dir = join_paths(path_datadir, 'bash-completions', 'completions', 'solt')

install_data(
    'solt',
    'solt_common',
    'solt_conf',
    'solt_functions',
    'solt_help',
    'solt_log',
    'solt_repo',
    'solt_solbuild',
    'solt_source',
    install_dir: solt_dir,
)

install_data(
    'solt-completion.bash',
    install_dir: completions_dir,
)

report = [
    '    Build configuration:',
    '    ====================',
    '',
    '    prefix:                                 @0@'.format(path_prefix),
    '    datadir:                                @0@'.format(path_datadir),
]

# Output some stuff to validate the build config
message('\n\n\n' + '\n'.join(report) + '\n\n')
