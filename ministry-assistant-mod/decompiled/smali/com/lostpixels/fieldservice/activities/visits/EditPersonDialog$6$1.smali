.class Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$6;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$6;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$text:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$6;Landroid/widget/EditText;Landroid/app/Dialog;)V
    .locals 0

    .line 500
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$6$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$6;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$6$1;->val$text:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$6$1;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 503
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$6$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$6;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$6;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->access$400(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;)Lio/realm/Realm;

    move-result-object p1

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$6$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$6;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$6;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$6$1;->val$text:Landroid/widget/EditText;

    .line 504
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->addCityIfNew(Landroid/content/Context;Ljava/lang/String;)V

    .line 506
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$6$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$6;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$6;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->-$$Nest$mcreateCityList(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;)V

    .line 507
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$6$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$6;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$6;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->access$500(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;)Lio/realm/Realm;

    move-result-object v0

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getCities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->-$$Nest$msetCitySelection(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;I)V

    .line 508
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$6$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$6;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$6;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->adapterCity:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 510
    :try_start_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$6$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
