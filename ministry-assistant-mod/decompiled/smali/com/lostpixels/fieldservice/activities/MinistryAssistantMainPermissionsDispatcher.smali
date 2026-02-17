.class abstract Lcom/lostpixels/fieldservice/activities/MinistryAssistantMainPermissionsDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/activities/MinistryAssistantMainPermissionsDispatcher$MinistryAssistantMainInitBackupsOnlyAccountPermissionRequest;,
        Lcom/lostpixels/fieldservice/activities/MinistryAssistantMainPermissionsDispatcher$MinistryAssistantMainDoSyncingPermissionRequest;,
        Lcom/lostpixels/fieldservice/activities/MinistryAssistantMainPermissionsDispatcher$MinistryAssistantMainAskForWritePermissionsPermissionRequest;
    }
.end annotation


# static fields
.field private static final PERMISSION_ASKFORNOTIFICATIONPERMISSIONS:[Ljava/lang/String;

.field private static final PERMISSION_ASKFORWRITEPERMISSIONS:[Ljava/lang/String;

.field private static final PERMISSION_DOSYNCING:[Ljava/lang/String;

.field private static final PERMISSION_INITBACKUPS:[Ljava/lang/String;

.field private static final PERMISSION_INITBACKUPSONLYACCOUNT:[Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$sfgetPERMISSION_ASKFORWRITEPERMISSIONS()[Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMainPermissionsDispatcher;->PERMISSION_ASKFORWRITEPERMISSIONS:[Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetPERMISSION_DOSYNCING()[Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMainPermissionsDispatcher;->PERMISSION_DOSYNCING:[Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetPERMISSION_INITBACKUPSONLYACCOUNT()[Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMainPermissionsDispatcher;->PERMISSION_INITBACKUPSONLYACCOUNT:[Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 15
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMainPermissionsDispatcher;->PERMISSION_ASKFORNOTIFICATIONPERMISSIONS:[Ljava/lang/String;

    .line 19
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMainPermissionsDispatcher;->PERMISSION_ASKFORWRITEPERMISSIONS:[Ljava/lang/String;

    .line 23
    const-string v1, "android.permission.GET_ACCOUNTS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMainPermissionsDispatcher;->PERMISSION_DOSYNCING:[Ljava/lang/String;

    .line 27
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMainPermissionsDispatcher;->PERMISSION_INITBACKUPS:[Ljava/lang/String;

    .line 31
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMainPermissionsDispatcher;->PERMISSION_INITBACKUPSONLYACCOUNT:[Ljava/lang/String;

    return-void
.end method

.method static askForNotificationPermissionsWithPermissionCheck(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)V
    .locals 2

    .line 37
    sget-object v0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMainPermissionsDispatcher;->PERMISSION_ASKFORNOTIFICATIONPERMISSIONS:[Ljava/lang/String;

    invoke-static {p0, v0}, Lpermissions/dispatcher/PermissionUtils;->hasSelfPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->askForNotificationPermissions()V

    return-void

    :cond_0
    const/16 v1, 0x8

    .line 40
    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method static askForWritePermissionsWithPermissionCheck(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)V
    .locals 2

    .line 77
    sget-object v0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMainPermissionsDispatcher;->PERMISSION_ASKFORWRITEPERMISSIONS:[Ljava/lang/String;

    invoke-static {p0, v0}, Lpermissions/dispatcher/PermissionUtils;->hasSelfPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->askForWritePermissions()V

    return-void

    .line 80
    :cond_0
    invoke-static {p0, v0}, Lpermissions/dispatcher/PermissionUtils;->shouldShowRequestPermissionRationale(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    new-instance v0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMainPermissionsDispatcher$MinistryAssistantMainAskForWritePermissionsPermissionRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMainPermissionsDispatcher$MinistryAssistantMainAskForWritePermissionsPermissionRequest;-><init>(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;Lcom/lostpixels/fieldservice/activities/MinistryAssistantMainPermissionsDispatcher-IA;)V

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->showRationaleForStorage(Lpermissions/dispatcher/PermissionRequest;)V

    return-void

    :cond_1
    const/16 v1, 0x9

    .line 83
    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method static doSyncingWithPermissionCheck(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)V
    .locals 2

    .line 65
    sget-object v0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMainPermissionsDispatcher;->PERMISSION_DOSYNCING:[Ljava/lang/String;

    invoke-static {p0, v0}, Lpermissions/dispatcher/PermissionUtils;->hasSelfPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->doSyncing()V

    return-void

    .line 68
    :cond_0
    invoke-static {p0, v0}, Lpermissions/dispatcher/PermissionUtils;->shouldShowRequestPermissionRationale(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    new-instance v0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMainPermissionsDispatcher$MinistryAssistantMainDoSyncingPermissionRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMainPermissionsDispatcher$MinistryAssistantMainDoSyncingPermissionRequest;-><init>(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;Lcom/lostpixels/fieldservice/activities/MinistryAssistantMainPermissionsDispatcher-IA;)V

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->showRationaleForInitDriveProcess(Lpermissions/dispatcher/PermissionRequest;)V

    return-void

    :cond_1
    const/16 v1, 0xa

    .line 71
    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method static initBackupsOnlyAccountWithPermissionCheck(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)V
    .locals 2

    .line 53
    sget-object v0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMainPermissionsDispatcher;->PERMISSION_INITBACKUPSONLYACCOUNT:[Ljava/lang/String;

    invoke-static {p0, v0}, Lpermissions/dispatcher/PermissionUtils;->hasSelfPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->initBackupsOnlyAccount()V

    return-void

    .line 56
    :cond_0
    invoke-static {p0, v0}, Lpermissions/dispatcher/PermissionUtils;->shouldShowRequestPermissionRationale(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    new-instance v0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMainPermissionsDispatcher$MinistryAssistantMainInitBackupsOnlyAccountPermissionRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMainPermissionsDispatcher$MinistryAssistantMainInitBackupsOnlyAccountPermissionRequest;-><init>(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;Lcom/lostpixels/fieldservice/activities/MinistryAssistantMainPermissionsDispatcher-IA;)V

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->showRationaleForInitDriveProcess(Lpermissions/dispatcher/PermissionRequest;)V

    return-void

    :cond_1
    const/16 v1, 0xc

    .line 59
    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method static initBackupsWithPermissionCheck(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)V
    .locals 2

    .line 45
    sget-object v0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMainPermissionsDispatcher;->PERMISSION_INITBACKUPS:[Ljava/lang/String;

    invoke-static {p0, v0}, Lpermissions/dispatcher/PermissionUtils;->hasSelfPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->initBackups()V

    return-void

    :cond_0
    const/16 v1, 0xb

    .line 48
    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method static onRequestPermissionsResult(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;I[I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 102
    :pswitch_0
    invoke-static {p2}, Lpermissions/dispatcher/PermissionUtils;->verifyPermissions([I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->initBackupsOnlyAccount()V

    return-void

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->showDeniedForInitDriveProcess()V

    return-void

    .line 97
    :pswitch_1
    invoke-static {p2}, Lpermissions/dispatcher/PermissionUtils;->verifyPermissions([I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 98
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->initBackups()V

    return-void

    .line 109
    :pswitch_2
    invoke-static {p2}, Lpermissions/dispatcher/PermissionUtils;->verifyPermissions([I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 110
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->doSyncing()V

    return-void

    .line 112
    :cond_1
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->showDeniedForInitDriveProcess()V

    return-void

    .line 116
    :pswitch_3
    invoke-static {p2}, Lpermissions/dispatcher/PermissionUtils;->verifyPermissions([I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 117
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->askForWritePermissions()V

    return-void

    .line 119
    :cond_2
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->showDeniedForStorage()V

    return-void

    .line 92
    :pswitch_4
    invoke-static {p2}, Lpermissions/dispatcher/PermissionUtils;->verifyPermissions([I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 93
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->askForNotificationPermissions()V

    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
