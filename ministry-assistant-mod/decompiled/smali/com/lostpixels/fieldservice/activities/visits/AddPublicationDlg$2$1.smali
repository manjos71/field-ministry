.class Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$2;->onLongPress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$2;

.field final synthetic val$iPos:I


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$2;I)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$2$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$2;

    iput p2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$2$1;->val$iPos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 216
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$2$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$2;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;

    iget p2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$2$1;->val$iPos:I

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->-$$Nest$mdeletePublication(Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;I)V

    return-void
.end method
