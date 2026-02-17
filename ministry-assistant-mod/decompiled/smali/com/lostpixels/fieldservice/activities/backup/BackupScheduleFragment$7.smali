.class Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;->scheduleDriveBackup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment$7;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 259
    new-instance v0, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment$7;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;

    invoke-direct {v0, v1}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;-><init>(Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory$IRequestAuthorization;)V

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment$7;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lostpixels/fieldservice/backupsync/GDriveBackupFactory;->listCurrentBackups(Landroid/content/Context;Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$IListComplete;)Ljava/util/ArrayList;

    return-void
.end method
