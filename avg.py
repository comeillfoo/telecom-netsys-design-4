#!/usr/bin/env python3
import sys


def main() -> int:
    for line in sys.stdin:
        data = line.strip().split()
        if not data:
            break
        rate = float(data[0])
        pings = list(map(float, data[1:]))
        avg_ping = sum(pings) / len(pings)
        print(rate, avg_ping, sep='\t') 
    return 0

if __name__ == '__main__':
    sys.exit(main())


