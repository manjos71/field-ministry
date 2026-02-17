.class final Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialogPermissionsDispatcher$EditPersonDialogGetAddressFromPosPermissionRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpermissions/dispatcher/PermissionRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialogPermissionsDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EditPersonDialogGetAddressFromPosPermissionRequest"
.end annotation


# instance fields
.field private final weakTarget:Ljava/lang/ref/WeakReference;


# direct methods
.method private constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;)V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialogPermissionsDispatcher$EditPersonDialogGetAddressFromPosPermissionRequest;->weakTarget:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialogPermissionsDispatcher-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialogPermissionsDispatcher$EditPersonDialogGetAddressFromPosPermissionRequest;-><init>(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialogPermissionsDispatcher$EditPersonDialogGetAddressFromPosPermissionRequest;->weakTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;

    if-nez v0, :cond_0

    return-void

    .line 110
    :cond_0
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->showDeniedForPosition()V

    return-void
.end method

.method public proceed()V
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialogPermissionsDispatcher$EditPersonDialogGetAddressFromPosPermissionRequest;->weakTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;

    if-nez v0, :cond_0

    return-void

    .line 103
    :cond_0
    invoke-static {}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialogPermissionsDispatcher;->-$$Nest$sfgetPERMISSION_GETADDRESSFROMPOS()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method
