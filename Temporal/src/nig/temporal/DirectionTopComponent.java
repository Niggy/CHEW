/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package nig.temporal;

import nig.frontal.TemporalInfo;
import nig.frontal.MyNode;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Driver;
import java.util.logging.Logger;
import javax.swing.JTree;
import javax.swing.event.TreeSelectionEvent;
import javax.swing.event.TreeSelectionListener;
import javax.swing.tree.DefaultMutableTreeNode;
import javax.swing.tree.DefaultTreeModel;
import javax.swing.tree.TreeSelectionModel;
import org.openide.util.NbBundle;
import org.openide.windows.TopComponent;
import org.openide.windows.WindowManager;
//import org.openide.util.ImageUtilities;
import org.netbeans.api.settings.ConvertAsProperties;
import org.openide.awt.StatusDisplayer;
import org.openide.util.Exceptions;
import nig.parietal.*;
import nig.frontal.*;


/**
 * Top component which displays something.
 */
@ConvertAsProperties(
    dtd="-//nig.temporal//Direction//EN",
    autostore=false
)
public final class DirectionTopComponent extends TopComponent implements TreeSelectionListener {

    private static DirectionTopComponent instance;
    /** path to the icon used by the component and its open action */
//    static final String ICON_PATH = "SET/PATH/TO/ICON/HERE";

    private static final String PREFERRED_ID = "DirectionTopComponent";
    private DefaultMutableTreeNode rootNode;
    private DefaultTreeModel treeModel;
    private Statement stmt;
    private Statement stmt2;
    private Connection con;
    private String url;
    private String user;
    private String pass;
    private ParietalInfo pi;
    private ParietalTopComponent ptc;
    private MyNode stratnode;
    private Statement stmt3;

    public DirectionTopComponent() {
        initComponents();
        setName(NbBundle.getMessage(DirectionTopComponent.class, "CTL_DirectionTopComponent"));
        setToolTipText(NbBundle.getMessage(DirectionTopComponent.class, "HINT_DirectionTopComponent"));
//        setIcon(ImageUtilities.loadImage(ICON_PATH, true));

    }

    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jScrollPane1 = new javax.swing.JScrollPane();
        jTree1 = new javax.swing.JTree();

        setLayout(new java.awt.BorderLayout());

