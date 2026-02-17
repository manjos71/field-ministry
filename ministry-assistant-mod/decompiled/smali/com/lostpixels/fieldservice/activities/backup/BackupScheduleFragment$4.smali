.class Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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

    .line 162
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment$4;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 166
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-lt p1, v0, :cond_0

    .line 167
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment$4;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;->scheduleBackupNoPermission()V

    return-void

    .line 169
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment$4;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragmentPermissionsDispatcher;->scheduleBackupWithPermissionCheck(Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;)V

    return-void
.end method
