#!/bin/bash
CHAINCODE=$1

#export ORDERER_CA=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/example.com/orderers/orderer0.example.com/msp/tlscacerts/tlsca.example.com-cert.pem

#peer chaincode instantiate -o orderer0.example.com:7050 --tls true --cafile $ORDERER_CA -C mychannel -n $CHAINCODE -v 1.0 -c '{"Args":[]}' >&log.txt
peer chaincode instantiate -o orderer0.example.com:7050 --tls --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/example.com/orderers/orderer0.example.com/msp/tlscacerts/tlsca.example.com-cert.pem -v 1.0 -c '{"Args":[]}' -C commonchannel -n $CHAINCODE

#cat log.txt
