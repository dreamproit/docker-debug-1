import time


def main() -> None:
    print('main() of the container with some business logic.')
    while True:
        time.sleep(3)
        print("I'm In The Middle of Some Calibrations.")


if __name__ == '__main__':
    main()
