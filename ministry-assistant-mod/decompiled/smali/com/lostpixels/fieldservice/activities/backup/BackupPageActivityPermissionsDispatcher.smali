.class abstract Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivityPermissionsDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivityPermissionsDispatcher$BackupPageActivityInitDriveProcessPermissionRequest;
    }
.end annotation


# static fields
.field private static final PERMISSION_INITDRIVEPROCESS:[Ljava/lang/String;

.field private static final PERMISSION_INITDRIVEPROCESSACCOUNT:[Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$sfgetPERMISSION_INITDRIVEPROCESS()[Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivityPermissionsDispatcher;->PERMISSION_INITDRIVEPROCESS:[Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 15
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v1, "android.permission.GET_ACCOUNTS"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivityPermissionsDispatcher;->PERMISSION_INITDRIVEPROCESS:[Ljava/lang/String;

    .line 19
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivityPermissionsDispatcher;->PERMISSION_INITDRIVEPROCESSACCOUNT:[Ljava/lang/String;

    return-void
.end method

.method static initDriveProcessAccountWithPermissionCheck(Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;)V
    .locals 2

    .line 37
    sget-object v0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivityPermissionsDispatcher;->PERMISSION_INITDRIVEPROCESSACCOUNT:[Ljava/lang/String;

    invoke-static {p0, v0}, Lpermissions/dispatcher/PermissionUtils;->hasSelfPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;->initDriveProcessAccount()V

    return-void

    :cond_0
    const/4 v1, 0x2

    .line 40
    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method static initDriveProcessWithPermissionCheck(Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;)V
    .locals 2

    .line 25
    sget-object v0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivityPermissionsDispatcher;->PERMISSION_INITDRIVEPROCESS:[Ljava/lang/String;

    invoke-static {p0, v0}, Lpermissions/dispatcher/PermissionUtils;->hasSelfPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;->initDriveProcess()V

    return-void

    .line 28
    :cond_0
    invoke-static {p0, v0}, Lpermissions/dispatcher/PermissionUtils;->shouldShowRequestPermissionRationale(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 29
    new-instance v0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivityPermissionsDispatcher$BackupPageActivityInitDriveProcessPermissionRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivityPermissionsDispatcher$BackupPageActivityInitDriveProcessPermissionRequest;-><init>(Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivityPermissionsDispatcher-IA;)V

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;->showRationaleForInitDriveProcessStorage(Lpermissions/dispatcher/PermissionRequest;)V

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 31
    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method static onRequestPermissionsResult(Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;I[I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-void

    .line 55
    :cond_0
    invoke-static {p2}, Lpermissions/dispatcher/PermissionUtils;->verifyPermissions([I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 56
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;->initDriveProcessAccount()V

    return-void

    .line 58
    :cond_1
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;->showDeniedForInitDriveProcessStorageAccount()V

    return-void

    .line 48
    :cond_2
    invoke-static {p2}, Lpermissions/dispatcher/PermissionUtils;->verifyPermissions([I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 49
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;->initDriveProcess()V

    return-void

    .line 51
    :cond_3
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;->showDeniedForInitDriveProcessStorage()V

    return-void
.end method
