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
import java.util.Calendar;
import java.util.Date;
import java.util.Vector;
import javax.swing.JOptionPane;

/**
 *
 * @author damhiesax
 */
public class UpdateUser extends javax.swing.JFrame {

    DbConnect db = new DbConnect();
    ResultSetMetaData md;
    String firstname, lastname, PassWord, address, mobileNo, administrator, username, Userid;
    Connection con;
    ResultSet rs;
    PreparedStatement ps;
    Statement st;
    Vector<String> data = new Vector<String>();
     byte[] image;
Variables var = new Variables();
String dateMe;
int id;

    public static String[] rowData;

    /**
     * Creates new form UserReg
     */
    public UpdateUser() {
        initComponents();
        setTitle("Voter's Details Page");
        fetchData();
         VoterDetails vol= new VoterDetails();
    if(vol.a==1){
    jButton1.setEnabled(false);
    }
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
        jComboBox1 = new javax.swing.JComboBox();
        jButton3 = new javax.swing.JButton();
        jLabel8 = new javax.swing.JLabel();
        jLabel11 = new javax.swing.JLabel();
        jTextField7 = new javax.swing.JTextField();
        jLabel12 = new javax.swing.JLabel();
        jTextField8 = new javax.swing.JTextField();
        jLabel13 = new javax.swing.JLabel();
        jTextField13 = new javax.swing.JTextField();
        jLabel18 = new javax.swing.JLabel();
        jTextField14 = new javax.swing.JTextField();
        jLabel19 = new javax.swing.JLabel();
        jComboBox2 = new javax.swing.JComboBox();
        jLabel20 = new javax.swing.JLabel();
        jLabel14 = new javax.swing.JLabel();
        jLabel15 = new javax.swing.JLabel();
        jLabel16 = new javax.swing.JLabel();
        jLabel24 = new javax.swing.JLabel();
        jTextField9 = new javax.swing.JTextField();
        jLabel7 = new javax.swing.JLabel();
        jTextField10 = new javax.swing.JTextField();
        jLabel21 = new javax.swing.JLabel();
        jButton1 = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("User Registraion");
        setLocationByPlatform(true);
        setResizable(false);

        jPanel1.setLayout(null);

        jLabel1.setText("First Name");
        jPanel1.add(jLabel1);
        jLabel1.setBounds(60, 140, 120, 14);

        jLabel2.setText("Other names:");
        jPanel1.add(jLabel2);
        jLabel2.setBounds(60, 200, 110, 14);

        jLabel3.setText("Date of Birth:");
        jPanel1.add(jLabel3);
        jLabel3.setBounds(60, 220, 80, 20);

        jLabel4.setText("State of Origin:");
        jPanel1.add(jLabel4);
        jLabel4.setBounds(60, 290, 90, 14);

        jLabel5.setText("Local Govt: ");
        jPanel1.add(jLabel5);
        jLabel5.setBounds(60, 320, 90, 14);

        jLabel6.setText("Marital Status: ");
        jPanel1.add(jLabel6);
        jLabel6.setBounds(60, 500, 80, 20);

        jTextField1.setEditable(false);
        jTextField1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTextField1ActionPerformed(evt);
            }
        });
        jPanel1.add(jTextField1);
        jTextField1.setBounds(140, 130, 190, 30);

        jTextField2.setEditable(false);
        jPanel1.add(jTextField2);
        jTextField2.setBounds(140, 220, 190, 30);

        jTextField3.setEditable(false);
        jTextField3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTextField3ActionPerformed(evt);
            }
        });
        jPanel1.add(jTextField3);
        jTextField3.setBounds(140, 430, 190, 30);

        jTextField4.setEditable(false);
        jTextField4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTextField4ActionPerformed(evt);
            }
        });
        jPanel1.add(jTextField4);
        jTextField4.setBounds(140, 310, 190, 30);

        jTextField5.setEditable(false);
        jPanel1.add(jTextField5);
        jTextField5.setBounds(140, 280, 190, 30);

        jComboBox1.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "Select Status", "Single", "Married", "Divorce", "Widow" }));
        jPanel1.add(jComboBox1);
        jComboBox1.setBounds(140, 490, 190, 30);

        jButton3.setFont(new java.awt.Font("DejaVu Sans", 1, 13)); // NOI18N
        jButton3.setText("Close");
        jButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton3ActionPerformed(evt);
            }
        });
        jPanel1.add(jButton3);
        jButton3.setBounds(540, 570, 180, 27);

        jLabel8.setText("Phone No");
        jPanel1.add(jLabel8);
        jLabel8.setBounds(60, 350, 70, 14);

        jLabel11.setText("Second Name:");
        jPanel1.add(jLabel11);
        jLabel11.setBounds(60, 170, 110, 14);

        jTextField7.setEditable(false);
        jPanel1.add(jTextField7);
        jTextField7.setBounds(140, 160, 190, 30);

        jLabel12.setText("Occupation: ");
        jPanel1.add(jLabel12);
        jLabel12.setBounds(60, 440, 90, 20);

        jTextField8.setEditable(false);
        jTextField8.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTextField8ActionPerformed(evt);
            }
        });
        jPanel1.add(jTextField8);
        jTextField8.setBounds(140, 460, 190, 30);

        jLabel13.setText("Place of Birth: ");
        jPanel1.add(jLabel13);
        jLabel13.setBounds(60, 470, 90, 20);

        jTextField13.setEditable(false);
        jTextField13.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTextField13ActionPerformed(evt);
            }
        });
        jPanel1.add(jTextField13);
        jTextField13.setBounds(140, 370, 190, 30);

        jLabel18.setText("Meidian Name:");
        jPanel1.add(jLabel18);
        jLabel18.setBounds(60, 380, 90, 20);

        jTextField14.setEditable(false);
        jTextField14.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTextField14ActionPerformed(evt);
            }
        });
        jPanel1.add(jTextField14);
        jTextField14.setBounds(140, 400, 190, 30);

        jLabel19.setText("Address:");
        jPanel1.add(jLabel19);
        jLabel19.setBounds(60, 410, 60, 20);

        jComboBox2.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "Select Gender", "Male", "Female" }));
        jPanel1.add(jComboBox2);
        jComboBox2.setBounds(140, 250, 190, 30);

        jLabel20.setText("Gender: ");
        jPanel1.add(jLabel20);
        jLabel20.setBounds(60, 250, 60, 20);

        jLabel14.setFont(new java.awt.Font("Impact", 1, 18)); // NOI18N
        jLabel14.setText("VOTER'S REGISTRATION DETAILS");
        jPanel1.add(jLabel14);
        jLabel14.setBounds(260, 80, 260, 20);

        jLabel15.setFont(new java.awt.Font("Tahoma", 1, 36)); // NOI18N
        jLabel15.setText("FEDERAL REPUBLIC OF NIGERIA ");
        jPanel1.add(jLabel15);
        jLabel15.setBounds(80, 10, 640, 30);

        jLabel16.setFont(new java.awt.Font("Times New Roman", 1, 24)); // NOI18N
        jLabel16.setText("INDEPENDENT NATIONAL ELECTORAL COMMISSION");
        jPanel1.add(jLabel16);
        jLabel16.setBounds(60, 50, 640, 20);

        jLabel24.setBorder(new javax.swing.border.MatteBorder(null));
        jLabel24.setPreferredSize(new java.awt.Dimension(120, 482));
        jPanel1.add(jLabel24);
        jLabel24.setBounds(530, 140, 190, 170);

        jTextField9.setEditable(false);
        jTextField9.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTextField9ActionPerformed(evt);
            }
        });
        jPanel1.add(jTextField9);
        jTextField9.setBounds(140, 340, 190, 30);

        jLabel7.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jPanel1.add(jLabel7);
        jLabel7.setBounds(380, 110, 350, 420);

        jTextField10.setEditable(false);
        jPanel1.add(jTextField10);
        jTextField10.setBounds(140, 190, 190, 30);

        jLabel21.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));
        jPanel1.add(jLabel21);
        jLabel21.setBounds(20, 110, 350, 430);

        jButton1.setFont(new java.awt.Font("Cantarell", 1, 16)); // NOI18N
        jButton1.setText("Grant Card");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });
        jPanel1.add(jButton1);
        jButton1.setBounds(20, 560, 170, 40);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, 750, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 0, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, 619, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 1, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton3ActionPerformed
        this.dispose();
        // TODO add your handling code here:
    }//GEN-LAST:event_jButton3ActionPerformed

    private void jTextField3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTextField3ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jTextField3ActionPerformed

    private void jTextField8ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTextField8ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jTextField8ActionPerformed

    private void jTextField13ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTextField13ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jTextField13ActionPerformed

    private void jTextField14ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTextField14ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jTextField14ActionPerformed

    private void jTextField4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTextField4ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jTextField4ActionPerformed

    private void jTextField9ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTextField9ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jTextField9ActionPerformed

    private void jTextField1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTextField1ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jTextField1ActionPerformed

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        VoterDetails vd= new VoterDetails();
            Date d = new Date();
            SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MMM-yyyy");
            SimpleDateFormat timeFormat = new SimpleDateFormat("HH:mm:ss");
            dateFormat = new SimpleDateFormat("dd-MM-yy");
            String dd=dateFormat.format(d.getTime());
           FormatDate fd= new FormatDate();
           dd=fd.getDateFormat(dd);
            for(int x=0;x<7;x++){
            dd=fd.getDate(dd);
            System.out.println("sssss "+dd);
            }  
            dd=fd.getDateFormat(dd);
             System.out.println("sssss "+dd);
            d = new Date(vd.dat);
           // dateFormat = new SimpleDateFormat("dd-MMM-yyyy");
            timeFormat = new SimpleDateFormat("HH:mm:ss");
            dateFormat = new SimpleDateFormat("dd-MM-yy");
            String dd2=dateFormat.format(d.getTime());
            System.out.println("ddd" +dd2);
         if(fd.checkDate(dd, dd2)){
         setVisible(false);
         new IssueCard().setVisible(true);
        }else{
         JOptionPane.showMessageDialog(rootPane, "Card not Yet Ready check back by "+dd);
         }
        // TODO add your handling code here:
    }//GEN-LAST:event_jButton1ActionPerformed

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
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(UpdateUser.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(UpdateUser.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(UpdateUser.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(UpdateUser.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new UpdateUser().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton3;
    private javax.swing.JComboBox jComboBox1;
    private javax.swing.JComboBox jComboBox2;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel13;
    private javax.swing.JLabel jLabel14;
    private javax.swing.JLabel jLabel15;
    private javax.swing.JLabel jLabel16;
    private javax.swing.JLabel jLabel18;
    private javax.swing.JLabel jLabel19;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel20;
    private javax.swing.JLabel jLabel21;
    public javax.swing.JLabel jLabel24;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JTextField jTextField1;
    private javax.swing.JTextField jTextField10;
    private javax.swing.JTextField jTextField13;
    private javax.swing.JTextField jTextField14;
    private javax.swing.JTextField jTextField2;
    private javax.swing.JTextField jTextField3;
    private javax.swing.JTextField jTextField4;
    private javax.swing.JTextField jTextField5;
    private javax.swing.JTextField jTextField7;
    private javax.swing.JTextField jTextField8;
    private javax.swing.JTextField jTextField9;
    // End of variables declaration//GEN-END:variables


  

    void fetchData() {
        try {
            System.out.println("your id "+var.getAgentId());
            db.rs = db.st.executeQuery("select * from register_detaila where reg_id='"+var.getAgentId()+"'");
            if (db.rs.next()) { 
            String gen=db.rs.getString("gender");
           String mari=db.rs.getString("marital_status");
          jTextField1.setText(db.rs.getString("firstname"));
          jTextField7.setText(db.rs.getString("secondname"));
          dateMe=(db.rs.getString("dob"));
          jTextField2.setText(dateMe);
         
          if(gen.equalsIgnoreCase("female")){
          jComboBox2.setSelectedIndex(2);
          }else{
          jComboBox2.setSelectedIndex(1);
          }
         
          System.out.println("maru"+mari);
          if(mari.equalsIgnoreCase("Single")){
          jComboBox1.setSelectedIndex(1);
          }
          else if(mari.equalsIgnoreCase("Married")){
          jComboBox1.setSelectedIndex(2);
          }
          else if(mari.equalsIgnoreCase("Divorce")){
          jComboBox1.setSelectedIndex(3);
          }else{
          jComboBox1.setSelectedIndex(4);
          }
          jTextField4.setText(db.rs.getString("localgovt"));
          jTextField5.setText(db.rs.getString("stateoforigin"));
          jTextField13.setText(db.rs.getString("meiden_name"));
          jTextField9.setText(db.rs.getString("mobileno"));
          jTextField14.setText(db.rs.getString("street"));
          jTextField3.setText(db.rs.getString("occupation"));
          jTextField8.setText(db.rs.getString("stateoforigin"));
          
//          Calendar date = new GetInstance("dd/MM/yy").parse(dateMe);
//          dateChooserCombo1.setSelectedDate(date);
          jTextField10.setText(db.rs.getString("othername"));
          id=db.rs.getInt("id");
          var.setPixPath(db.rs.getString("pix"));
           getpicture(var.getPixPath());
            }else{
            JOptionPane.showMessageDialog(rootPane, "Voter's details not found");
            }
        } catch (Exception g) {
            System.out.println("" + g);
        }

    }
    
    
      private void getpicture(String path) {
        try {
            if (path.length() > 30000) {
                JOptionPane.showMessageDialog(rootPane, "picture size too large");
                return;
            }
             jLabel24.setIcon(new javax.swing.ImageIcon(path)); // NOI18N
        jLabel24.setBorder(javax.swing.BorderFactory.createEtchedBorder());
       // jPanel1.add(jLabel24);
        jLabel24.setBounds(530, 140, 190, 170);

            this.repaint();
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("picture " + e);
        }
    }
     void log(String event){
         Date d= new Date();
         try {
                db.ps = db.con.prepareStatement("INSERT INTO `voters_reg`.`log` (`transactiontype` ,`agentid` ,`systemid` ,`date` ,`status`)VALUES (?,?,?,?,?) ");
                db.ps.setString(1, event);
                db.ps.setString(2, var.getUsername());
                db.ps.setString(3, "");//system id goes here
                SimpleDateFormat dateTime = new SimpleDateFormat("HH:mm:ss dd-MMM-yyyy");
                db.ps.setString(4, dateTime.format(d.getTime()));
                db.ps.setString(5, "0");
                db.ps.executeUpdate();
         } catch (Exception e) {
         //    JOptionPane.showMessageDialog("", e);
         }
     
     }
}