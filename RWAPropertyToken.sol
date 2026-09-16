// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title RWA Real Estate Fractional Tokenization Engine
 * @author Walkerbill
 * @notice Simulates fractional asset compliance for Ghanaian property models
 */
contract RWAPropertyToken {
    
    struct PropertyAsset {
        string propertyId;
        string location;
        uint256 marketValueGHS;
        uint8 zoningRiskScore;
        uint256 totalTokensIssued;
        bool isApproved;
    }

    address public ecosystemAdmin;
    mapping(string => PropertyAsset) public tokenizedProperties;

    event AssetMinted(string indexed propertyId, uint256 totalTokens, bool complianceStatus);
    event AssetRejected(string indexed propertyId, uint8 riskScore, string reason);

    modifier onlyAdmin() {
        require(msg.sender == ecosystemAdmin, "Error: Only the Ecosystem Admin can mint RWA tokens");
        _;
    }

    constructor() {
        ecosystemAdmin = msg.sender;
    }

    /**
     * @notice Registers and fractionally tokenizes approved real estate assets
     * @dev Mirrors the Python data pipeline's compliance validation check
     */
    function mintPropertyToken(
        string memory _id,
        string memory _location,
        uint256 _valueGHS,
        uint8 _riskScore,
        uint256 _tokensToIssue
    ) public onlyAdmin {
        
        // Automated Risk Compliance Gate: Reject assets with a high spatial risk score (>= 4)
        if (_riskScore >= 4) {
            emit AssetRejected(_id, _riskScore, "Asset failed geospatial/environmental underwriting compliance.");
            return;
        }

        // Store the asset metrics permanently on-chain
        tokenizedProperties[_id] = PropertyAsset({
            propertyId: _id,
            location: _location,
            marketValueGHS: _valueGHS,
            zoningRiskScore: _riskScore,
            totalTokensIssued: _tokensToIssue,
            isApproved: true
        });

        emit AssetMinted(_id, _tokensToIssue, true);
    }
}
