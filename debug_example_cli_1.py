import argparse


def greet_cli(name: str, age: int) -> str:
    """Will greet with provided 'name' and 'age' arguments."""
    GREET_STR = f'Hello, {name} with age: {age}!'
    return GREET_STR


if __name__ == '__main__':

    parser = argparse.ArgumentParser(description='Example CLI script.')
    parser.add_argument(
        '-n',
        '--name',
        action='store',
        dest='name',
        default='Jefry',
        help='The name you want to greet.',
    )
    parser.add_argument(
        '-a',
        '--age',
        action='store',
        dest='age',
        default=18,
        help='The age you want to print.',
    )

    args = parser.parse_args()

    greeting = greet_cli(**args.__dict__)
    print(greeting)
