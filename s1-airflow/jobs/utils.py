def split_names(names):
    """Split full name to first and last name.
    Note: Assumes that their last name is the last word.
    
    Parameters
    ----------
    names : pandas.Series
        Full names to be splitted.
        
    Returns
    -------
    pandas.DataFrame
    
    Raises
    ------
    AssertionException
        names is empty.
    """
    assert len(names) != 0, "Invalid input. Empty series."

    return names.str.rsplit(" ", n=1, expand=True).rename(
        columns={0: "first_name", 1: "last_name"}
    )
