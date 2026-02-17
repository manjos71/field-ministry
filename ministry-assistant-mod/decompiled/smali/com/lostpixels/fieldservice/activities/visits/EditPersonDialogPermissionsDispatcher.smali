.class abstract Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialogPermissionsDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialogPermissionsDispatcher$EditPersonDialogImportPersonPermissionRequest;,
        Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialogPermissionsDispatcher$EditPersonDialogGetAddressFromPosPermissionRequest;
    }
.end annotation


# static fields
.field private static final PERMISSION_GETADDRESSFROMPOS:[Ljava/lang/String;

.field private static final PERMISSION_IMPORTPERSON:[Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$sfgetPERMISSION_GETADDRESSFROMPOS()[Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialogPermissionsDispatcher;->PERMISSION_GETADDRESSFROMPOS:[Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetPERMISSION_IMPORTPERSON()[Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialogPermissionsDispatcher;->PERMISSION_IMPORTPERSON:[Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 15
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialogPermissionsDispatcher;->PERMISSION_GETADDRESSFROMPOS:[Ljava/lang/String;

    .line 19
    const-string v0, "android.permission.READ_CONTACTS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialogPermissionsDispatcher;->PERMISSION_IMPORTPERSON:[Ljava/lang/String;

    return-void
.end method

.method static getAddressFromPosWithPermissionCheck(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;)V
    .locals 2

    .line 37
    sget-object v0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialogPermissionsDispatcher;->PERMISSION_GETADDRESSFROMPOS:[Ljava/lang/String;

    invoke-static {p0, v0}, Lpermissions/dispatcher/PermissionUtils;->hasSelfPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->getAddressFromPos()V

    return-void

    .line 40
    :cond_0
    invoke-static {p0, v0}, Lpermissions/dispatcher/PermissionUtils;->shouldShowRequestPermissionRationale(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    new-instance v0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialogPermissionsDispatcher$EditPersonDialogGetAddressFromPosPermissionRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialogPermissionsDispatcher$EditPersonDialogGetAddressFromPosPermissionRequest;-><init>(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialogPermissionsDispatcher-IA;)V

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->showRationaleForPosition(Lpermissions/dispatcher/PermissionRequest;)V

    return-void

    :cond_1
    const/4 v1, 0x5

    .line 43
    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method static importPersonWithPermissionCheck(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;)V
    .locals 2

    .line 25
    sget-object v0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialogPermissionsDispatcher;->PERMISSION_IMPORTPERSON:[Ljava/lang/String;

    invoke-static {p0, v0}, Lpermissions/dispatcher/PermissionUtils;->hasSelfPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->importPerson()V

    return-void

    .line 28
    :cond_0
    invoke-static {p0, v0}, Lpermissions/dispatcher/PermissionUtils;->shouldShowRequestPermissionRationale(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 29
    new-instance v0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialogPermissionsDispatcher$EditPersonDialogImportPersonPermissionRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialogPermissionsDispatcher$EditPersonDialogImportPersonPermissionRequest;-><init>(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialogPermissionsDispatcher-IA;)V

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->showRationaleForContacts(Lpermissions/dispatcher/PermissionRequest;)V

    return-void

    :cond_1
    const/4 v1, 0x6

    .line 31
    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method static onRequestPermissionsResult(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;I[I)V
    .locals 1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    return-void

    .line 52
    :cond_0
    invoke-static {p2}, Lpermissions/dispatcher/PermissionUtils;->verifyPermissions([I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 53
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->importPerson()V

    return-void

    .line 55
    :cond_1
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->showDeniedForContacts()V

    return-void

    .line 59
    :cond_2
    invoke-static {p2}, Lpermissions/dispatcher/PermissionUtils;->verifyPermissions([I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 60
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->getAddressFromPos()V

    return-void

    .line 62
    :cond_3
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->showDeniedForPosition()V

    return-void
.end method
