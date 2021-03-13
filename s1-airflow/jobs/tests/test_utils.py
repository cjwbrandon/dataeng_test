import pytest
import pandas as pd
from jobs.utils import split_names

# Test cases for split_names function
def test_split_names():
    data = pd.Series(["first last", "first first last"])
    assert split_names(data).equals(
        pd.DataFrame(
            [["first", "last"], ["first first", "last"]],
            columns=["first_name", "last_name"],
        )
    )

