openapi-generator-cli.cmd generate -i "./ory/openapi-kratos.json" -g csharp -o "Ory.Kratos" --model-name-prefix Kratos --additional-properties=nullableReferenceTypes=true, packageName=Ory.Kratos.Client, packageVersion=1.1.0, netCoreProjectFile=true, sourceFolder=.
mv Ory.Kratos/Ory.Kratos.Client/* ../src/Ory.Kratos.Client
rm -r -fo Ory.Kratos

openapi-generator-cli.cmd generate -i "./ory/openapi-hydra.json" -g csharp -o "Ory.Hydra" --model-name-prefix Hydra --additional-properties=nullableReferenceTypes=true, packageName=Ory.Hydra.Client, packageVersion=2.2.0, netCoreProjectFile=true, sourceFolder=.
mv Ory.Hydra/Ory.Hydra.Client/* ../src/Ory.Hydra.Client
rm -r -fo Ory.Hydra
