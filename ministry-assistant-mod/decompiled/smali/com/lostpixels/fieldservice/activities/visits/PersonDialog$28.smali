.class Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->showBibleStudyDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;Landroid/app/Dialog;)V
    .locals 0

    .line 1769
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$28;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$28;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1773
    :try_start_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$28;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
