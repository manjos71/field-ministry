.class Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$BackupFile;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BackupFile"
.end annotation


# instance fields
.field final date:Ljava/util/Date;

.field final sFile:Ljava/lang/String;

.field final sID:Ljava/lang/String;

.field final synthetic this$0:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;


# direct methods
.method public constructor <init>(Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V
    .locals 0

    .line 632
    iput-object p1, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$BackupFile;->this$0:Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 633
    iput-object p2, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$BackupFile;->sFile:Ljava/lang/String;

    .line 634
    iput-object p3, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$BackupFile;->date:Ljava/util/Date;

    .line 635
    iput-object p4, p0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$BackupFile;->sID:Ljava/lang/String;

    return-void
.end method
