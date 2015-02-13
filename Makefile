CARGO = cargo

CARGO_OPTS =

all:
	$(MAKE) build
	$(MAKE) doc

build:
	$(CARGO) $(CARGO_OPTS) build

clean:
	$(CARGO) $(CARGO_OPTS) clean

check:
# work around https://github.com/rust-lang/cargo/issues/1289
	rm -f target/tests* target/bench*
	$(MAKE) build
	$(MAKE) test

test:
	$(CARGO) $(CARGO_OPTS) test

bench:
	$(CARGO) $(CARGO_OPTS) bench

doc:
	$(CARGO) $(CARGO_OPTS) doc

.PHONY: all build clean check test bench doc
