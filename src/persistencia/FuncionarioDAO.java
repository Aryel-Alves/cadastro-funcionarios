package persistencia;

import negocio.Funcionario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

/**
 *
 * @author Aryel
 */
public class FuncionarioDAO implements IFuncionarioDAO {
    private Connection connection;
    
    public FuncionarioDAO(){
        this.connection = new ConFactory().getConnection();
    }
    
    @Override
    public void adiciona(Funcionario funcionario)  {
        String sql = "insert into funcionario " + 
                "(nome, profissao, endereco, telefone, estado_civil, data_ingresso, salario_base)" +
                " values (?,?,?,?,?,?,?)";
        
        try {
            PreparedStatement stmt = this.connection.prepareStatement(sql);
            
            stmt.setString(1, funcionario.getNome());
            stmt.setString(2, funcionario.getProfissao());
            stmt.setString(3, funcionario.getEndereco());
            stmt.setString(4, funcionario.getTelefone());
            stmt.setString(5, funcionario.getEstado_civil());
            stmt.setDate(6, (java.sql.Date) new java.sql.Date(funcionario.getData_de_ingresso().getTimeInMillis()));
            stmt.setFloat(7, funcionario.getSalario_base());
            
            stmt.execute();
            System.out.println("FUNCIONARIO "+ funcionario.getNome() + " CADASTRADO!");
            stmt.close();
        } catch (SQLException e){
            throw new RuntimeException(e);
        }
    }

    @Override
    public void altera(Funcionario um_paciente) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void remove(int id) {
        //arquivo.delete();
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ArrayList<Funcionario> listarTodos() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Funcionario getByID(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
