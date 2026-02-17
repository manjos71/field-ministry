.class Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$8;->this$0:Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 254
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$8;->this$0:Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method
