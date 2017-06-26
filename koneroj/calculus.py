from makebook import makebook
list=[ '/home/jezri/wits_calculus/partition.tex',
'/home/jezri/wits_calculus/partition_subinterval.tex',
'/home/jezri/wits_calculus/norm_of_a_partition.tex',
'/home/jezri/wits_calculus/riemann_sum.tex',
'/home/jezri/wits_calculus/definite_integral.tex',
'/home/jezri/wits_calculus/continues_functions_are_intergratable.tex'
,'/home/jezri/wits_calculus/piecewise_continuous_function.tex',
'/home/jezri/wits_calculus/piecewise_continuous_functions_are_intergratable.tex',
'/home/jezri/wits_calculus/nonintergratable_function.tex'
]
intergration_rules = [

'/home/jezri/wits_calculus/intergral_rules/order_of_intergration.tex',
'/home/jezri/wits_calculus/intergral_rules/zero_width_interval.tex',
'/home/jezri/wits_calculus/intergral_rules/intergration_constant.tex',
'/home/jezri/wits_calculus/intergral_rules/intergration_sum_and_difference.tex',
'/home/jezri/wits_calculus/intergral_rules/additivity.tex',
'/home/jezri/wits_calculus/intergral_rules/max_min_inequality.tex',
'/home/jezri/wits_calculus/intergral_rules/domination.tex'


]
list += intergration_rules
list += ['/home/jezri/wits_calculus/area.tex',
'/home/jezri/wits_calculus/mean_value_theorem_for_defininte_intergrals.tex',
'/home/jezri/wits_calculus/antiderivites_intergral.tex' ,
'/home/jezri/wits_calculus/intergral_of_odd_function.tex',
'/home/jezri/wits_calculus/intergral_of_even_function.tex',
'/home/jezri/wits_calculus/area_between_curves.tex'

]
volumn = [
'/home/jezri/wits_calculus/volume/volumn.tex',
'/home/jezri/wits_calculus/volume/volumn_by_disk.tex',
'/home/jezri/wits_calculus/volume/volumn_by_shell.tex'
]
list += volumn
name = 'calculus'
makebook(list,name)

