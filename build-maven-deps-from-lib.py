#!/bin/python3

"""
This script is used to generate the maven dependencies from the lib folder.
"""

import os
import re
import sys


def main():
    """

    """

    project_dir = os.path.dirname(os.path.realpath(__file__))
    lib_dir = os.path.join(project_dir, 'lib')
    os.chdir(lib_dir)

    maven_deps = []
    maven_imports = []

    previous_deps = []

    for file in os.listdir():
        if file.endswith('.jar'):

            matcher = re.search(r'^([\w\.\-]+)\_([\w\.\-]+)\.jar', file)
            if matcher:
                dep = matcher.group(1)

                group_id = ".".join(dep.split(".")[:-1])
                artifact_id = dep.split(".")[-1]
                version = matcher.group(2)

                # detect duplicates TODO this should technically be a while loop
                dep_key = f"{artifact_id}"
                if dep_key not in previous_deps:
                    previous_deps.append(dep_key)
                else:
                    group_id = ".".join(dep.split(".")[:-2])
                    artifact_id = "-".join(dep.split(".")[-2:])

                maven_deps.append(f"""
<dependency>
    <groupId>{group_id}</groupId>
    <artifactId>{artifact_id}</artifactId>
    <version>{version}</version>
</dependency>""")

                maven_imports.append(f"mvn install:install-file -Dfile={file} -DgroupId={group_id} -DartifactId={artifact_id} -Dversion={version} -Dpackaging=jar")

            else:
                raise ValueError(f'Could not parse {file} - please rename it to <group_id>.<artifact_id>_<version>.jar')

    # write maven imports to file
    with open(os.path.join(lib_dir, 'maven-imports.sh'), 'w') as f:
        f.write("#!/bin/bash\n")
        f.write("\n".join(maven_imports))

    # write maven deps to file
    with open(os.path.join(lib_dir, 'maven-deps.xml'), 'w') as f:
        for dep in maven_deps:
            f.write(dep)


if __name__ == '__main__':
    main()
