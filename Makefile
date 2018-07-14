image_name = lavrov/sbt-graalvm
version = 1.1.6

default:
	docker build . --build-arg SBT_VERSION=${version} --tag ${image_name}:${version}
