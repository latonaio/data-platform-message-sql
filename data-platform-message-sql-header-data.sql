CREATE TABLE `data_platform_message_header_data`
(
    `Message`                  int(20) NOT NULL,
    `MessageType`              varchar(3) NOT NULL,
    `MessageTool`              varchar(20) NOT NULL,
    `Sender`                   int(12) NOT NULL,
    `Receiver`                 int(12) NOT NULL,
    `ReceiverEmailAddress`     varchar(200) DEFAULT NULL,
    `Language`                 varchar(2) NOT NULL,
    `Title`                    varchar(60) NOT NULL,
    `LongText`                 varchar(2000) NOT NULL,
    `MessageIsSent`            tinyint(1) NOT NULL,
    `CreationDate`             date NOT NULL,
    `CreationTime`             time NOT NULL,
    `LastChangeDate`           date NOT NULL,
    `LastChangeTime`           time NOT NULL,
    `IsMarkedForDeletion`      tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`Message`),
    
    CONSTRAINT `DPFMMessageHeaderDataMessageType_fk` FOREIGN KEY (`MessageType`) REFERENCES `data_platform_message_type_message_type_data` (`MessageType`),
    CONSTRAINT `DPFMMessageHeaderDataMessageTool_fk` FOREIGN KEY (`MessageTool`) REFERENCES `data_platform_message_tool_message_tool_data` (`MessageTool`),
    CONSTRAINT `DPFMMessageHeaderDataSender_fk` FOREIGN KEY (`Sender`) REFERENCES `data_platform_business_partner_general_data` (`Sender`),
    CONSTRAINT `DPFMMessageHeaderDataReceiver_fk` FOREIGN KEY (`Receiver`) REFERENCES `data_platform_business_partner_general_data` (`Receiver`),
    CONSTRAINT `DPFMMessageHeaderDataLanguage_fk` FOREIGN KEY (`Language`) REFERENCES `data_platform_language_language_data` (`Language`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
