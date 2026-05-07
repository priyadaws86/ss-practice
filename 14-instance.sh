{
    "Groups": [],
    "Instances": [
        {
            "AmiLaunchIndex": 0,
            "ImageId": "ami-0220d79f3f480ecf5",
            "InstanceId": "i-037423dc9f6b5a88c",
            "InstanceType": "t3.micro",
            "LaunchTime": "2026-05-04T06:36:07+00:00",
            "Monitoring": {
                "State": "disabled"
            },
            "Placement": {
                "AvailabilityZone": "us-east-1d",
                "GroupName": "",
                "Tenancy": "default"
            },
            "PrivateDnsName": "ip-172-31-32-219.ec2.internal",
            "PrivateIpAddress": "172.31.32.219",
            "ProductCodes": [],
            "PublicDnsName": "",
            "State": {
                "Code": 0,
                "Name": "pending"
            },
            "StateTransitionReason": "",
            "SubnetId": "subnet-055219787cdcd5c8c",
            "VpcId": "vpc-0f3e186ecffe3ebb9",
            "Architecture": "x86_64",
            "BlockDeviceMappings": [],
            "ClientToken": "7eb0f7c1-3a67-4d20-981e-f101829801ff",
            "EbsOptimized": false,
            "EnaSupport": true,
            "Hypervisor": "xen",
            "NetworkInterfaces": [
                {
                    "Attachment": {
                        "AttachTime": "2026-05-04T06:36:07+00:00",
                        "AttachmentId": "eni-attach-0917bde780dd6536f",
                        "DeleteOnTermination": true,
                        "DeviceIndex": 0,
                        "Status": "attaching",
                        "NetworkCardIndex": 0
                    },
                    "Description": "",
                    "Groups": [
                        {
                            "GroupName": "allow-all",
                            "GroupId": "sg-0b7b140563e1a1c2a"
                        }
                    ],
                    "Ipv6Addresses": [],
                    "MacAddress": "0e:0d:41:68:d4:f5",
                    "NetworkInterfaceId": "eni-0b300377ddbe9aa2a",
                    "OwnerId": "446210604781",
                    "PrivateDnsName": "ip-172-31-32-219.ec2.internal",
                    "PrivateIpAddress": "172.31.32.219",
                    "PrivateIpAddresses": [
                        {
                            "Primary": true,
                            "PrivateDnsName": "ip-172-31-32-219.ec2.internal",
                            "PrivateIpAddress": "172.31.32.219"
                        }
                    ],
                    "SourceDestCheck": true,
                    "Status": "in-use",
                    "SubnetId": "subnet-055219787cdcd5c8c",
                    "VpcId": "vpc-0f3e186ecffe3ebb9",
                    "InterfaceType": "interface"
                }
            ],
            "RootDeviceName": "/dev/sda1",
            "RootDeviceType": "ebs",
            "SecurityGroups": [
                {
                    "GroupName": "allow-all",
                    "GroupId": "sg-0b7b140563e1a1c2a"
                }
            ],
            "SourceDestCheck": true,
            "StateReason": {
                "Code": "pending",
                "Message": "pending"
            },
            "Tags": [
                {
                    "Key": "Name",
                    "Value": "Test"
                }
            ],
            "VirtualizationType": "hvm",
            "CpuOptions": {
                "CoreCount": 1,
                "ThreadsPerCore": 2
            },
            "CapacityReservationSpecification": {
                "CapacityReservationPreference": "open"
            },
            "MetadataOptions": {
                "State": "pending",
                "HttpTokens": "optional",
                "HttpPutResponseHopLimit": 1,
                "HttpEndpoint": "enabled",
                "HttpProtocolIpv6": "disabled",
                "InstanceMetadataTags": "disabled"
            },
            "EnclaveOptions": {
                "Enabled": false
            },
            "BootMode": "uefi-preferred",
            "PrivateDnsNameOptions": {
                "HostnameType": "ip-name",
                "EnableResourceNameDnsARecord": false,
                "EnableResourceNameDnsAAAARecord": false
            },
            "MaintenanceOptions": {
                "AutoRecovery": "default"
            },
            "CurrentInstanceBootMode": "uefi"
        }
    ],
    "OwnerId": "446210604781",
    "ReservationId": "r-00ba6ff53c679e9d5"
}
