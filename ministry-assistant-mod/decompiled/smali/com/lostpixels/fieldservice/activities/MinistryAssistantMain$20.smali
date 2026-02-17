.class Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->showRationaleForStorage(Lpermissions/dispatcher/PermissionRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

.field final synthetic val$request:Lpermissions/dispatcher/PermissionRequest;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;Lpermissions/dispatcher/PermissionRequest;)V
    .locals 0

    .line 1557
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$20;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$20;->val$request:Lpermissions/dispatcher/PermissionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1559
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$20;->val$request:Lpermissions/dispatcher/PermissionRequest;

    invoke-interface {p1}, Lpermissions/dispatcher/PermissionRequest;->cancel()V

    return-void
.end method
