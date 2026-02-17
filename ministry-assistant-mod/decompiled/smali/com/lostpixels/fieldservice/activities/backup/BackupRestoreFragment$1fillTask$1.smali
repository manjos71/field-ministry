.class Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$1fillTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IListComplete;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$1fillTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$1fillTask;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$1fillTask;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$1fillTask$1;->this$1:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$1fillTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onListComplete(Z)V
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$1fillTask$1;->this$1:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$1fillTask;

    iput-boolean p1, v0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$1fillTask;->bOK:Z

    return-void
.end method
