.class Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$3;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$text:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$3;Landroid/widget/EditText;Landroid/app/Dialog;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$3$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$3;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$3$1;->val$text:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$3$1;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 240
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object p1

    .line 241
    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$3$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$3;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$3;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$3$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$3;

    iget-object v2, v2, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$3;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;

    iget v2, v2, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mePubType:I

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$3$1;->val$text:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->addPublication(Landroid/content/Context;ILjava/lang/String;)V

    .line 242
    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$3$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$3;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$3;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;

    iget v1, v1, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mePubType:I

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$3$1;->val$text:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->getPublicationIndex(ILjava/lang/String;)I

    move-result v0

    .line 243
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$3$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$3;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$3;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->-$$Nest$msetPublicationList(Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;Z)V

    .line 244
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$3$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$3;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$3;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;

    invoke-static {v1, v0}, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->-$$Nest$msetPublicationSelection(Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;I)V

    .line 245
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$3$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$3;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$3;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->-$$Nest$fgetpickerPublications(Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;)Lnet/simonvt/widget/NumberPicker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 246
    invoke-virtual {p1}, Lio/realm/Realm;->close()V

    .line 248
    :try_start_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$3$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
