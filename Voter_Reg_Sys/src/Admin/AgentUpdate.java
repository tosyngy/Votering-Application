package Admin;

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
import java.util.Calendar;
import java.util.Date;
import java.util.Vector;
import javax.swing.DefaultComboBoxModel;
import javax.swing.JOptionPane;
import javax.swing.UnsupportedLookAndFeelException;

/**
 *
 * @author damhiesax
 */
public class AgentUpdate extends javax.swing.JFrame {

    DbConnect db = new DbConnect();
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
    JOptionPane jp;
    int id, status;
    String sysId;

    /**
     * Creates new form UserReg
     */
    public AgentUpdate() {
        initComponents();
        setTitle("Staff Registration Page");
        var = new Variables();
        jp = new JOptionPane();
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
        jButton3 = new javax.swing.JButton();
        jLabel8 = new javax.swing.JLabel();
        jLabel10 = new javax.swing.JLabel();
        jComboBox2 = new javax.swing.JComboBox();
        jLabel11 = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        jLabel12 = new javax.swing.JLabel();
        jButton4 = new javax.swing.JButton();
        jTextField6 = new javax.swing.JTextField();
        jLabel14 = new javax.swing.JLabel();
        jCheckBox1 = new javax.swing.JCheckBox();
        jLabel9 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("User Registraion");
        setLocationByPlatform(true);
        setResizable(false);

        jPanel1.setLayout(null);

        jLabel1.setText("First Name");
        jPanel1.add(jLabel1);
        jLabel1.setBounds(40, 160, 80, 14);

        jLabel2.setText("Last Name");
        jPanel1.add(jLabel2);
        jLabel2.setBounds(40, 190, 70, 14);

        jLabel3.setText("Address");
        jPanel1.add(jLabel3);
        jLabel3.setBounds(40, 220, 60, 14);

        jLabel4.setText("Username");
        jPanel1.add(jLabel4);
        jLabel4.setBounds(40, 340, 70, 20);

        jLabel5.setText("Password");
        jPanel1.add(jLabel5);
        jLabel5.setBounds(40, 380, 90, 14);

        jLabel6.setText("Location:");
        jPanel1.add(jLabel6);
        jLabel6.setBounds(40, 280, 70, 20);
        jPanel1.add(jTextField1);
        jTextField1.setBounds(120, 160, 230, 20);
        jPanel1.add(jTextField2);
        jTextField2.setBounds(120, 190, 230, 20);
        jPanel1.add(jTextField3);
        jTextField3.setBounds(120, 220, 230, 20);

        jTextField4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTextField4ActionPerformed(evt);
            }
        });
        jPanel1.add(jTextField4);
        jTextField4.setBounds(120, 250, 230, 20);

        jTextField5.setEditable(false);
        jTextField5.setBackground(new java.awt.Color(227, 227, 227));
        jTextField5.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTextField5ActionPerformed(evt);
            }
        });
        jPanel1.add(jTextField5);
        jTextField5.setBounds(120, 340, 230, 20);
        jPanel1.add(jPasswordField1);
        jPasswordField1.setBounds(120, 370, 230, 20);

        jComboBox1.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "Select location", "Agege" }));
        jComboBox1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jComboBox1ActionPerformed(evt);
            }
        });
        jPanel1.add(jComboBox1);
        jComboBox1.setBounds(120, 280, 230, 20);

        jButton1.setFont(new java.awt.Font("DejaVu Sans", 1, 13)); // NOI18N
        jButton1.setText("Update");
        jButton1.setEnabled(false);
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });
        jPanel1.add(jButton1);
        jButton1.setBounds(30, 450, 100, 27);

        jButton3.setFont(new java.awt.Font("DejaVu Sans", 1, 13)); // NOI18N
        jButton3.setText("Close");
        jButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton3ActionPerformed(evt);
            }
        });
        jPanel1.add(jButton3);
        jButton3.setBounds(250, 450, 100, 27);

        jLabel8.setText("Phone No");
        jPanel1.add(jLabel8);
        jLabel8.setBounds(40, 250, 70, 14);

        jLabel10.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jLabel10.setText("Update New Agent");
        jPanel1.add(jLabel10);
        jLabel10.setBounds(120, 10, 160, 20);

        jComboBox2.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "Select System", "0903030" }));
        jComboBox2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jComboBox2ActionPerformed(evt);
            }
        });
        jPanel1.add(jComboBox2);
        jComboBox2.setBounds(120, 310, 230, 20);

        jLabel11.setText("System id:");
        jPanel1.add(jLabel11);
        jLabel11.setBounds(40, 310, 70, 20);

        jLabel7.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));
        jPanel1.add(jLabel7);
        jLabel7.setBounds(20, 150, 340, 330);

        jLabel12.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));
        jPanel1.add(jLabel12);
        jLabel12.setBounds(20, 0, 340, 30);

        jButton4.setText("GO");
        jButton4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton4ActionPerformed(evt);
            }
        });
        jPanel1.add(jButton4);
        jButton4.setBounds(200, 110, 130, 23);

        jTextField6.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jTextField6MouseClicked(evt);
            }
        });
        jTextField6.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTextField6ActionPerformed(evt);
            }
        });
        jTextField6.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField6KeyPressed(evt);
            }
        });
        jPanel1.add(jTextField6);
        jTextField6.setBounds(140, 70, 200, 30);

        jLabel14.setText("Agent ID:");
        jPanel1.add(jLabel14);
        jLabel14.setBounds(30, 70, 60, 30);

        jCheckBox1.setText("Disable");
        jCheckBox1.setEnabled(false);
        jCheckBox1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jCheckBox1ActionPerformed(evt);
            }
        });
        jPanel1.add(jCheckBox1);
        jCheckBox1.setBounds(30, 110, 70, 23);

        jLabel9.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));
        jPanel1.add(jLabel9);
        jLabel9.setBounds(20, 50, 340, 90);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, 374, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, 484, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 0, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        addnew();

    }//GEN-LAST:event_jButton1ActionPerformed

    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton3ActionPerformed
        this.dispose();
        // TODO add your handling code here:
    }//GEN-LAST:event_jButton3ActionPerformed

    private void jComboBox1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jComboBox1ActionPerformed
        jTextField5.setText("");
        if ((jComboBox1.getSelectedIndex() != 0) && (jComboBox2.getSelectedIndex() != 0)) {
            while (checkForPresence() == true) {
                //    JOptionPane.showMessageDialog(rootPane, "user already exit");
            }
            checkForPresence();
        }
        jTextField5.setText(agentid);
        // TODO add your handling code here:
    }//GEN-LAST:event_jComboBox1ActionPerformed

    private void jComboBox2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jComboBox2ActionPerformed
