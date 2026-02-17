.class abstract Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplatePermissionsDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplatePermissionsDispatcher$TerritoryTemplateGetCurrentLocationsPermissionRequest;
    }
.end annotation


# static fields
.field private static final PERMISSION_GETCURRENTLOCATIONS:[Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$sfgetPERMISSION_GETCURRENTLOCATIONS()[Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplatePermissionsDispatcher;->PERMISSION_GETCURRENTLOCATIONS:[Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 15
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplatePermissionsDispatcher;->PERMISSION_GETCURRENTLOCATIONS:[Ljava/lang/String;

    return-void
.end method

.method static getCurrentLocationsWithPermissionCheck(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;)V
    .locals 2

    .line 21
    sget-object v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplatePermissionsDispatcher;->PERMISSION_GETCURRENTLOCATIONS:[Ljava/lang/String;

    invoke-static {p0, v0}, Lpermissions/dispatcher/PermissionUtils;->hasSelfPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->getCurrentLocations()V

    return-void

    .line 24
    :cond_0
    invoke-static {p0, v0}, Lpermissions/dispatcher/PermissionUtils;->shouldShowRequestPermissionRationale(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 25
    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplatePermissionsDispatcher$TerritoryTemplateGetCurrentLocationsPermissionRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplatePermissionsDispatcher$TerritoryTemplateGetCurrentLocationsPermissionRequest;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplatePermissionsDispatcher-IA;)V

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->showRationaleForPosition(Lpermissions/dispatcher/PermissionRequest;)V

    return-void

    :cond_1
    const/16 v1, 0x17

    .line 27
    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method static onRequestPermissionsResult(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;I[I)V
    .locals 1

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    return-void

    .line 36
    :cond_0
    invoke-static {p2}, Lpermissions/dispatcher/PermissionUtils;->verifyPermissions([I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 37
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->getCurrentLocations()V

    return-void

    .line 39
    :cond_1
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->showDeniedForPosition()V

    return-void
.end method
