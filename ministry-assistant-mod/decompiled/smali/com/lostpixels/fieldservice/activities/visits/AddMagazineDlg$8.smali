.class Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$8;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 314
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$8;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    return-void
.end method
