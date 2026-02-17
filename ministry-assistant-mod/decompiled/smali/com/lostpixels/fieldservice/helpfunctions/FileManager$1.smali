.class Lcom/lostpixels/fieldservice/helpfunctions/FileManager$1;
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

    .line 278
    iput-object p1, p0, Lcom/lostpixels/fieldservice/helpfunctions/FileManager$1;->val$func:Lcom/lostpixels/fieldservice/helpfunctions/FileManager$FileOperationInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileOperationComplete(Z)V
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/lostpixels/fieldservice/helpfunctions/FileManager$1;->val$func:Lcom/lostpixels/fieldservice/helpfunctions/FileManager$FileOperationInterface;

    if-eqz v0, :cond_0

    .line 282
    invoke-interface {v0, p1}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager$FileOperationInterface;->onFileOperationComplete(Z)V

    :cond_0
    if-nez p1, :cond_1

    .line 285
    const-string p1, "saveExternalFilesNoThread - failed"

    const-string v0, "Failed to save file"

    invoke-static {p1, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
