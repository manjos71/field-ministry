.class Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5;Landroid/app/Dialog;)V
    .locals 0

    .line 555
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5$7;->this$1:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5$7;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 559
    :try_start_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5$7;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
