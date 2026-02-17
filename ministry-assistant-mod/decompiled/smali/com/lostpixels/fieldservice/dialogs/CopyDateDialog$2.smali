.class Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog$2;->this$0:Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 110
    iget-object p1, p0, Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog$2;->this$0:Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method
