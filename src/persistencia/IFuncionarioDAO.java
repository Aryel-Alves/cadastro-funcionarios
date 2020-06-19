package persistencia;
import negocio.Funcionario;
import java.util.ArrayList; 
/**
 *
 * @author Aryel
 */
public interface IFuncionarioDAO {
    public void adiciona(Funcionario um_funcionario);
    public void altera(Funcionario um_funcionario);
    public void remove(int id);
    public ArrayList<Funcionario> listarTodos();
    public Funcionario getByID(int id);
}
