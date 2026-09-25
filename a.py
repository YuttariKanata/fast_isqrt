# Data extraction and averaging
data_no_mod = {
    "64": {
        "Random": [3.95677, 4.01718, 3.92818],
        "Pure Quads": [13.7119, 13.7782, 13.7737],
        "Non-quadratic": [1.69526, 1.68501, 1.65481]
    },
    "128": {
        "Random": [7.08921, 5.31886, 5.3669],
        "Pure Quads": [41.2552, 42.0131, 41.1613],
        "Non-quadratic": [2.56949, 2.4951, 2.69301]
    }
}

data_with_mod = {
    "64": {
        "Random": [3.96907, 4.12608, 3.9915],
        "Pure Quads": [14.8153, 14.9811, 14.7928],
        "Non-quadratic": [1.89659, 1.75097, 1.64786]
    },
    "128": {
        "Random": [5.3022, 5.19897, 5.20508],
        "Pure Quads": [45.7713, 45.6797, 45.9118],
        "Non-quadratic": [2.54683, 2.44729, 2.47693]
    }
}

def get_avg(lst):
    return round(sum(lst) / len(lst), 4)

print("No Mod63:")
for bits in ["64", "128"]:
    for test in ["Random", "Pure Quads", "Non-quadratic"]:
        print(f"  {bits}bit {test}: {get_avg(data_no_mod[bits][test])}")

print("\nWith Mod63:")
for bits in ["64", "128"]:
    for test in ["Random", "Pure Quads", "Non-quadratic"]:
        print(f"  {bits}bit {test}: {get_avg(data_with_mod[bits][test])}")
