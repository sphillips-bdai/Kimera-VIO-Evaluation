.PHONY: help euroc_small euroc_evaluation regression_tests metric_semantic

help:
	@./main_evaluation.py --help

euroc_small:
	@./main_evaluation.py -r -a -v --save_plots --save_boxplots --save_results experiments/euroc_small.yaml

euroc_evaluation:
	@./main_evaluation.py -r -a -v --save_plots --save_boxplots --save_results --write_website experiments/full_euroc.yaml

uHumans1_evaluation:
	@./uHumans_evaluation.py -a -v --save_plots --save_boxplots --save_results experiments/uHumans1.yaml

uHumans2_evaluation:
	@./uHumans_evaluation.py -a -v --save_plots --save_boxplots --save_results experiments/uHumans2.yaml

regression_tests:
	@./regression_tests.py -r -a --save_results experiments/regression_test.yaml

metric_semantic:
	@./metric_semantic_evaluation.py ~/Downloads/tesse_multiscene_office1_3d_semantic_v5.ply ~/Downloads/tesse_semantics_2.ply
