.class Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$1fillTask$1BackupComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$1fillTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BackupComparator"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$1fillTask;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$1fillTask;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$1fillTask$1BackupComparator;->this$1:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$1fillTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$BackupInfo;Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$BackupInfo;)I
    .locals 0

    .line 303
    iget-object p1, p1, Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$BackupInfo;->date:Ljava/util/Date;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$BackupInfo;->date:Ljava/util/Date;

    invoke-virtual {p1, p2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p1

    mul-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 301
    check-cast p1, Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$BackupInfo;

    check-cast p2, Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$BackupInfo;

    invoke-virtual {p0, p1, p2}, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$1fillTask$1BackupComparator;->compare(Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$BackupInfo;Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$BackupInfo;)I

    move-result p1

    return p1
.end method
