# AUTOGENERATED! DO NOT EDIT! File to edit: ../nbs/10_libB.ipynb.

# %% auto 0
__all__ = ['func_c', 'func_d']

# %% ../nbs/10_libB.ipynb 6
def func_c(c='A', # A variable
           cc='B'  # Another variable
          ) -> str: # Just returns a string that identifies the function.
    '''
    A very simple function that returns a string identifying itself.
    '''
    return f"This returned from func_c({c=}, {cc=})"

# %% ../nbs/10_libB.ipynb 12
def func_d(d='C', dd='D'): 
    '''
    Simple function that returns a string to identify itself.
    '''
    return f"This returned from func_b({d=}, {dd=})"
