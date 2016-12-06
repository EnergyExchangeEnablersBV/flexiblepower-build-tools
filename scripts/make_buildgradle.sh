#!/bin/bash

# This script generates a build.gradle for all projects that contain a bnd.bnd file

for d in ../../../* ; do
	if [ -f "$d/bnd.bnd" ];
	then
		echo "$d"
		VERSION=`cat "$d/bnd.bnd" | grep -oP '(?<=Bundle-Version: )\d+\.\d+\.\d+'`
		if [ -z "$VERSION" ];
		then
			echo "WARNING: $d/bnd.bnd has no version number"
		else
			cat > "$d/build.gradle" <<EOL
publishing {
    publications {
        mavenJava(MavenPublication) {
            groupId project.name
            version '$VERSION'
            artifactId project.name
            artifact file("generated/\${project.name}.jar")
        }
    }
}
EOL
		fi
	fi
done
