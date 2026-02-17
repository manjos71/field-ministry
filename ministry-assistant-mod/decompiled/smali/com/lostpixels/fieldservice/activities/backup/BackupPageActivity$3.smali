.class Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;

.field final synthetic val$fileName:Ljava/lang/String;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity$3;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity$3;->val$fileName:Ljava/lang/String;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity$3;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const p2, 0x7f1204b2

    .line 248
    :try_start_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity$3;->val$fileName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".mytimedb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity$3;->val$uri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity$3;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/backupsync/MyTimeBackupReader;->readBackupFile(Landroid/net/Uri;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity$3;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;

    const v1, 0x7f1204b3

    .line 253
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lde/keyboardsurfer/android/widget/crouton/Style;->CONFIRM:Lde/keyboardsurfer/android/widget/crouton/Style;

    .line 252
    invoke-static {v0, v1, v2}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)Lde/keyboardsurfer/android/widget/crouton/Crouton;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->show()V

    .line 255
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity$3;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->updateReportWidget(Landroid/content/Context;)V

    goto/16 :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity$3;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;

    .line 259
    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lde/keyboardsurfer/android/widget/crouton/Style;->ALERT:Lde/keyboardsurfer/android/widget/crouton/Style;

    .line 258
    invoke-static {v0, v1, v2}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)Lde/keyboardsurfer/android/widget/crouton/Crouton;

    move-result-object v0

    .line 260
    invoke-virtual {v0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->show()V

    goto/16 :goto_3

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity$3;->val$fileName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".mabackup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 264
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity$3;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity$3;->val$uri:Landroid/net/Uri;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity$3;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity$3;->val$uri:Landroid/net/Uri;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    :goto_0
    if-eqz v0, :cond_3

    .line 265
    new-instance v2, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;

    invoke-direct {v2}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;-><init>()V

    goto :goto_1

    :cond_3
    new-instance v2, Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-direct {v2}, Lcom/fasterxml/jackson/core/JsonFactory;-><init>()V

    .line 266
    :goto_1
    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v1

    .line 268
    invoke-static {}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->clearAll()V

    .line 269
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity$3;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;

    new-instance v3, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity$3$1;

    invoke-direct {v3, p0}, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity$3$1;-><init>(Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity$3;)V

    xor-int/lit8 v0, v0, 0x1

    const-string v4, "BackupPageActivity 2"

    invoke-static {v2, v1, v3, v0, v4}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->loadExternalFile(Landroid/content/Context;Lcom/fasterxml/jackson/core/JsonParser;Lcom/lostpixels/fieldservice/helpfunctions/FileManager$FileOperationInterface;ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 288
    :goto_2
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity$3;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget-object v2, Lde/keyboardsurfer/android/widget/crouton/Style;->ALERT:Lde/keyboardsurfer/android/widget/crouton/Style;

    invoke-static {v1, p2, v2}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)Lde/keyboardsurfer/android/widget/crouton/Crouton;

    move-result-object p2

    .line 289
    invoke-virtual {p2}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->show()V

    .line 290
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 291
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 290
    const-string v0, "Failed to restore file"

    invoke-static {v0, p2}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :goto_3
    :try_start_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
