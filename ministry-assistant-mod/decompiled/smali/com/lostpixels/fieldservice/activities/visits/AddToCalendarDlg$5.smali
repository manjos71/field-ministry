.class Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg$5;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 210
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg$5;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->addToCalendarFunc()V

    return-void
.end method
