// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Metadata.sol";

contract FakeUSDT is ERC20 {
    string private constant TOKEN_LOGO = "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAIAAAACACAMAAAD04JH5AAAA21BMVEUAAAArqX0qqn4qqn4qqn4qqn4qqn4qqn4qqn4qqn4qqn4qqn4qqn4qqn4qqn4qqn4qqn4qqn4qqn4qqn4qqn4qqn4qqn4qqn4qqn4qqn4qqn4qqn4qqn4qqn4qqn4qqn4qqn4qqn4qqn4qqn4qqn4qqn4qqn4qqn4qqn4qqn4qqn4qqn4qqn4qqn4qqn4qqn4qqn4qqn4qqn4qqn4qqn4qqn4qqn4qqn4qqn4qqn4qqn4qqn4qqn4qqn4qqn4qqn4qqn4qqn4qqn4qqn4qqn4qqn4qqn4qqn7QQILiAAAASXRSTlMAAQIDBAUGBwgJCgsMDQ4PEBESExQVFhcYGRobHB0eHyAhIiMkJSYnKCkqKywtLi8wMTIzNDU2Nzg5Ojs8PT4/QEFCQ0RFRkcYinfoAAAB50lEQVR42u3c11LCQBSG4R+VoqiIYsGCvYu9997m/m/IEZ0xwjDktMlu9n2v4Hz7zEAgm01ERERERERERERERETEh9auO1FzNxe7Uu7kxeUo/UbXz8Dl6PxB1c/A5Vj5S8/PwOVY/U/Nz8DlOPpHyc/A5Tj+T8XPwOU4/aLhZ+BynH1T8DNwOS6+yfczMBGXEr6fQfK4mPL9DBLH5azvZ5A0roz4fgYJ49qY72eQLG5M+H4GieLWlO9nkCTuzfh+Bgni4ZzvZxA/Hs77fgax48mS72cQN54u+34GMePFqu9nEC9erfp+BrHi5brvZxAn3mz4fgYx4t2W72cQPT7s+n4GkePTge9nEDU+Hfl+BhHj47HvZxAtPp/6fgaR4sup72cQJb6d+34GEeL7pe9nEDwOXPt+BkHjyK3vZxAyjjz4fgbh4tCT72cQKo69+H4GYeLgm+9nECIOv/t+BsHj+JfvZxA4Tvz6fgZB48y/72cQME59+34GweL8v+9nEChO//l+BkHizMD3MwgQp4a+n4H/ODfy/Qy8x8mx72fgOc5NfD8Dr3F+6vsZ+IwLc9/PwF9cWPh+Br7i0tL3M/ATl1a+n4GXuLb2/Qw8xI2N72fgHDe3vp+Bc9zd+X4GjnF/7/sZOMWDg+9n4BIPj76fgUs8Pvl+BhF5A3uqYCBG1RYfAAAAAElFTkSuQmCC";

    constructor(uint256 initialSupply) ERC20("Tether USD", "USDT") {
        _mint(msg.sender, initialSupply * 10 ** decimals());
    }

    function decimals() public view virtual override returns (uint8) {
        return 6;
    }

    function symbol() public view virtual override returns (string memory) {
        return "USDT";
    }

    function name() public view virtual override returns (string memory) {
        return "Tether USD";
    }

    function logoURI() public pure returns (string memory) {
        return TOKEN_LOGO;
    }
} 