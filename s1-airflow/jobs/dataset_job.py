import pandas as pd
import numpy as np

from utils import split_names


def transform(data):
    """Transforming the data based on given processing tasks.
    """
    # 1. Delete any rows which do not have a name
    output = data[~data["name"].isna()]

    # 2. Split full name to first and last name
    split = split_names(output)
    output = split.merge(output[["price"]])

    # 3. Remove any zeroes prepended to price
    output["price"] = output["price"].astype(np.float)

    # 4. Create a new field named above_100, which is true if the price is strictly greater than 100
    output["above_100"] = output["price"] > 100

    return output

