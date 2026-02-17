.class Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions$1BackupFileFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getAllBackupFiles(ZLandroid/content/Context;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BackupFileFilter"
.end annotation


# instance fields
.field final synthetic val$bIncludeAutoBackup:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .line 577
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions$1BackupFileFilter;->val$bIncludeAutoBackup:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    .line 579
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x4

    if-le p1, v0, :cond_2

    const-string p1, ".mabackup"

    .line 580
    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, ".mab"

    .line 581
    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_0
    iget-boolean p1, p0, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions$1BackupFileFilter;->val$bIncludeAutoBackup:Z

    if-nez p1, :cond_1

    const-string p1, "AutoBackup.mabackup"

    .line 582
    invoke-virtual {p2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
