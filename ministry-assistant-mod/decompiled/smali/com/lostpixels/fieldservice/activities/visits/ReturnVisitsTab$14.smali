.class Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->showRationaleForPosition(Lpermissions/dispatcher/PermissionRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

.field final synthetic val$request:Lpermissions/dispatcher/PermissionRequest;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;Lpermissions/dispatcher/PermissionRequest;)V
    .locals 0

    .line 1033
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$14;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$14;->val$request:Lpermissions/dispatcher/PermissionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1035
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$14;->val$request:Lpermissions/dispatcher/PermissionRequest;

    invoke-interface {p1}, Lpermissions/dispatcher/PermissionRequest;->cancel()V

    return-void
.end method
