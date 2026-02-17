.class Lcom/lostpixels/fieldservice/helpfunctions/FileManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/helpfunctions/FileManager$FileOperationInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->saveExternalFilesNoThread(Landroid/content/Context;Lcom/lostpixels/fieldservice/helpfunctions/FileManager$FileOperationInterface;Ljava/io/File;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$func:Lcom/lostpixels/fieldservice/helpfunctions/FileManager$FileOperationInterface;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/helpfunctions/FileManager$FileOperationInterface;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/lostpixels/fieldservice/helpfunctions/FileManager$2;->val$func:Lcom/lostpixels/fieldservice/helpfunctions/FileManager$FileOperationInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileOperationComplete(Z)V
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/lostpixels/fieldservice/helpfunctions/FileManager$2;->val$func:Lcom/lostpixels/fieldservice/helpfunctions/FileManager$FileOperationInterface;

    if-eqz v0, :cond_0

    .line 304
    invoke-interface {v0, p1}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager$FileOperationInterface;->onFileOperationComplete(Z)V

    :cond_0
    if-nez p1, :cond_1

    .line 308
    :try_start_0
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object p1

    const-string v0, "saveExternalFilesNoThread - failed"

    invoke-virtual {p1, v0}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->log(Ljava/lang/String;)V

    .line 309
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object p1

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Failed to save file"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->recordException(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method
