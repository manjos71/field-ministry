.class Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->showRationaleForPosition(Lpermissions/dispatcher/PermissionRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

.field final synthetic val$request:Lpermissions/dispatcher/PermissionRequest;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;Lpermissions/dispatcher/PermissionRequest;)V
    .locals 0

    .line 716
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$10;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$10;->val$request:Lpermissions/dispatcher/PermissionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 718
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$10;->val$request:Lpermissions/dispatcher/PermissionRequest;

    invoke-interface {p1}, Lpermissions/dispatcher/PermissionRequest;->proceed()V

    return-void
.end method
