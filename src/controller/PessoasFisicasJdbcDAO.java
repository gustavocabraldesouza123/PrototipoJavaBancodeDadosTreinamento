package controller;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.swing.JOptionPane;

import model.PessoaFisica;

public class PessoasFisicasJdbcDAO {
	private Connection conn;
	int cont = 1;
	
	public PessoasFisicasJdbcDAO (Connection conn) {
		this.conn = conn;
	}
	
	public void Salvar(PessoaFisica c) throws SQLException{
		String sql = "insert into pessoas_fisicas (nome, endereco, cidade, bairro, telefone, rg, sexo, cep, estado, celular, cpf) values ('"+c.getNome()+"','"+c.getEndereco()+"','"+c.getCidade()+"','"+c.getBairro()+"','"+c.getTelefone()+"','"+c.getRg()+"','"+c.getSexo()+"','"+c.getCep()+"','"+c.getEstado()+"','"+c.getCelular()+"','"+c.getCpf()+"');";
		System.out.println(sql);
		PreparedStatement prepareStatement = this.conn.prepareStatement(sql);
		prepareStatement.executeUpdate();
		prepareStatement.close();
	}
	
	public void Listar(String txtCpf, String txtRg) throws SQLException{
		String sql = "select * from pessoas_fisicas where cpf='"+txtCpf+"' AND rg='"+txtRg+"';";
		System.out.println(sql);
		PreparedStatement prepareStatement = this.conn.prepareStatement(sql);
		ResultSet resultado = prepareStatement.executeQuery();
		String id, nome, endereco, cidade, bairro, telefone, rg, sexo, cep, estado, celular, cpf;
		while(resultado.next()) {
			id = resultado.getString("id");
			nome = resultado.getString("nome");
			endereco = resultado.getString("endereco");
			cidade = resultado.getString("cidade");
			bairro = resultado.getString("bairro");
			telefone = resultado.getString("telefone");
			rg = resultado.getString("rg");
			sexo = resultado.getString("sexo");
			cep = resultado.getString("cep");
			estado = resultado.getString("estado");
			celular = resultado.getString("celular");
			cpf = resultado.getString("cpf");
			if(sexo == "F") {
				sexo = "Feminino";
			}else {
				sexo = "Masculino";
			}
			JOptionPane.showMessageDialog(null, "Resultados\n "
					+ "ID: "+id+"\n"
					+ "Nome: "+nome+"\n"
					+ "RG: "+rg+"\n"
					+ "CPF: "+cpf+"\n"
					+ "Endereço: "+endereco+"\n"
					+ "CEP: "+cep+"\n"
					+ "Bairro: "+bairro+"\n"
					+ "Cidade: "+cidade+"\n"
					+ "Estado: "+estado+"\n"
					+ "Telefone: "+telefone+"\n"
					+ "Celular: "+celular+"\n"
					+ "Sexo: "+sexo+"\n");				
		}
		
		prepareStatement.close();
	}

}
