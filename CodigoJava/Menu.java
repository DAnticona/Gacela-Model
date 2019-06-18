/***********************************************************************
 * Module:  Menu.java
 * Author:  danticona
 * Purpose: Defines the Class Menu
 ***********************************************************************/

import java.util.*;

/** @pdOid 38a0c89b-b8c7-454c-87fb-3bd8ccfe23d7 */
public class Menu {
   /** @pdOid ad3b8e1e-c897-4702-a75e-c47221764665 */
   private String coMenu;
   /** @pdOid 714e0c28-4bad-440c-a91f-016c796b0881 */
   private String noMenu;
   /** @pdOid 2306df06-5681-44c6-b04e-6cec4d9c7db0 */
   private String alias;
   /** @pdOid 6f0256b6-23c2-4561-a3c1-7cfd8ea039e6 */
   private String ruta;
   /** @pdOid 6aacdc71-04d3-4bde-9990-1a11db3cdc6c */
   private String usCrea;
   /** @pdOid 387d86a1-d1d9-4649-8ec3-4eb41121282c */
   private String usModi;
   /** @pdOid 0df3a749-6366-4a8b-bf20-d7341de103a9 */
   private Date feCrea;
   /** @pdOid d21f720c-5882-4601-830e-a8f50f155813 */
   private Date feModi;
   
   /** @pdRoleInfo migr=no name=SubMenu assc=association3 coll=java.util.Collection impl=java.util.HashSet mult=0..* type=Aggregation */
   public java.util.Collection<SubMenu> subMenu;
   
   /** @pdOid 715b7da6-09bb-4fb6-a370-112dbdeb69cc */
   public void buscarMenues() {
      // TODO: implement
   }
   
   /** @param coMenu
    * @pdOid 388e9d33-80e1-42eb-8b1c-2d1675c91fdc */
   public Menu buscarMenu(String coMenu) {
      // TODO: implement
      return null;
   }
   
   /** @param menu
    * @pdOid 9af4889c-4d65-4e32-8449-83779aaf92d2 */
   public void registrarMenu(Menu menu) {
      // TODO: implement
   }
   
   /** @param coMenu
    * @pdOid ba992610-973a-4b3a-bae7-f6b79ee7d78e */
   public void eliminarMenu(String coMenu) {
      // TODO: implement
   }
   
   /** @param menu
    * @pdOid 8c572c91-095d-4ec6-871e-0432785e54a8 */
   public void modificarMenu(Menu menu) {
      // TODO: implement
   }
   
   
   /** @pdGenerated default getter */
   public java.util.Collection<SubMenu> getSubMenu() {
      if (subMenu == null)
         subMenu = new java.util.HashSet<SubMenu>();
      return subMenu;
   }
   
   /** @pdGenerated default iterator getter */
   public java.util.Iterator getIteratorSubMenu() {
      if (subMenu == null)
         subMenu = new java.util.HashSet<SubMenu>();
      return subMenu.iterator();
   }
   
   /** @pdGenerated default setter
     * @param newSubMenu */
   public void setSubMenu(java.util.Collection<SubMenu> newSubMenu) {
      removeAllSubMenu();
      for (java.util.Iterator iter = newSubMenu.iterator(); iter.hasNext();)
         addSubMenu((SubMenu)iter.next());
   }
   
   /** @pdGenerated default add
     * @param newSubMenu */
   public void addSubMenu(SubMenu newSubMenu) {
      if (newSubMenu == null)
         return;
      if (this.subMenu == null)
         this.subMenu = new java.util.HashSet<SubMenu>();
      if (!this.subMenu.contains(newSubMenu))
         this.subMenu.add(newSubMenu);
   }
   
   /** @pdGenerated default remove
     * @param oldSubMenu */
   public void removeSubMenu(SubMenu oldSubMenu) {
      if (oldSubMenu == null)
         return;
      if (this.subMenu != null)
         if (this.subMenu.contains(oldSubMenu))
            this.subMenu.remove(oldSubMenu);
   }
   
   /** @pdGenerated default removeAll */
   public void removeAllSubMenu() {
      if (subMenu != null)
         subMenu.clear();
   }

}