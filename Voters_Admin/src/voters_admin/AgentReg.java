package voters_admin;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Vector;
import javax.swing.DefaultComboBoxModel;
import javax.swing.JOptionPane;
import javax.swing.UnsupportedLookAndFeelException;

/**
 *
 * @author damhiesax
 */
public class AgentReg extends javax.swing.JFrame {

    DbConnect dbcon = new DbConnect();
    DbConnect dbcon2 = new DbConnect();
    ResultSetMetaData md;
    String firstname, lastname, PassWord, address, mobileNo, administrator, username, Userid;
    Connection con;
    ResultSet rs;
    PreparedStatement ps;
    Statement st;
    Vector<String> data = new Vector<String>();
    Variables var;
    String agentid = "";
    public static String[] rowData;

    /**
     * Creates new form UserReg
     */
    public AgentReg() {
        initComponents();
        setTitle("Staff Registration Page");
        var = new Variables();
        getSetter();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        jTextField1 = new javax.swing.JTextField();
        jTextField2 = new javax.swing.JTextField();
        jTextField3 = new javax.swing.JTextField();
        jTextField4 = new javax.swing.JTextField();
        jTextField5 = new javax.swing.JTextField();
        jPasswordField1 = new javax.swing.JPasswordField();
        jComboBox1 = new javax.swing.JComboBox();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        jButton3 = new javax.swing.JButton();
        jLabel8 = new javax.swing.JLabel();
        jLabel10 = new javax.swing.JLabel();
        jLabel9 = new javax.swing.JLabel();
        jComboBox2 = new javax.swing.JComboBox();
        jLabel11 = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("User Registraion");
        setLocationByPlatform(true);
        setResizable(false);

        jPanel1.setLayout(null);

        jLabel1.setText("First Name");
        jPanel1.add(jLabel1);
        jLabel1.setBounds(30, 40, 80, 14);

        jLabel2.setText("Last Name");
        jPanel1.add(jLabel2);
        jLabel2.setBounds(30, 70, 70, 14);

        jLabel3.setText("Address");
        jPanel1.add(jLabel3);
        jLabel3.setBounds(30, 100, 60, 14);

        jLabel4.setText("Username");
        jPanel1.add(jLabel4);
        jLabel4.setBounds(30, 220, 70, 20);

        jLabel5.setText("Password");
        jPanel1.add(jLabel5);
        jLabel5.setBounds(30, 260, 90, 14);

        jLabel6.setText("Location:");
        jPanel1.add(jLabel6);
        jLabel6.setBounds(30, 160, 70, 20);
        jPanel1.add(jTextField1);
        jTextField1.setBounds(110, 40, 230, 20);
        jPanel1.add(jTextField2);
        jTextField2.setBounds(110, 70, 230, 20);
        jPanel1.add(jTextField3);
        jTextField3.setBounds(110, 100, 230, 20);
        jPanel1.add(jTextField4);
        jTextField4.setBounds(110, 130, 230, 20);

        jTextField5.setEditable(false);
        jTextField5.setBackground(new java.awt.Color(227, 227, 227));
        jPanel1.add(jTextField5);
        jTextField5.setBounds(110, 220, 230, 20);
        jPanel1.add(jPasswordField1);
        jPasswordField1.setBounds(110, 250, 230, 20);

        jComboBox1.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "Select location", "Agege" }));
        jComboBox1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jComboBox1ActionPerformed(evt);
            }
        });
        jPanel1.add(jComboBox1);
        jComboBox1.setBounds(110, 160, 230, 20);

        jButton1.setFont(new java.awt.Font("DejaVu Sans", 1, 13)); // NOI18N
        jButton1.setText("Save");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });
        jPanel1.add(jButton1);
        jButton1.setBounds(20, 330, 100, 27);

        jButton2.setFont(new java.awt.Font("DejaVu Sans", 1, 13)); // NOI18N
        jButton2.setText("Clear");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });
        jPanel1.add(jButton2);
        jButton2.setBounds(130, 330, 110, 27);

        jButton3.setFont(new java.awt.Font("DejaVu Sans", 1, 13)); // NOI18N
        jButton3.setText("Close");
        jButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton3ActionPerformed(evt);
            }
        });
        jPanel1.add(jButton3);
        jButton3.setBounds(250, 330, 100, 27);

        jLabel8.setText("Phone No");
        jPanel1.add(jLabel8);
        jLabel8.setBounds(30, 130, 70, 14);

        jLabel10.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jLabel10.setText("Add New Agent");
        jPanel1.add(jLabel10);
        jLabel10.setBounds(110, 4, 130, 20);

        jLabel9.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));
        jPanel1.add(jLabel9);
        jLabel9.setBounds(10, 0, 350, 30);

        jComboBox2.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "Select System", "0903030" }));
        jComboBox2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jComboBox2ActionPerformed(evt);
            }
        });
        jPanel1.add(jComboBox2);
        jComboBox2.setBounds(110, 190, 230, 20);

        jLabel11.setText("System id:");
        jPanel1.add(jLabel11);
        jLabel11.setBounds(30, 190, 70, 20);

        jLabel7.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));
        jPanel1.add(jLabel7);
        jLabel7.setBounds(10, 30, 350, 350);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, 373, javax.swing.GroupLayout.PREFERRED_SIZE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, 398, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 0, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        addnew();
      
    }//GEN-LAST:event_jButton1ActionPerformed

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        jTextField1.setText("");
        jTextField2.setText("");
        jTextField3.setText("");
        jTextField4.setText("");
        jTextField5.setText("");
        jPasswordField1.setText("");
        jComboBox1.setSelectedIndex(0);
        jComboBox2.setSelectedIndex(0);

