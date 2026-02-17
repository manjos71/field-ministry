.class Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/helpfunctions/FileManager$FileOperationInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->restoreFromBackupFile(ZLjava/io/InputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

.field final synthetic val$jp:Lcom/fasterxml/jackson/core/JsonParser;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;Lcom/fasterxml/jackson/core/JsonParser;)V
    .locals 0

    .line 661
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$7;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$7;->val$jp:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileOperationComplete(Z)V
    .locals 2

    .line 667
    :try_start_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$7;->val$jp:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 670
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 673
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$7;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    const v1, 0x7f1204b3

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 674
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 676
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$7;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    .line 677
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 678
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "DataImported"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 681
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$7;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->deleteMinistryFile(Landroid/content/Context;)V

    .line 682
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$7;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->deleteServiceFile(Landroid/content/Context;)V

    .line 684
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$7;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->-$$Nest$msaveAndQuit(Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;)V

    goto :goto_1

    .line 686
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$7;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    const v1, 0x7f1204b2

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 687
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 688
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$7;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void
.end method
