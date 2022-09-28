@BWOHD
Feature: BWOHD - Negative Scenario

  Scenario Outline: Validate for wrong parameters plugin throws proper error messages
    Given Open Datafusion Project to configure pipeline
    When Select plugin: "SAP BW Open Hub" from the plugins list as: "Source"
    Then Navigate to the properties page of plugin: "SAP BW Open Hub"
    Then Enter the common mandatory parameters
    Then Enter the SAP Logon Credentials
    Then Enter the Process chain "PC_MAT"
    Then Verify that after setting BW parameter "<option>" as "<input>" plugin throws error "<errorMessage>"
    Examples:
      | option            | input            | errorMessage                                                                                                                                                                                                                                                                                                           |
      | jco.client.client | abc              | cdf_sap_01404 - sap connection test failed. please verify the connection parameters. root cause:jco_error_configuration - parameter sap client ('jco.client.client') needs to be a three digit number string instead of 'abc'                                                                                          |
      | jco.client.lang   | abc              | cdf_sap_01404 - sap connection test failed. please verify the connection parameters. root cause:jco_error_configuration - parameter logon language ('jco.client.lang') code 'abc' is invalid                                                                                                                           |
      | jco.client.ashost | invalid          | CDF_SAP_01404 - SAP connection test failed. Please verify the connection parameters. Root Cause:JCO_ERROR_COMMUNICATION - Connect to SAP gateway failed                                                                                                                                                                |
      | jco.client.sysnr  | abc              | cdf_sap_01404 - sap connection test failed. please verify the connection parameters. root cause:jco_error_configuration - parameter abap system number ('jco.client.sysnr') needs to be a two digit number string instead of 'abc'                                                                                     |
      | processChainId    | abc              | cdf_sap_bw_01400 - sap bw process chain 'abc' could not be found in sap. please ensure that it exists and is active in sap.                                                                                                                                                                                            |
      | gcsPath           | gs://invalidfile | error encountered while configuring the stage: 'cdf_sap_01412 - one or more sap jco library files are missing. please make sure the required jco library (sapjco3.jar) and its associated os dependent shared library (libsapjco3.so) were uploaded to your specified google cloud storage bucket 'gs://invalidfile'.' |
