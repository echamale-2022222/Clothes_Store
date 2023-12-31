package modeloDAO;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import modelo.Proveedor;

public class ProveedorDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int resp;
    
    public List Listar(){
        ArrayList<Proveedor> listaProveedor = new ArrayList<>();
        String sql = "select * from proveedor";
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                Proveedor nuevoProveedor = new Proveedor();
                nuevoProveedor.setIdProveedor(rs.getInt("idProveedor"));
                nuevoProveedor.setNombreProveedor(rs.getString("nombreProveedor"));
                nuevoProveedor.setDireccion(rs.getString("direccion"));
                nuevoProveedor.setTelefono(rs.getString("telefono"));
                listaProveedor.add(nuevoProveedor);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
       return listaProveedor;
    }
    
}
