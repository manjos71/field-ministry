.class abstract Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlgPermissionsDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final PERMISSION_SETUPCALENDARSPINNER:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    const-string v0, "android.permission.WRITE_CALENDAR"

    const-string v1, "android.permission.READ_CALENDAR"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlgPermissionsDispatcher;->PERMISSION_SETUPCALENDARSPINNER:[Ljava/lang/String;

    return-void
.end method

.method static onRequestPermissionsResult(Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;I[I)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    invoke-static {p2}, Lpermissions/dispatcher/PermissionUtils;->verifyPermissions([I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 30
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->setupCalendarSpinner()V

    :cond_1
    :goto_0
    return-void
.end method

.method static setupCalendarSpinnerWithPermissionCheck(Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;)V
    .locals 2

    .line 18
    sget-object v0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlgPermissionsDispatcher;->PERMISSION_SETUPCALENDARSPINNER:[Ljava/lang/String;

    invoke-static {p0, v0}, Lpermissions/dispatcher/PermissionUtils;->hasSelfPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->setupCalendarSpinner()V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 21
    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method