sysId=jComboBox2.getSelectedItem().toString();
        jTextField5.setText("");
        if ((jComboBox1.getSelectedIndex() != 0) && (jComboBox2.getSelectedIndex() != 0)) {
            while (checkForPresence() == true) {
                //    JOptionPane.showMessageDialog(rootPane, "user already exit");
            }
            checkForPresence();
        }
        jTextField5.setText(agentid);
        // TODO add your handling code here:
    }//GEN-LAST:event_jComboBox2ActionPerformed

    private void jButton4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton4ActionPerformed
        userLogin();        // TODO add your handling code here:
    }//GEN-LAST:event_jButton4ActionPerformed

    private void jTextField6MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jTextField6MouseClicked
        jTextField1.setSelectionStart(0);
    }//GEN-LAST:event_jTextField6MouseClicked

    private void jTextField6ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTextField6ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jTextField6ActionPerformed

    private void jTextField6KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField6KeyPressed
    }//GEN-LAST:event_jTextField6KeyPressed

    private void jTextField5ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTextField5ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jTextField5ActionPerformed

    private void jTextField4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTextField4ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jTextField4ActionPerformed

    private void jCheckBox1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jCheckBox1ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jCheckBox1ActionPerformed

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
            java.util.logging.Logger.getLogger(AgentUpdate.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new AgentUpdate().setVisible(true);
            }
        });
    }
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton3;
    private javax.swing.JButton jButton4;
    private javax.swing.JCheckBox jCheckBox1;
    private javax.swing.JComboBox jComboBox1;
    private javax.swing.JComboBox jComboBox2;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel14;
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
    private javax.swing.JTextField jTextField6;
    // End of variables declaration//GEN-END:variables

    void userLogin() {
        if (jTextField6.getText().isEmpty()) {
            jp.showMessageDialog(rootPane, "Agent ID require", "Agent Update", jp.ERROR_MESSAGE);
            jTextField6.requestFocus();
            return;
        }

        //testing if internet connection is available

        try {
            String sqlQuery = "select *  from login,agent_reg where agent_reg.id=login.userid and agentid='" + jTextField6.getText() + "'";
            db.rs = db.st.executeQuery(sqlQuery);
            if (db.rs.next()) {
                jCheckBox1.setEnabled(true);
                jButton1.setEnabled(true);
                status = db.rs.getInt("login.status");
                if (status != 0) {
                    jCheckBox1.setText("Enable");
                }
                id = db.rs.getInt("id");
                jTextField1.setText(db.rs.getString("firstname"));
                jTextField2.setText(db.rs.getString("othername"));
                jTextField3.setText(db.rs.getString("address"));
                jTextField4.setText(db.rs.getString("mobile"));
                agentid = db.rs.getString("agentid");
                Object sys = db.rs.getObject("sysid")+"";
                sysId=db.rs.getString("sysid");
                jTextField5.setText(agentid);
                System.out.println("age " + agentid);
                System.out.println("sys " + sys);
                jPasswordField1.setText(db.rs.getString("password"));
                jComboBox2.setSelectedItem(sys);
                jComboBox1.setSelectedItem(db.rs.getObject("baselocation"));
                this.repaint();
                return;

            } else {
                JOptionPane.showMessageDialog(rootPane, "Invalid Info Supply");
                this.dispose();
            }
        } catch (Exception e) {
            JOptionPane.showMessageDialog(rootPane, "There was a Problem retrying this data");
            e.printStackTrace();
        }

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
            db.rs = db.st.executeQuery("select * from login where agentid='" + agentid + "'");
            if (db.rs.next()) {
                present = true;
            }
        } catch (Exception g) {
            System.out.println("" + g);
        }
        return present;
    }
