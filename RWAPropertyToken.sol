// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title RWA Real Estate Asset Registry
 * @author Walkerbill
 *
 * @notice
 * Proof-of-concept registry for screening physical real-estate
 * assets for a potential tokenization workflow.
 *
 * @dev
 * This contract does NOT implement an ERC-20, ERC-721, or
 * regulated security token.
 *
 * It demonstrates how a simplified underwriting decision can
 * be validated and recorded on-chain.
 */
contract RWAPropertyToken {

    // ========================================================
    // MODEL PARAMETERS
    // ========================================================

    // Properties with risk score >= 4 fail screening.
    uint8 public constant HIGH_RISK_THRESHOLD = 4;

    // Illustrative token denomination.
    uint256 public constant TOKEN_PRICE_GHS = 100;


    // ========================================================
    // PROPERTY ASSET STRUCTURE
    // ========================================================

    struct PropertyAsset {

        string propertyId;

        string location;

        uint256 marketValueGHS;

        uint8 zoningRiskScore;

        uint256 totalTokensEligible;

        bool isEligible;
    }


    // ========================================================
    // ADMINISTRATOR
    // ========================================================

    address public immutable ecosystemAdmin;


    // ========================================================
    // ASSET REGISTRY
    // ========================================================

    mapping(string => PropertyAsset)
        public tokenizedProperties;


    // ========================================================
    // EVENTS
    // ========================================================

    event AssetRegistered(
        string indexed propertyId,
        uint256 marketValueGHS,
        uint256 totalTokensEligible,
        bool eligibilityStatus
    );

    event AssetRejected(
        string indexed propertyId,
        uint8 riskScore,
        string reason
    );


    // ========================================================
    // ACCESS CONTROL
    // ========================================================

    modifier onlyAdmin() {

        require(
            msg.sender == ecosystemAdmin,
            "Only the ecosystem admin can register assets"
        );

        _;
    }


    // ========================================================
    // CONSTRUCTOR
    // ========================================================

    constructor() {

        ecosystemAdmin = msg.sender;
    }


    // ========================================================
    // PROPERTY REGISTRATION & SCREENING
    // ========================================================

    /**
     * @notice
     * Screens and registers an eligible property asset.
     *
     * @dev
     * The contract independently checks:
     *
     * 1. Whether the property already exists
     * 2. Whether the risk score passes the screening threshold
     * 3. Whether the proposed token quantity matches the
     *    valuation model
     *
     * This is a registry/screening prototype and does not
     * constitute legal, regulatory or investment approval.
     */
    function registerPropertyAsset(
        string memory _id,
        string memory _location,
        uint256 _valueGHS,
        uint8 _riskScore,
        uint256 _tokensToIssue
    )
        external
        onlyAdmin
    {

        // ----------------------------------------------------
        // 1. Prevent duplicate property registration
        // ----------------------------------------------------

        require(
            bytes(tokenizedProperties[_id].propertyId).length == 0,
            "Property already registered"
        );


        // ----------------------------------------------------
        // 2. Risk screening gate
        // ----------------------------------------------------

        if (_riskScore >= HIGH_RISK_THRESHOLD) {

            emit AssetRejected(
                _id,
                _riskScore,
                "Asset failed prototype geospatial risk screening"
            );

            return;
        }


        // ----------------------------------------------------
        // 3. Calculate expected token quantity
        // ----------------------------------------------------
        //
        // For eligible assets, the prototype currently uses
        // the market value directly.
        //
        // 1 token = GHS 100
        // ----------------------------------------------------

        uint256 expectedTokens =
            _valueGHS / TOKEN_PRICE_GHS;


        // ----------------------------------------------------
        // 4. Validate token quantity
        // ----------------------------------------------------

        require(
            _tokensToIssue == expectedTokens,
            "Token quantity does not match valuation model"
        );


        // ----------------------------------------------------
        // 5. Register asset
        // ----------------------------------------------------

        tokenizedProperties[_id] = PropertyAsset({

            propertyId: _id,

            location: _location,

            marketValueGHS: _valueGHS,

            zoningRiskScore: _riskScore,

            totalTokensEligible: _tokensToIssue,

            isEligible: true
        });


        // ----------------------------------------------------
        // 6. Emit registration event
        // ----------------------------------------------------

        emit AssetRegistered(
            _id,
            _valueGHS,
            _tokensToIssue,
            true
        );
    }
}
