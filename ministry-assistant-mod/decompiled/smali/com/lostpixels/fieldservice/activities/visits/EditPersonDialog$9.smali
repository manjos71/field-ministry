.class Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$PositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->getAddressFromPos()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;

.field final synthetic val$bShowNumberFirst:Z

.field final synthetic val$dialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;ZLandroid/app/ProgressDialog;)V
    .locals 0

    .line 736
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;

    iput-boolean p2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9;->val$bShowNumberFirst:Z

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9;->val$dialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositionFound(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 740
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->-$$Nest$fgetperson(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->-$$Nest$fgetperson(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->-$$Nest$fgetperson(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 743
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9$1;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9$1;-><init>(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9;)V

    invoke-static {v0, p1, v1}, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver;->getAddressFromLatLong(Landroid/content/Context;Lcom/google/android/gms/maps/model/LatLng;Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$GetAddressListener;)V

    return-void

    .line 785
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 786
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method
