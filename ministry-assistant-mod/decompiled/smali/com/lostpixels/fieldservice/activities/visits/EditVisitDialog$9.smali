.class Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)V
    .locals 0

    .line 402
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$9;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 405
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$9;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->showDialogs(I)V

    return-void
.end method