//    void clear() {
//        jTextField1.setText("");
//        jTextField2.setText("");
//        jTextField3.setText("");
//        jTextField4.setText("");
//        jTextField5.setText("");
//        jPasswordField1.setText("");
//    }
//

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
        if (agentid.equals(emt)) {
            JOptionPane.showMessageDialog(rootPane, "Agent id require");
            return;
        } else if (jTextField5.getText().length() < 12) {
            JOptionPane.showMessageDialog(rootPane, "Invalid username!!");
            return;
        }
        if (sysId.equalsIgnoreCase("Select System")) {
            JOptionPane.showMessageDialog(rootPane, "A system must be allocate");
            return;
        }
        if (jComboBox1.getSelectedIndex() == 0) {
            JOptionPane.showMessageDialog(rootPane, "Agent must be deploy");
            return;
        }

        try {
            db.ps = db.con.prepareStatement("Update agent_reg SET firstname=?,othername=?,address=?,baselocation=?,sysid=?,mobile=?,level=?,adminid=?,status=? where id =" + id);
            db.ps.setString(1, jTextField1.getText());
            db.ps.setString(2, jTextField2.getText());
            db.ps.setString(3, jTextField3.getText());
            db.ps.setString(4, jComboBox1.getSelectedItem().toString());
            db.ps.setString(5, sysId);
            db.ps.setString(6, jTextField4.getText());
            db.ps.setString(7, "3");
            db.ps.setString(8, var.getUsername());
            db.ps.setString(9, "0");
            db.ps.executeUpdate();
            
            db.ps = db.con.prepareStatement("Update login SET agentid=?,password=?,status=? where id =" + id);
            db.ps.setString(1, agentid);
            db.ps.setString(2, jPasswordField1.getText());
            if (jCheckBox1.getText().equalsIgnoreCase("Enable") && jCheckBox1.isSelected()) {
                status=0;
                System.out.println("here1");
            } else if (jCheckBox1.getText().equalsIgnoreCase("Disable") && jCheckBox1.isSelected()) {
               System.out.println("here0");
                status= 1;
            } 
            db.ps.setInt(3, status);
            db.ps.executeUpdate();
            JOptionPane.showMessageDialog(rootPane, "Agent Update successfully..");
            log("Agent Editted");
            this.dispose();
        } catch (Exception g) {
            System.out.println("Agent not Update successfully.." + g);
        }

    }
//
 void getSetter(){
        DefaultComboBoxModel model=new DefaultComboBoxModel();
        try {
            model.addElement("Poll id");
          db.rs = db.st.executeQuery("select pollid from poll_centers where status=0");
            while (db.rs.next()) {
               model.addElement(db.rs.getString(1)); 
            }  
            jComboBox1.setModel(model);
            model=new DefaultComboBoxModel();
            model.addElement("System id");
          db.rs = db.st.executeQuery("select systemid from system where status=0");
            while (db.rs.next()) {
               model.addElement(db.rs.getString(1)); 
            }  
            jComboBox2.setModel(model);
        } catch (Exception e) {
            e.printStackTrace();
        }
        
    }
    
    void log(String event) {
        try {
            Date d = new Date();
            db.ps = db.con.prepareStatement("INSERT INTO `voters_reg`.`log` (`transactiontype` ,`agentid` ,`systemid` ,`date` ,`status`)VALUES (?,?,?,?,?) ");
            db.ps.setString(1, event);
            db.ps.setString(2, var.getUsername());
            db.ps.setString(3, "");//system id goes here
            SimpleDateFormat dateTime = new SimpleDateFormat("HH:mm:ss dd-MMM-yyyy");
            db.ps.setString(4, dateTime.format(d.getTime()));
            db.ps.setString(5, "0");
            db.ps.executeUpdate();
        } catch (Exception e) {
        }
    }
}
