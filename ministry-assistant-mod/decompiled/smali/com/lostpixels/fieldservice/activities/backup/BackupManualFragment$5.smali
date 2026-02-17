.class Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment$5;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 179
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-lt p1, v0, :cond_0

    .line 180
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment$5;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;->createBackupNoPermission()V

    return-void

    .line 182
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment$5;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragmentPermissionsDispatcher;->createBackupWithPermissionCheck(Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;)V

    return-void
.end method
