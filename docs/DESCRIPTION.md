> STRING is a database of known and predicted protein-protein interactions. The interactions include direct (physical) and indirect (functional) associations; they stem from computational prediction, from knowledge transfer between organisms, and from interactions aggregated from other (primary) databases.

Biobricks.ai transforms STRING into parquet files. 

# Data overview 
- This directory contains data obtained from the human data from STRING. STRING is a resource that contains information on protein interactions. 
- The data is stored in parquet format. Descriptions for each column of each file in SIDER can be found below.
- The data was downloaded from: https://string-db.org/cgi/download?sessionId=btrpKAt7BHow

# Data Table List 
`9606.clusters.info.v11.5.parquet`

`9606.clusters.proteins.v11.5.parquet`

`9606.clusters.tree.v11.5.parquet`

`9606.protein.aliases.v11.5.parquet`

`9606.protein.enrichment.terms.v11.5.parquet`

`9606.protein.homology.v11.5.parquet`

`9606.protein.info.v11.5.parquet`

`9606.protein.links.detailed.v11.5.parquet`

`9606.protein.links.full.v11.5.parquet`

`9606.protein.links.v11.5.parquet`

`9606.protein.physical.links.detailed.v11.5.parquet`

`9606.protein.physical.links.full.v11.5.parquet`

`9606.protein.physical.links.v11.5.parquet`

`9606.protein.sequences.v11.5.fa.gz`

`COG.links.detailed.v11.5.parquet`

`COG.links.v11.5.parquet`

`COG.mappings.v11.5.parquet`

`species.mappings.v11.5.parquet`

`species.tree.v11.parquet`

`species.v11.parquet`

# Description of Files 
`9606.clusters.info.v11.5.parquet`
- ncbi_taxid. The NCBI Taxonomy ID.
- cluster_id. The ID for the cluster.
- cluster_size. Size of the cluster.
- best_described_by. Description of cluster.

`9606.clusters.proteins.v11.5.parquet`
- ncbi_taxid. The NCBI Taxonomy ID.
- cluster_id. The ID for the cluster.
- protein_id. The ID number for the protein.

`9606.clusters.tree.v11.5.parquet`
- ncbi_taxid. The NCBI Taxonomy ID.
- child_cluster_id. The ID number of the child of the cluster.
- parent_cluster_id. The ID number of the parent of the cluster.

`9606.protein.aliases.v11.5.parquet`
- string_protein_id. The STRING protein ID.
- alias. The alias for the protein.
- source. Source for protein alias.

`9606.protein.enrichment.terms.v11.5.parquet`
- string_protein_id. The STRING protein ID.
- category. Category for the enrichment term.
- term. ID for the enrichment term.
- description. Description of the enrichment term. 

`9606.protein.homology.v11.5.parquet`
- string_protein_1. The STRING ID for the first protein.   
- string_protein_id_2. The STRING ID for the second protein.   
- species_2. The ID for the second species.
- bitscore. The bitscore for inferring homology between the two proteins.
- start_1. Start of the segment with homology on protein 1.
- end_1. End of the segment with homology on protein 1.
- start_2. Start of the segment with homology on protein 2.
- end_2. End of the segment with homology on protein 2.
- size_2. Size of homologous segment.

`9606.protein.info.v11.5.parquet`
- string_protein_id. The STRING protein ID.. 
- preferred_name. External name for the protein. 
- protein_size. Size of the protein.
- annotation. Annotated information about the protein.

`9606.protein.links.detailed.v11.5.parquet`
- protein1. ID for the first protein.
- protein 2. ID for the second protein.
- neighborhood. Network neighborhood.
- fusion. Gene fusion.
- coccurence. Presence or absence of linked proteins.
- coexpression. Evidence of co-expression between the two proteins.
- experimental. Experimental evidence of interaction of proteins.
- database. Data for significant protein interactions from curated databases.
- textmining. Textmining evidence.
- combined_score. Combined score for evidence of the protein interaction.

`9606.protein.links.full.v11.5.parquet`
- protein1. ID for the first protein.
- protein 2. ID for the second protein.
- neighborhood. Network neighborhood.
- neighborhood_transferred. Network neighborhood information transferred from another organism.
- fusion. Gene fusion.
- coccurence. Presence or absence of linked proteins.
- coexpression. Evidence of co-expression between the two proteins.
- coexpression_transferred. Coexpression information transferred from another organism.
- experiments. Experimental evidence of interaction of proteins.
- experiments_transferred. Experimental evidence of interaction of proteins transferred from another organism.
- database. Data for significant protein interactions from curated databases.
- database_transferred. Data for significant protein interactions from curated databases transferred from another organism.
- textmining. Textmining evidence.
- textmining_transferred. Textmining evidence transferred from another organism.
- combined_score. Combined score for evidence of the protein interaction.

`9606.protein.links.v11.5.parquet`
- protein1. ID for the first protein.
- protein 2. ID for the second protein.
- combined_score. Combined score for evidence of the protein interaction.

`9606.protein.physical.links.detailed.v11.5.parquet`
- protein1. ID for the first protein.
- protein 2. ID for the second protein.
- experimental. Experimental evidence of interaction of proteins.
- database. Data for significant protein interactions from curated databases.
- textmining. Textmining evidence.
- combined_score. Combined score for evidence of the protein interaction.

`9606.protein.physical.links.full.v11.5.parquet`
- protein1. ID for the first protein.
- protein 2. ID for the second protein.
- homology. Homology between protein 1 and protein 2.
- experiments. Experimental evidence of interaction of proteins.
- experiments_transferred. Experimental evidence of interaction of proteins transferred from another organism.
- database. Data for significant protein interactions from curated databases.
- database_transferred. Data for significant protein interactions from curated databases transferred from another organism.
- textmining. Textmining evidence.
- textmining_transferred. Textmining evidence transferred from another organism.
- combined_score. Combined score for evidence of the protein interaction.

`9606.protein.physical.links.v11.5.parquet`
- protein1. ID for the first protein.
- protein 2. ID for the second protein.
- combined_score. Combined score for evidence of the protein interaction.

`9606.protein.sequences.v11.5.fa.gz`
Fasta file with protein sequences for each protein.

`COG.links.detailed.v11.5.parquet`
- group1. COG ID for group 1. 
- group2. COG ID for group 2. 
- neighborhood. Network neighborhood.
- fusion. Gene fusion.
- coccurence. Presence or absence of linked proteins.
- coexpression. Evidence of co-expression between the two proteins.
- experimental. Experimental evidence of interaction of proteins.
- database. Data for significant protein interactions from curated databases.
- textmining. Textmining evidence.
- combined_score. Combined score for evidence of the protein interaction.

`COG.links.v11.5.parquet`
- group1. COG ID for group 1. 
- group2. COG ID for group 2. 
- association_score. Association score between the two groups.

`COG.mappings.v11.5.parquet`
- protein. Name of the protein.
- start_position. Start position of protein.
- end_position. End position of protein.
- orthologous_group. The orthologous group.
- protein_annotation. Annotation for the protein if available.

`species.mappings.v11.5.parquet`
- species_taxonomy_id. Taxonomy ID for species.
- orthgroup_id. ID for orthologous group.
- count. 

`species.tree.v11.parquet`
- taxon_id. Taxonomy ID for species.
- parent_taxon_id. Taxonomy ID for parent.
- taxon_name. Name of the taxonomy.
- is_STRING_species.

`species.v11.parquet`
- taxon_id. Taxonomy ID for species.
- STRING_type. 
- STRING_name_compact. Compact name for species.
- official_name_NCBI. Official NCBI name for species.
- domain. Species domain.