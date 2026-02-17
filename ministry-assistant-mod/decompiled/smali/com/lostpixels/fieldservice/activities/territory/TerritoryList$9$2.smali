.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$text:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;Landroid/widget/EditText;Landroid/app/Dialog;)V
    .locals 0

    .line 1260
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9$2;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9$2;->val$text:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9$2;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1263
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9$2;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9$2;->val$text:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setName(Ljava/lang/String;)V

    .line 1265
    :try_start_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1267
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9$2;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1271
    :catch_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9$2;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmListFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->update(Z)V

    .line 1272
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9$2;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->saveFile()V

    return-void
.end method
