.class public interface abstract Lcom/lostpixels/fieldservice/backupsync/IBackupFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$BackupInfo;,
        Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IListComplete;,
        Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IRemoveComplete;,
        Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IRestoreComplete;,
        Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IBackupComplete;
    }
.end annotation


# virtual methods
.method public abstract removeBackup(Ljava/lang/String;Landroid/content/Context;Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IRemoveComplete;)V
.end method

.method public abstract restoreBackup(Ljava/lang/String;Landroid/content/Context;Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IRestoreComplete;)V
.end method
