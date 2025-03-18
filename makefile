env=dev
device=

install:
	bash scripts/fvm-run.sh flutter pub get

clean:
	bash scripts/fvm-run.sh flutter clean

generate_code:
	bash scripts/fvm-run.sh dart run build_runner watch --delete-conflicting-outputs

format:
	bash scripts/fvm-run.sh dart format .

analyze:
	bash scripts/fvm-run.sh flutter analyze .

run-debug-envless:
	bash scripts/fvm-run.sh flutter run

run-release-envless:
	bash scripts/fvm-run.sh flutter run --release

run-debug: env/$(env).json
ifeq "" "$(device)"
	bash scripts/fvm-run.sh flutter run --flavor $(env) -t lib/main.dart --dart-define-from-file=$<
else
	bash scripts/fvm-run.sh flutter run -d $(device) --flavor $(env) -t lib/main.dart --dart-define-from-file=$<
endif

run-release: env/$(env).json
ifeq "" "$(device)"
	bash scripts/fvm-run.sh flutter run --flavor $(env) -t lib/main.dart --release --dart-define-from-file=$<
else
	bash scripts/fvm-run.sh flutter run -d $(device) --flavor $(env) -t lib/main.dart --release --dart-define-from-file=$<
endif

run-profile: env/$(env).json
ifeq "" "$(device)"
	bash scripts/fvm-run.sh flutter run --flavor $(env) -t lib/main.dart --profile --dart-define-from-file=$<
else
	bash scripts/fvm-run.sh flutter run -d $(device) --flavor $(env) -t lib/main.dart --profile --dart-define-from-file=$<
endif

build-apk: env/$(env).json
	bash scripts/fvm-run.sh flutter build apk --flavor $(env) -t lib/main.dart --dart-define-from-file=$<

build-ipa: env/$(env).json
	bash scripts/fvm-run.sh flutter build ipa --flavor $(env) -t lib/main.dart --dart-define-from-file=$<

build-appbundle: env/$(env).json
	bash scripts/fvm-run.sh flutter build appbundle --flavor $(env) -t lib/main.dart --dart-define-from-file=$<

setup-fvm:
	dart pub global activate fvm
	fvm install

add-dependency:
	bash scripts/fvm-run.sh flutter pub add $(name)

remove-dependency:
	bash scripts/fvm-run.sh flutter pub remove $(name)

add-dev-dependency:
	bash scripts/fvm-run.sh flutter pub add --dev $(name)