        jTree1.setBackground(new java.awt.Color(204, 204, 204));
        jTree1.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));
        javax.swing.tree.DefaultMutableTreeNode treeNode1 = new javax.swing.tree.DefaultMutableTreeNode("Temporal Manipulation");
        jTree1.setModel(new javax.swing.tree.DefaultTreeModel(treeNode1));
        jTree1.setAutoscrolls(true);
        jScrollPane1.setViewportView(jTree1);

        add(jScrollPane1, java.awt.BorderLayout.CENTER);
    }// </editor-fold>//GEN-END:initComponents

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTree jTree1;
    // End of variables declaration//GEN-END:variables
    /**
     * Gets default instance. Do not use directly: reserved for *.settings files only,
     * i.e. deserialization routines; otherwise you could get a non-deserialized instance.
     * To obtain the singleton instance, use {@link #findInstance}.
     */
    public static synchronized DirectionTopComponent getDefault() {
        if (instance == null) {
            instance = new DirectionTopComponent();
        }
        return instance;
    }

    /**
     * Obtain the DirectionTopComponent instance. Never call {@link #getDefault} directly!
     */
    public static synchronized DirectionTopComponent findInstance() {
        TopComponent win = WindowManager.getDefault().findTopComponent(PREFERRED_ID);
        if (win == null) {
            Logger.getLogger(DirectionTopComponent.class.getName()).warning(
                    "Cannot find " + PREFERRED_ID + " component. It will not be located properly in the window system.");
            return getDefault();
        }
        if (win instanceof DirectionTopComponent) {
            return (DirectionTopComponent) win;
        }
        Logger.getLogger(DirectionTopComponent.class.getName()).warning(
                "There seem to be multiple components with the '" + PREFERRED_ID +
                "' ID. That is a potential source of errors and unexpected behavior.");
        return getDefault();
    }

    @Override
    public int getPersistenceType() {
        return TopComponent.PERSISTENCE_ALWAYS;
    }

    @Override
    public void componentOpened() {
        // TODO add custom code on component opening
        this.setDisplayName("Temporal");
        FrontalTopComponent ftc=FrontalTopComponent.findInstance();
        ftc.passTree(jTree1,stratnode);

    }

    @Override
    public void componentClosed() {
        // TODO add custom code on component closing
    }

    void writeProperties(java.util.Properties p) {
        // better to version settings since initial version as advocated at
        // http://wiki.apidesign.org/wiki/PropertyFiles
        p.setProperty("version", "1.0");
        // TODO store your settings
    }

    Object readProperties(java.util.Properties p) {
        DirectionTopComponent singleton = DirectionTopComponent.getDefault();
        singleton.readPropertiesImpl(p);
        return singleton;
    }

    private void readPropertiesImpl(java.util.Properties p) {
        String version = p.getProperty("version");
        // TODO read your settings according to their version
    }

    @Override
    protected String preferredID() {
        return PREFERRED_ID;
    }
    public void populateTree(){
        rootNode = new DefaultMutableTreeNode("Temporal Manipulation");
        treeModel = new DefaultTreeModel(rootNode);
        jTree1.addTreeSelectionListener(this);
        jTree1.setModel(treeModel);
        jTree1.getSelectionModel().setSelectionMode
        (TreeSelectionModel.SINGLE_TREE_SELECTION);
        MyNode m=new MyNode(rootNode,new TemporalInfo("Controls & Direction",0,null));
        ResultSet result = null;

                try {
                   //Class.forName("com.mysql.jdbc.Driver");
//Driver.class.newInstance();




                 con =
                        DriverManager.getConnection(url, user, pass);
                stmt =  this.con.createStatement();
            result = stmt.executeQuery("select id,C,Choice from Control");
            result.beforeFirst();
            while (result.next()) {
                MyNode n=new MyNode(m,new TemporalInfo(result.getString("Choice"),0,null));
                stmt2 =  this.con.createStatement();
                ResultSet result2 = null;
                result2 = stmt2.executeQuery("select id,A,C,D,Concern from Approach_P where C=" + result.getInt("id") + " order by D");
                while (result2.next()) {
                    MyNode o=new MyNode(n,new TemporalInfo(result2.getString("Concern"),result2.getInt("id"),"Direction"));
                }
            }
           stratnode=new MyNode(rootNode,new TemporalInfo("Strategic Implementation",0,null));
           ResultSet result3 = null;
           stmt3 =  this.con.createStatement();
           result3 = stmt3.executeQuery("select id,Strategy from Strategy");
                while (result3.next()) {
                    MyNode p=new MyNode(stratnode,new TemporalInfo(result3.getString("Strategy"),result3.getInt("id"),"Strategy"));
                }
        } catch (Exception ex) {
                Exceptions.printStackTrace(ex);
            }

       






    }
    public void valueChanged(TreeSelectionEvent e) {
//Returns the last path element of the selection.
//This method is useful only when the selection model allows a single selection.
         ptc=ParietalTopComponent.findInstance();
    if (ptc.isOpened())ptc.close();
        MyNode node = (MyNode)
                       jTree1.getLastSelectedPathComponent();

    if (node == null)
    //Nothing is selected.
    return;

    //Object nodeInfo = (TemporalInfo)node.getUserObject();
    if (node.isLeaf()) {
        //TemporalInfo book = nodeInfo.getTemporal();
        displayURL(node.getTemporal().toString());
         pi=new ParietalInfo();
        pi.setTemp(node.getTemporal().getId());
        pi.setType(node.getTemporal().getType());
         ptc.passTemporal(con, pi);
        //if (node.getTemporal().getType().equals("Strategy"))
            if (FrontalTopComponent.getDefault().isOpened())FrontalTopComponent.getDefault().close();
           ptc.setDisplayName("Parietal");
        
         ptc.setIgnoreRepaint(true);
 ptc.passTemporal(con, pi);
        ptc.requestActive();
         ptc.putClientProperty(TopComponent.PROP_UNDOCKING_DISABLED, Boolean.TRUE);
        ptc.open();
       
        
       
    }
}
public void displayURL(String s){
     //StatusDisplayer.getDefault().setStatusText(s);

}
public void establishConnect(String url,String user,String pass){
    this.url=url;
    this.user=user;
    this.pass=pass;
}

}
