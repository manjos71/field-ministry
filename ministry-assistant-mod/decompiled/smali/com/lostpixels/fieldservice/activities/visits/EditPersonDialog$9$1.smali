.class Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/utils/map/PositionReceiver$GetAddressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9;->onPositionFound(Lcom/google/android/gms/maps/model/LatLng;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9;)V
    .locals 0

    .line 743
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddressFound(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    move-object v2, p0

    goto :goto_2

    .line 750
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;

    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9$1$1;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, p0

    move-object v4, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    :try_start_1
    invoke-direct/range {v1 .. v6}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9$1$1;-><init>(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    :goto_0
    move-object p1, v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v2, p0

    goto :goto_0

    .line 771
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 747
    :goto_2
    iget-object p1, v2, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;

    const p2, 0x7f1203f9

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lde/keyboardsurfer/android/widget/crouton/Style;->ALERT:Lde/keyboardsurfer/android/widget/crouton/Style;

    invoke-static {p1, p2, p3}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->showText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)V

    .line 776
    :goto_3
    :try_start_2
    iget-object p1, v2, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 777
    iget-object p1, v2, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_2
    return-void
.end method
