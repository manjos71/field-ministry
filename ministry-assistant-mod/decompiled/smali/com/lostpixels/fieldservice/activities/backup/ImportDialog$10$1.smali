.class Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$10$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$10;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$10;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$10;)V
    .locals 0

    .line 860
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$10$1;->this$1:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .line 864
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$10$1;->this$1:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$10;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$10;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->-$$Nest$fgetrealm(Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;)Lio/realm/Realm;

    move-result-object v0

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$10$1;->this$1:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$10;

    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$10;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$10;->val$manager:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->-$$Nest$fgetrealm(Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;)Lio/realm/Realm;

    move-result-object v3

    .line 866
    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v3

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$10$1;->this$1:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$10;

    iget-object v4, v4, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$10;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    invoke-static {v4}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->-$$Nest$fgetrealm(Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;)Lio/realm/Realm;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getTerritories(Lio/realm/Realm;)Lio/realm/RealmResults;

    move-result-object v3

    invoke-virtual {v3, p2}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getId()J

    move-result-wide v3

    .line 864
    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->merge(Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;J)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 867
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$10$1;->this$1:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$10;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$10;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    .line 868
    invoke-virtual {p2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 869
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "DataImported"

    const/4 v1, 0x1

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 870
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$10$1;->this$1:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$10;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$10;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    const v0, 0x7f120420

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    .line 871
    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 872
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$10$1;->this$1:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$10;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$10;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->-$$Nest$msaveAndQuit(Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;)V

    goto :goto_0

    .line 874
    :cond_0
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$10$1;->this$1:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$10;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$10;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    const v0, 0x7f12041c

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    .line 875
    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 876
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$10$1;->this$1:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$10;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$10;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    .line 878
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
