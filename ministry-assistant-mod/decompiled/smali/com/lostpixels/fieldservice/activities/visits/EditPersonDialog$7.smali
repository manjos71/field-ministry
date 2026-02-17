.class Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->showRationaleForPosition(Lpermissions/dispatcher/PermissionRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;

.field final synthetic val$request:Lpermissions/dispatcher/PermissionRequest;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;Lpermissions/dispatcher/PermissionRequest;)V
    .locals 0

    .line 710
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$7;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$7;->val$request:Lpermissions/dispatcher/PermissionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 712
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$7;->val$request:Lpermissions/dispatcher/PermissionRequest;

    invoke-interface {p1}, Lpermissions/dispatcher/PermissionRequest;->cancel()V

    return-void
.end method
