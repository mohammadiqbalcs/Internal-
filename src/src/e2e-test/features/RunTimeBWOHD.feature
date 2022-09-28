@BWOHD
Feature: BWOHD - Verification of BWOHD to BQ successful data transfer

  @BQ_SINK_TEST
  Scenario: Validate successful records transfer from Bw to BQ using Open hub destination without request id
    Given Open Datafusion Project to configure pipeline
    When Select plugin: "SAP BW Open Hub" from the plugins list as: "Source"
    Then Navigate to the properties page of plugin: "SAP BW Open Hub"
    Then Enter the common mandatory parameters
    Then Enter the SAP Logon Credentials
    Then Toggle Use Process Chain to no
    Then Enter Open Hub Destination "OHD_PUR2"
    Then Validate "SAP BW Open Hub" plugin properties
    Then Close the Plugin Properties page
    Then Expand Plugin group in the LHS plugins list: "Sink"
    Then Select plugin: "BigQuery" from the plugins list as: "Sink"
    Then Navigate to the properties page of plugin: "BigQuery"
    Then Replace input plugin property: "project" with value: "gcpProjectId"
    Then Enter input plugin property: "datasetProject" with value: "projectId"
    Then Enter input plugin property: "referenceName" with value: "BQReferenceName"
    Then Enter input plugin property: "dataset" with value: "dataset"
    Then Enter input plugin property: "table" with value: "bqTargetTable"
    Then Click plugin property: "switch-truncateTable"
    Then Click plugin property: "switch-allowSchemaRelaxation"
    Then Validate "BigQuery" plugin properties
    Then Close the Plugin Properties page
    Then Connect plugins: "SAP BW Open Hub" and "BigQuery" to establish connection
    Then Save the pipeline
    Then Deploy the pipeline
    Then Run the Pipeline in Runtime
    Then Wait till pipeline is in running state
    Then Open and capture logs
    Then Verify the pipeline status is "Succeeded"

  @BQ_SINK_TEST
  Scenario:Validate successful records transfer from Bw to BQ using Open hub destination with request id
    Given Open Datafusion Project to configure pipeline
    When Select plugin: "SAP BW Open Hub" from the plugins list as: "Source"
    Then Navigate to the properties page of plugin: "SAP BW Open Hub"
    Then Enter the common mandatory parameters
    Then Enter the SAP Logon Credentials
    Then Toggle Use Process Chain to no
    Then Enter Open Hub Destination "OHD_MAT"
    Then Enter Request Id "20220923060848000126000"
    Then Validate "SAP BW Open Hub" plugin properties
    Then Verify "No errors found" is displayed
    Then Close the Plugin Properties page
    Then Expand Plugin group in the LHS plugins list: "Sink"
    Then Select plugin: "BigQuery" from the plugins list as: "Sink"
    Then Navigate to the properties page of plugin: "BigQuery"
    Then Replace input plugin property: "project" with value: "gcpProjectId"
    Then Enter input plugin property: "datasetProject" with value: "projectId"
    Then Enter input plugin property: "referenceName" with value: "BQReferenceName"
    Then Enter input plugin property: "dataset" with value: "dataset"
    Then Enter input plugin property: "table" with value: "bqTargetTable"
    Then Click plugin property: "switch-truncateTable"
    Then Click plugin property: "switch-allowSchemaRelaxation"
    Then Validate "BigQuery" plugin properties
    Then Close the Plugin Properties page
    Then Connect plugins: "SAP BW Open Hub" and "BigQuery" to establish connection
    Then Save the pipeline
    Then Deploy the pipeline
    Then Run the Pipeline in Runtime
    Then Wait till pipeline is in running state
    Then Open and capture logs
    Then Verify the pipeline status is "Succeeded"

  @BQ_SINK_TEST
  Scenario:Validate successful records transfer using load balanced connection from Bw to BQ using Open hub destination with request id
    Given Open Datafusion Project to configure pipeline
    When Select plugin: "SAP BW Open Hub" from the plugins list as: "Source"
    Then Navigate to the properties page of plugin: "SAP BW Open Hub"
    Then Select Connection Type Load Balanced via SAP Message Server
    Then Enter the common mandatory for load balanced parameters
    Then Enter the SAP Logon Credentials
    Then Toggle Use Process Chain to no
    Then Enter Open Hub Destination "OHD_MAT"
    Then Enter Request Id "20220923060848000126000"
    Then Validate "SAP BW Open Hub" plugin properties
    Then Verify "No errors found" is displayed
    Then Close the Plugin Properties page
    Then Expand Plugin group in the LHS plugins list: "Sink"
    Then Select plugin: "BigQuery" from the plugins list as: "Sink"
    Then Navigate to the properties page of plugin: "BigQuery"
    Then Replace input plugin property: "project" with value: "gcpProjectId"
    Then Enter input plugin property: "datasetProject" with value: "projectId"
    Then Enter input plugin property: "referenceName" with value: "BQReferenceName"
    Then Enter input plugin property: "dataset" with value: "dataset"
    Then Enter input plugin property: "table" with value: "bqTargetTable"
    Then Click plugin property: "switch-truncateTable"
    Then Click plugin property: "switch-allowSchemaRelaxation"
    Then Validate "BigQuery" plugin properties
    Then Close the Plugin Properties page
    Then Connect plugins: "SAP BW Open Hub" and "BigQuery" to establish connection
    Then Save the pipeline
    Then Deploy the pipeline
    Then Run the Pipeline in Runtime
    Then Wait till pipeline is in running state
    Then Open and capture logs
    Then Verify the pipeline status is "Succeeded"

  @BQ_SINK_TEST
  Scenario:Validate successful records transfer using load balanced connection from Bw to BQ using Open hub destination without request id
    Given Open Datafusion Project to configure pipeline
    When Select plugin: "SAP BW Open Hub" from the plugins list as: "Source"
    Then Navigate to the properties page of plugin: "SAP BW Open Hub"
    Then Select Connection Type Load Balanced via SAP Message Server
    Then Enter the common mandatory for load balanced parameters
    Then Enter the SAP Logon Credentials
    Then Toggle Use Process Chain to no
    Then Enter Open Hub Destination "OHD_PUR2"
    Then Validate "SAP BW Open Hub" plugin properties
    Then Verify "No errors found" is displayed
    Then Close the Plugin Properties page
    Then Expand Plugin group in the LHS plugins list: "Sink"
    Then Select plugin: "BigQuery" from the plugins list as: "Sink"
    Then Navigate to the properties page of plugin: "BigQuery"
    Then Replace input plugin property: "project" with value: "gcpProjectId"
    Then Enter input plugin property: "datasetProject" with value: "projectId"
    Then Enter input plugin property: "referenceName" with value: "BQReferenceName"
    Then Enter input plugin property: "dataset" with value: "dataset"
    Then Enter input plugin property: "table" with value: "bqTargetTable"
    Then Click plugin property: "switch-truncateTable"
    Then Click plugin property: "switch-allowSchemaRelaxation"
    Then Validate "BigQuery" plugin properties
    Then Close the Plugin Properties page
    Then Connect plugins: "SAP BW Open Hub" and "BigQuery" to establish connection
    Then Save the pipeline
    Then Deploy the pipeline
    Then Run the Pipeline in Runtime
    Then Wait till pipeline is in running state
    Then Open and capture logs
    Then Verify the pipeline status is "Succeeded"

  @BQ_SINK_TEST
  Scenario:Validate successful records transfer for all supported data types
    Given Open Datafusion Project to configure pipeline
    When Select plugin: "SAP BW Open Hub" from the plugins list as: "Source"
    Then Navigate to the properties page of plugin: "SAP BW Open Hub"
    Then Enter the common mandatory parameters
    Then Enter the SAP Logon Credentials
    Then Toggle Use Process Chain to no
    Then Enter Open Hub Destination "OHD_DTTY"
    Then Enter Request Id "20220923062828000056000"
    Then Validate "SAP BW Open Hub" plugin properties
    Then Verify "No errors found" is displayed
    Then Close the Plugin Properties page
    Then Expand Plugin group in the LHS plugins list: "Sink"
    Then Select plugin: "BigQuery" from the plugins list as: "Sink"
    Then Navigate to the properties page of plugin: "BigQuery"
    Then Replace input plugin property: "project" with value: "gcpProjectId"
    Then Enter input plugin property: "datasetProject" with value: "projectId"
    Then Enter input plugin property: "referenceName" with value: "BQReferenceName"
    Then Enter input plugin property: "dataset" with value: "dataset"
    Then Enter input plugin property: "table" with value: "bqTargetTable"
    Then Click plugin property: "switch-truncateTable"
    Then Click plugin property: "switch-allowSchemaRelaxation"
    Then Validate "BigQuery" plugin properties
    Then Close the Plugin Properties page
    Then Connect plugins: "SAP BW Open Hub" and "BigQuery" to establish connection
    Then Save the pipeline
    Then Deploy the pipeline
    Then Run the Pipeline in Runtime
    Then Wait till pipeline is in running state
    Then Open and capture logs
    Then Verify the pipeline status is "Succeeded"
    Then Validate and Match the expected Sap record in BigQuery "bqTargetTable" Table
