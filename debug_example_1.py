NAMES = ['Bob', 'John', 'Jenny', 'Sue']


def greet(name: str) -> str:
    """Will greet with provided 'name' argument."""
    GREET_STR = f'Hello, {name}!'
    return GREET_STR


for name in NAMES:
    greeting = greet(name=name)
    print(greeting)
