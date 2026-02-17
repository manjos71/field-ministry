.class Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 101
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method
