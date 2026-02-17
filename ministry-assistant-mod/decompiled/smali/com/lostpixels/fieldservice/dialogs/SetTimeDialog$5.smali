.class Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog$5;->this$0:Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 124
    iget-object p1, p0, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog$5;->this$0:Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method
