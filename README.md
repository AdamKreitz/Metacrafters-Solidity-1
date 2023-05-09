# Metacrafters-Solidity-1

Simple overview of use/purpose.

## Description

An in-depth paragraph about your project and overview of use.

### Executing program

* The first step is to instantiate a new token, which we do below with a token called "Bernoulli", with ticker "BERN" and total supply of 1m)
```
createToken Bernoulli = new createToken("Bernoulli", "BERN", 1000000);
```

* As the token deployer/owner, I am able to mint new BERN's by using the mint contract, here I want to assign 100 BERN to address 0x123
```
Bernoulli.mint(0x123, 100);
```

* Now I want to burn 100 of my own tokens to keep the supply the same, and it will automatically burn the tokens from address msg.sender (Note: 0x123 is also able to call the burn function as well)
```
Bernoulli.burn(100);
```

## Authors

Adam Kreitzman
https://twitter.com/KreitzmanAdam


## License

This project is licensed under the [NAME HERE] License - see the LICENSE.md file for details
