.class Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$1DownloadFileTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->downloadFileFromInternet(Ljava/lang/String;Ljava/io/File;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadFileTask"
.end annotation


# instance fields
.field private final dialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$sURL:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 1000
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$1DownloadFileTask;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$1DownloadFileTask;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$1DownloadFileTask;->val$file:Ljava/io/File;

    iput-object p4, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$1DownloadFileTask;->val$sURL:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1001
    new-instance p1, Landroid/app/ProgressDialog;

    invoke-direct {p1, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$1DownloadFileTask;->dialog:Landroid/app/ProgressDialog;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 993
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$1DownloadFileTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .line 1045
    :try_start_0
    new-instance p1, Ljava/net/URL;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$1DownloadFileTask;->val$sURL:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1049
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    .line 1054
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 1055
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1061
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x32

    invoke-direct {p1, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1063
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    int-to-byte v1, v1

    .line 1064
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 1068
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$1DownloadFileTask;->val$file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1069
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 1070
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1072
    :catch_0
    const-string p1, "doInBackground"

    const-string v0, "FileNotFound"

    invoke-static {p1, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 993
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$1DownloadFileTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 5

    .line 1013
    const-string p1, "onPostExecute"

    :try_start_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$1DownloadFileTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1014
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$1DownloadFileTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    .line 1022
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$1DownloadFileTask;->val$file:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1024
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$1DownloadFileTask;->val$file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".mae"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1025
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$1DownloadFileTask;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    invoke-static {v2, v1, v0}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->-$$Nest$mimportDataFromIntent(Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;Ljava/io/InputStream;Z)V

    goto :goto_0

    .line 1026
    :cond_1
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$1DownloadFileTask;->val$file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".mab"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1027
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$1DownloadFileTask;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$1DownloadFileTask;->val$file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1, v0}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->-$$Nest$mrestoreFileFromIntent(Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;Ljava/lang/String;Ljava/io/InputStream;Z)V

    goto :goto_0

    .line 1028
    :cond_2
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$1DownloadFileTask;->val$file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".mabackup"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1029
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$1DownloadFileTask;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$1DownloadFileTask;->val$file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v1, v4}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->-$$Nest$mrestoreFileFromIntent(Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;Ljava/lang/String;Ljava/io/InputStream;Z)V

    goto :goto_0

    .line 1030
    :cond_3
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$1DownloadFileTask;->val$file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".vcf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1031
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$1DownloadFileTask;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    invoke-static {v2, v1}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->-$$Nest$mimportDataFromVCard(Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1036
    :catch_1
    const-string v0, "Bad token"

    invoke-static {p1, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1033
    :catch_2
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$1DownloadFileTask;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    const v2, 0x7f12041c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1034
    const-string v0, "FileNotFound"

    invoke-static {p1, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .line 1006
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$1DownloadFileTask;->dialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$1DownloadFileTask;->val$context:Landroid/content/Context;

    const v2, 0x7f1203d2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1007
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$1DownloadFileTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
