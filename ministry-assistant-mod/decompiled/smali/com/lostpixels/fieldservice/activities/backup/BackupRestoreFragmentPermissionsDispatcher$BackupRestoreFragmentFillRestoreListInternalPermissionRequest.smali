.class final Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragmentPermissionsDispatcher$BackupRestoreFragmentFillRestoreListInternalPermissionRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpermissions/dispatcher/PermissionRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragmentPermissionsDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BackupRestoreFragmentFillRestoreListInternalPermissionRequest"
.end annotation


# instance fields
.field private final weakTarget:Ljava/lang/ref/WeakReference;


# direct methods
.method private constructor <init>(Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragmentPermissionsDispatcher$BackupRestoreFragmentFillRestoreListInternalPermissionRequest;->weakTarget:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragmentPermissionsDispatcher-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragmentPermissionsDispatcher$BackupRestoreFragmentFillRestoreListInternalPermissionRequest;-><init>(Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragmentPermissionsDispatcher$BackupRestoreFragmentFillRestoreListInternalPermissionRequest;->weakTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    if-nez v0, :cond_0

    return-void

    .line 64
    :cond_0
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;->showDeniedForPosition()V

    return-void
.end method

.method public proceed()V
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragmentPermissionsDispatcher$BackupRestoreFragmentFillRestoreListInternalPermissionRequest;->weakTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    if-nez v0, :cond_0

    return-void

    .line 57
    :cond_0
    invoke-static {}, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragmentPermissionsDispatcher;->-$$Nest$sfgetPERMISSION_FILLRESTORELISTINTERNAL()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method
