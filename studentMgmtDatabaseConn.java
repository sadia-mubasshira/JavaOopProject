//begin imports
import javax.swing.JOptionPane;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author SADIA MOBASSHIRA
 * @Department of CSE
 * @ID: 21-45727-3
 * @American International University - Bangladesh
 *
 **/

/*
 
  ________     __       ________   __          __       ___      ___     ______    _______       __        ________  ________  __    __   __      _______        __      
 /"       )   /""\     |"      "\ |" \        /""\     |"  \    /"  |   /    " \  |   _  "\     /""\      /"       )/"       )/" |  | "\ |" \    /"      \      /""\     
(:   \___/   /    \    (.  ___  :)||  |      /    \     \   \  //   |  // ____  \ (. |_)  :)   /    \    (:   \___/(:   \___/(:  (__)  :)||  |  |:        |    /    \    
 \___  \    /' /\  \   |: \   ) |||:  |     /' /\  \    /\\  \/.    | /  /    ) :)|:     \/   /' /\  \    \___  \   \___  \   \/      \/ |:  |  |_____/   )   /' /\  \   
  __/  \\  //  __'  \  (| (___\ |||.  |    //  __'  \  |: \.        |(: (____/ // (|  _  \\  //  __'  \    __/  \\   __/  \\  //  __  \\ |.  |   //      /   //  __'  \  
 /" \   :)/   /  \\  \ |:       :)/\  |\  /   /  \\  \ |.  \    /:  | \        /  |: |_)  :)/   /  \\  \  /" \   :) /" \   :)(:  (  )  :)/\  |\ |:  __   \  /   /  \\  \ 
(_______/(___/    \___)(________/(__\_|_)(___/    \___)|___|\__/|___|  \"_____/   (_______/(___/    \___)(_______/ (_______/  \__|  |__/(__\_|_)|__|  \___)(___/    \___)
                                                                                                                                                                         
*/

public class studentMgmtDatabaseConn {
    final static String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
    final static String DB_URL = "jdbc:mysql://localhost:3306/student_mgmt_sadia";
    final static String USER = "root";
    final static String PASSWORD = "";
    
    public static Connection connection(){
        try{
            Class.forName(JDBC_DRIVER);
            Connection conn = DriverManager.getConnection(DB_URL,USER,PASSWORD);
            return conn;
        }
        catch(ClassNotFoundException | SQLException e){
            JOptionPane.showMessageDialog(null, e);
            return null;
        }
    }
    
}