// TODO add your handling code here:
    }//GEN-LAST:event_jButton2ActionPerformed

    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton3ActionPerformed
        this.dispose();
        // TODO add your handling code here:
    }//GEN-LAST:event_jButton3ActionPerformed

    private void jComboBox1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jComboBox1ActionPerformed
        if (jComboBox1.isFocusOwner()){
        jTextField5.setText("");
        if ((jComboBox1.getSelectedIndex() != 0) && (jComboBox2.getSelectedIndex() != 0)) {
            while (checkForPresence() == true) {
                //    JOptionPane.showMessageDialog(rootPane, "user already exit");
            }
            checkForPresence();
        }
        jTextField5.setText(agentid);
        }
        // TODO add your handling code here:
    }//GEN-LAST:event_jComboBox1ActionPerformed

    private void jComboBox2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jComboBox2ActionPerformed
      if (jComboBox2.isFocusOwner()){
        jTextField5.setText("");
        if ((jComboBox1.getSelectedIndex() != 0) && (jComboBox2.getSelectedIndex() != 0)) {
            while (checkForPresence() == true) {
                //    JOptionPane.showMessageDialog(rootPane, "user already exit");
            }
            checkForPresence();
        }
        jTextField5.setText(agentid);
    }
        // TODO add your handling code here:
    }//GEN-LAST:event_jComboBox2ActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException | InstantiationException | IllegalAccessException | UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(AgentReg.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new AgentReg().setVisible(true);
            }
        });
    }
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JComboBox jComboBox1;
    private javax.swing.JComboBox jComboBox2;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPasswordField jPasswordField1;
    private javax.swing.JTextField jTextField1;
    private javax.swing.JTextField jTextField2;
    private javax.swing.JTextField jTextField3;
    private javax.swing.JTextField jTextField4;
    private javax.swing.JTextField jTextField5;
    // End of variables declaration//GEN-END:variables

    void getSetter(){
        DefaultComboBoxModel model=new DefaultComboBoxModel();
        try {
            model.addElement("Poll id");
          dbcon.rs = dbcon.st.executeQuery("select pollid from poll_centers where status=0");
            while (dbcon.rs.next()) {
               model.addElement(dbcon.rs.getString(1)); 
            }  
            jComboBox1.setModel(model);
            model=new DefaultComboBoxModel();
            model.addElement("System id");
          dbcon.rs = dbcon.st.executeQuery("select systemid from system where status=0");
            while (dbcon.rs.next()) {
               model.addElement(dbcon.rs.getString(1)); 
            }  
            jComboBox2.setModel(model);
        } catch (Exception e) {
            e.printStackTrace();
        }
        
    }
    
    
    void clear() {
        jTextField1.setText("");
        jTextField2.setText("");
        jTextField3.setText("");
        jTextField4.setText("");
        jTextField5.setText("");
        jPasswordField1.setText("");
    }

    void addnew() {
        String emt = "";
        if (jTextField1.getText().equals(emt)) {
            JOptionPane.showMessageDialog(rootPane, "Firstname  required");
            return;
        }
        if (jPasswordField1.getText().equals(emt)) {
            JOptionPane.showMessageDialog(rootPane, "password required");
            return;
        }
        if (jTextField2.getText().equals(emt)) {
            JOptionPane.showMessageDialog(rootPane, "last Name required");
            return;
        }
        if (jTextField3.getText().equals(emt)) {
            JOptionPane.showMessageDialog(rootPane, "Address required");
            return;
        }
        if (jTextField4.getText().equals(emt)) {
            JOptionPane.showMessageDialog(rootPane, "Phone no required");
            return;
        }
        if (jTextField5.getText().equals(emt)) {
            JOptionPane.showMessageDialog(rootPane, "Username require");
            return;
        } else if (jTextField5.getText().length() < 12) {
            JOptionPane.showMessageDialog(rootPane, "Invalid username!!");
            return;
        }
        if (jComboBox2.getSelectedIndex() == 0) {
            JOptionPane.showMessageDialog(rootPane, "A system must be allocate");
            return;
        }
        if (jComboBox1.getSelectedIndex() == 0) {
            JOptionPane.showMessageDialog(rootPane, "Agent must be deploy");
            return;
        }
        int id=0;
        try {
            dbcon.ps = dbcon.con.prepareStatement("insert into agent_reg (firstname,othername,address,baselocation,sysid,mobile,level,regdate,adminid,status) VALUES(?,?,?,?,?,?,?,?,?,?)");
            dbcon.ps.setString(1, jTextField1.getText());
            dbcon.ps.setString(2, jTextField2.getText());
            dbcon.ps.setString(3, jTextField3.getText());
            dbcon.ps.setString(4, jComboBox1.getSelectedItem().toString());
            dbcon.ps.setString(5, jComboBox2.getSelectedItem().toString());
            dbcon.ps.setString(6, jTextField4.getText());
            dbcon.ps.setString(7, "3");
             Date d = new Date();
            SimpleDateFormat dateFormat = new SimpleDateFormat("EEE HH:mm:ss dd-MMM-yyyy");
            dbcon.ps.setString(8, dateFormat.format(d.getTime()));
            dbcon.ps.setString(9, var.getUsername());
            dbcon.ps.setString(10, "0");
            dbcon.ps.executeUpdate();
            dbcon2.rs=dbcon2.st.executeQuery("SELECT id FROM agent_reg ORDER BY id DESC");
            if(dbcon2.rs.next()){
            id=dbcon2.rs.getInt(1);
            }
            
            dbcon.ps = dbcon.con.prepareStatement("insert into login (agentid,password,userid,level,status) VALUES(?,?,?,?,?)");
            dbcon.ps.setString(1, jTextField5.getText());
            dbcon.ps.setString(2, jPasswordField1.getText());
            dbcon.ps.setInt(3, id);
            dbcon.ps.setString(4, "3");
            dbcon.ps.setString(5, "0");
            dbcon.ps.executeUpdate();
            
            JOptionPane.showMessageDialog(rootPane, "Agent registered successfully..");
             log("Agent Register");
              this.dispose();
        } catch (Exception g) {
            g.printStackTrace();
            System.out.println("Agent not registered successfully.." + g);
        }

        clear();
    }

    boolean checkForPresence() {
        int id = (int) (Math.random() * 9999);
        String newId = id + "";
        if (newId.length() == 1) {
            newId = "000" + newId;
        } else if (newId.length() == 2) {
            newId = "00" + newId;
        } else if (newId.length() == 3) {
            newId = "0" + newId;
        }
        agentid = jComboBox1.getSelectedItem().toString().substring(0, 3) + "/" + jComboBox2.getSelectedItem().toString().substring(0, 3) + "/" + newId;
       agentid=agentid.toUpperCase();
        boolean present = false;
        try {
            dbcon.rs = dbcon.st.executeQuery("select * from login where agentid='" + agentid + "'");
            if (dbcon.rs.next()) {
                present = true;
            }
        } catch (Exception g) {
            System.out.println("" + g);
        }
        return present;
    }
    void log(String event){
           try {
               Date d=new Date();
                dbcon.ps=dbcon.con.prepareStatement("INSERT INTO `voters_reg`.`log` (`transactiontype` ,`agentid` ,`systemid` ,`date` ,`status`)VALUES (?,?,?,?,?) ");
             dbcon.ps.setString(1, event);
            dbcon.ps.setString(2, var.getUsername());
            dbcon.ps.setString(3, "");//system id goes here
             SimpleDateFormat dateTime = new SimpleDateFormat("HH:mm:ss dd-MMM-yyyy");
            dbcon.ps.setString(4, dateTime.format(d.getTime()));
            dbcon.ps.setString(5, "0");
            dbcon.ps.executeUpdate();
           } catch (Exception e) {
           }  
      }
    
    
}
