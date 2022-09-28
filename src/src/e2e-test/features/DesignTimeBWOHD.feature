@BWOHD
Feature: BWOHD - Verification of BWOHD Design Time

  @BWOHD1
  Scenario:Validate Schema is generating for BW plugin using process chain
    Given Open Datafusion Project to configure pipeline
    When Select plugin: "SAP BW Open Hub" from the plugins list as: "Source"
    Then Navigate to the properties page of plugin: "SAP BW Open Hub"
    Then Enter the common mandatory parameters
    Then Enter the SAP Logon Credentials
    Then Enter the Process chain "PC_MAT"
    Then Enter Jco server Notification Wait Time "20" min
    Then Validate "SAP BW Open Hub" plugin properties
    Then Verify "No errors found" is displayed

  Scenario:Validate Schema is generating for BW plugin using Open hub destination without request id
    Given Open Datafusion Project to configure pipeline
    When Select plugin: "SAP BW Open Hub" from the plugins list as: "Source"
    Then Navigate to the properties page of plugin: "SAP BW Open Hub"
    Then Enter the common mandatory parameters
    Then Enter the SAP Logon Credentials
    Then Toggle Use Process Chain to no
    Then Enter Open Hub Destination "OHD_PUR2"
    Then Enter Request Id "20220422100211000000000"
    Then Validate "SAP BW Open Hub" plugin properties
    Then Verify "No errors found" is displayed
    Then Close the Plugin Properties page

  Scenario:Validate Schema is generating for BW plugin using load balanced connection for Open hub destination with request id
    Given Open Datafusion Project to configure pipeline
    When Select plugin: "SAP BW Open Hub" from the plugins list as: "Source"
    Then Navigate to the properties page of plugin: "SAP BW Open Hub"
    Then Select Connection Type Load Balanced via SAP Message Server
    Then Enter the common mandatory for load balanced parameters
    Then Enter the SAP Logon Credentials
    Then Toggle Use Process Chain to no
    Then Enter Open Hub Destination "OHD_PUR2"
    Then Enter Request Id "20220426112912000081000"
    Then Validate "SAP BW Open Hub" plugin properties
    Then Verify "No errors found" is displayed
    Then Close the Plugin Properties page

  Scenario:Validate Schema is generating for BW plugin using load balanced connection for Open hub destination without request id
    Given Open Datafusion Project to configure pipeline
    When Select plugin: "SAP BW Open Hub" from the plugins list as: "Source"
    Then Navigate to the properties page of plugin: "SAP BW Open Hub"
    Then Enter the common mandatory parameters
    Then Enter the SAP Logon Credentials
    Then Toggle Use Process Chain to no
    Then Enter Open Hub Destination "OHD_PUR2"
    Then Validate "SAP BW Open Hub" plugin properties
    Then Verify "No errors found" is displayed
    Then Close the Plugin Properties page
