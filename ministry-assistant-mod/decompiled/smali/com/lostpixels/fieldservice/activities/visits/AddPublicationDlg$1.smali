.class Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$1;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 162
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$1;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->-$$Nest$fgetpickerPublications(Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;)Lnet/simonvt/widget/NumberPicker;

    move-result-object p1

    invoke-virtual {p1}, Lnet/simonvt/widget/NumberPicker;->getValue()I

    move-result p1

    if-ltz p1, :cond_0

    .line 164
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$1;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;

    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->-$$Nest$mdeletePublication(Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;I)V

    :cond_0
    return-void
.end method
