// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract ArraySampleStruct {
    
    struct Pessoa {
        uint idade;
        string nome;
    }
      
    Pessoa[] listaDePessoas;
        
    function inserirPessoa(uint _idade, string memory _nome) public {                      
        listaDePessoas.push(Pessoa(_idade, _nome));
    }   
   
    function obterPessoas() view public returns (Pessoa[] memory) {
        return listaDePessoas;
    }     

    function obterPessoa(uint _indice) view public returns (uint idade, string memory nome) {
        Pessoa memory p = listaDePessoas[_indice];
        
        return (p.idade, p.nome);
    }

    function atualizarPessoa(uint _indice, uint _idade, string memory _nome) external {
        Pessoa storage p = listaDePessoas[_indice];
        p.idade = _idade;
        p.nome = _nome;
        listaDePessoas[_indice] = p;
    }
    
    function deletarPessoa(uint _indice) external {
        delete listaDePessoas[_indice];
    }
    
    function totalDePessoas() view public returns (uint) {
        return listaDePessoas.length;
    }
}