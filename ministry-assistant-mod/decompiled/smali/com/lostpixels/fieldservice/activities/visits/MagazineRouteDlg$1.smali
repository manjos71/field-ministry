.class Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg$1;->this$0:Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 145
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg$1;->this$0:Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    return-void
.end method
