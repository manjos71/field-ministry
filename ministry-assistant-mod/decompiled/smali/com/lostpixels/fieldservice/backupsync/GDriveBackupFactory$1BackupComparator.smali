.class Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$1BackupComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;->deleteOldBackups(Landroid/content/Context;Lcom/google/api/services/drive/Drive;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BackupComparator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;)V
    .locals 0

    .line 610
    iput-object p1, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$1BackupComparator;->this$0:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$BackupFile;Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$BackupFile;)I
    .locals 0

    .line 612
    iget-object p1, p1, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$BackupFile;->date:Ljava/util/Date;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$BackupFile;->date:Ljava/util/Date;

    invoke-virtual {p1, p2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 610
    check-cast p1, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$BackupFile;

    check-cast p2, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$BackupFile;

    invoke-virtual {p0, p1, p2}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$1BackupComparator;->compare(Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$BackupFile;Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$BackupFile;)I

    move-result p1

    return p1
.end method
