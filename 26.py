from collections import Counter

def remainder(dividend, divisor, precision):
    if dividend > divisor: return []
    cur_dividend=dividend
    cur_divisor=divisor

    cur_subtrahend = 0

    return_digits = []

    while len(return_digits) < precision:
        if cur_divisor > cur_dividend:
            cur_dividend *= 10
            continue
        new_digit = cur_dividend // cur_divisor
        return_digits.append(new_digit)

        cur_subtrahend = cur_divisor * new_digit
        cur_dividend -= cur_subtrahend

        if cur_dividend % cur_divisor == 0:
            break

    return return_digits


def longest_repeating_fractional(precision):
    return None


# print(remainder(1, 3, 25))
print(longest_repeating_fractional(100))
