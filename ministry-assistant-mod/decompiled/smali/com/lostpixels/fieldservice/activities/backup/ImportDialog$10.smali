.class Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->importDataFromIntent(Ljava/io/InputStream;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

.field final synthetic val$manager:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;)V
    .locals 0

    .line 849
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$10;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$10;->val$manager:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12

    .line 853
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$10;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mchMergeTerritory:Landroid/widget/CheckBox;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 857
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$10;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 858
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$10;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    const v1, 0x7f1204ca

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 859
    new-instance v0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$TerritoryArrayAdapter;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$10;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->-$$Nest$fgetrealm(Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;)Lio/realm/Realm;

    move-result-object v2

    .line 860
    invoke-static {v2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v2

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$10;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    invoke-static {v3}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->-$$Nest$fgetrealm(Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;)Lio/realm/Realm;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getTerritories(Lio/realm/Realm;)Lio/realm/RealmResults;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$TerritoryArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    new-instance v1, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$10$1;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$10$1;-><init>(Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$10;)V

    .line 859
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 881
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 882
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    .line 886
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$10;->val$manager:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getUnmanagedTerritoryList()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 887
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$10;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    invoke-static {v1, p1}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->-$$Nest$mterritoryExists(Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_8

    .line 890
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getStreets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 891
    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getAddresses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    .line 892
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 893
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-nez v11, :cond_4

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->isInterested()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 894
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_4

    .line 895
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getNumberOfVisits()I

    move-result v6

    if-eqz v6, :cond_3

    :cond_4
    const/4 v3, 0x0

    :cond_5
    if-nez v3, :cond_2

    :cond_6
    if-nez v3, :cond_1

    :cond_7
    if-eqz v3, :cond_8

    .line 909
    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->hide(Z)V

    .line 910
    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->returnTerritory(Z)V

    .line 911
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->setDateCreated(Ljava/util/Date;)V

    .line 912
    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->setOldTerritoryDisplayed(Z)V

    .line 917
    :cond_8
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$10;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->-$$Nest$fgetrealm(Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;)Lio/realm/Realm;

    move-result-object p1

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p1

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$10;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$10;->val$manager:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    const-wide/16 v4, -0x1

    invoke-virtual {p1, v1, v3, v4, v5}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->merge(Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;J)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 919
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$10;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    .line 920
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 921
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "DataImported"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 922
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$10;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    const v0, 0x7f120420

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 923
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 924
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$10;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->-$$Nest$msaveAndQuit(Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;)V

    return-void

    .line 926
    :cond_9
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$10;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    const v1, 0x7f12041c

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 927
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 928
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$10;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
