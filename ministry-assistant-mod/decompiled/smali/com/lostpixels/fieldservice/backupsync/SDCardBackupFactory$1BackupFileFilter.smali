.class Lcom/lostpixels/fieldservice/backupsync/SDCardBackupFactory$1BackupFileFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/backupsync/SDCardBackupFactory;->getAllSchedExportFiles(ZLandroid/content/Context;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BackupFileFilter"
.end annotation


# instance fields
.field final synthetic val$bOnlyScheduled:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .line 87
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/backupsync/SDCardBackupFactory$1BackupFileFilter;->val$bOnlyScheduled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 3

    .line 89
    iget-boolean p1, p0, Lcom/lostpixels/fieldservice/backupsync/SDCardBackupFactory$1BackupFileFilter;->val$bOnlyScheduled:Z

    const/4 v0, 0x1

    const-string v1, ".mabackup"

    const-string v2, ".mab"

    if-eqz p1, :cond_1

    const-string p1, "-sched"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    return v0

    .line 92
    :cond_1
    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_0
    return v0
.end method
