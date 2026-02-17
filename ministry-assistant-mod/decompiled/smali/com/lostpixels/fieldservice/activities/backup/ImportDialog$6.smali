.class Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->restoreFileFromIntent(Ljava/lang/String;Ljava/io/InputStream;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

.field final synthetic val$bBinary:Z

.field final synthetic val$filename:Ljava/lang/String;

.field final synthetic val$path:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;Ljava/lang/String;Ljava/io/InputStream;Z)V
    .locals 0

    .line 599
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$6;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$6;->val$filename:Ljava/lang/String;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$6;->val$path:Ljava/io/InputStream;

    iput-boolean p4, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$6;->val$bBinary:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 603
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$6;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    iget-boolean p1, p1, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mbFileLoaded:Z

    if-nez p1, :cond_0

    .line 604
    invoke-static {}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->waitForIO()V

    .line 606
    :cond_0
    invoke-static {}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->resetCards()V

    .line 607
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$6;->val$filename:Ljava/lang/String;

    if-eqz p1, :cond_3

    const-string v0, ".mytimedb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x7f1204b2

    const/4 v1, 0x0

    .line 609
    :try_start_0
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$6;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    .line 610
    const-string v3, "backup"

    invoke-static {v3, v0, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 612
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const/16 v3, 0x400

    .line 614
    new-array v3, v3, [B

    .line 616
    :goto_0
    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$6;->val$path:Ljava/io/InputStream;

    invoke-virtual {v4, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_1

    .line 617
    invoke-virtual {v2, v3, v1, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    .line 619
    :cond_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 620
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$6;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    invoke-static {v2, v3}, Lcom/lostpixels/fieldservice/backupsync/MyTimeBackupReader;->readBackupFile(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 621
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$6;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    const v3, 0x7f1204b3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 622
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 624
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$6;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    .line 625
    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 626
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "DataImported"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 627
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$6;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->-$$Nest$msaveAndQuit(Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;)V

    goto :goto_1

    .line 629
    :cond_2
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$6;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 630
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$6;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 632
    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 634
    :goto_2
    const-string v2, "Restore failed"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$6;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 636
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$6;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    .line 639
    :cond_3
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$6;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$6;->val$bBinary:Z

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$6;->val$path:Ljava/io/InputStream;

    invoke-static {p1, v0, v1}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->-$$Nest$mrestoreFromBackupFile(Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;ZLjava/io/InputStream;)V

    return-void
.end method
