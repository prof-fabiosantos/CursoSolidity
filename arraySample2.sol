ragma solidity ^0.8.10;

contract Exemplo_Array {
    address[] hashs;
       
    function inserirHash(address _hash) external {
        hashs.push(_hash);
    }
    
    function obterHash(uint _indice) external view returns(address){
        return hashs[_indice];
    }
    
    function atualizarHash(uint _indice, address _newHash) external {
        hashs[_indice] = _newHash;
    }
    
    function deletarHash(uint _indice) external {
        delete hashs[_indice];
    }
}
