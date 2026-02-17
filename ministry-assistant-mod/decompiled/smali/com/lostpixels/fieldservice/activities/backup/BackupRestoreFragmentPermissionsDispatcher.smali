.class abstract Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragmentPermissionsDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragmentPermissionsDispatcher$BackupRestoreFragmentFillRestoreListInternalPermissionRequest;
    }
.end annotation


# static fields
.field private static final PERMISSION_FILLRESTORELISTINTERNAL:[Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$sfgetPERMISSION_FILLRESTORELISTINTERNAL()[Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragmentPermissionsDispatcher;->PERMISSION_FILLRESTORELISTINTERNAL:[Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragmentPermissionsDispatcher;->PERMISSION_FILLRESTORELISTINTERNAL:[Ljava/lang/String;

    return-void
.end method

.method static fillRestoreListInternalWithPermissionCheck(Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;)V
    .locals 2

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragmentPermissionsDispatcher;->PERMISSION_FILLRESTORELISTINTERNAL:[Ljava/lang/String;

    invoke-static {v0, v1}, Lpermissions/dispatcher/PermissionUtils;->hasSelfPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;->fillRestoreListInternal()V

    return-void

    .line 23
    :cond_0
    invoke-static {p0, v1}, Lpermissions/dispatcher/PermissionUtils;->shouldShowRequestPermissionRationale(Landroidx/fragment/app/Fragment;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24
    new-instance v0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragmentPermissionsDispatcher$BackupRestoreFragmentFillRestoreListInternalPermissionRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragmentPermissionsDispatcher$BackupRestoreFragmentFillRestoreListInternalPermissionRequest;-><init>(Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragmentPermissionsDispatcher-IA;)V

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;->showRationaleForPosition(Lpermissions/dispatcher/PermissionRequest;)V

    return-void

    :cond_1
    const/4 v0, 0x3

    .line 26
    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method

.method static onRequestPermissionsResult(Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;I[I)V
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    return-void

    .line 35
    :cond_0
    invoke-static {p2}, Lpermissions/dispatcher/PermissionUtils;->verifyPermissions([I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 36
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;->fillRestoreListInternal()V

    return-void

    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;->showDeniedForPosition()V

    return-void
.end method
