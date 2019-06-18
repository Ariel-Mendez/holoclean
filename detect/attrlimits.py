class AttrLimits:
    """
    Data structure to define min and max limits for numerical attribute
    """
    def __init__(self, name, min_val, max_val):
        self.name = name
        self.min = min_val
        self.max = max_val