.class Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$3;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 291
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$3;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->-$$Nest$fgetmFlinger(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->scrollRight()V

    return-void
.end method
