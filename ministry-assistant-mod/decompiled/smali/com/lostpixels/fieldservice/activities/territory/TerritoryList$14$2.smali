.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$pos:I

.field final synthetic val$text:Landroid/widget/AutoCompleteTextView;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;ILandroid/widget/AutoCompleteTextView;Landroid/app/Dialog;)V
    .locals 0

    .line 1837
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14$2;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;

    iput p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14$2;->val$pos:I

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14$2;->val$text:Landroid/widget/AutoCompleteTextView;

    iput-object p4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14$2;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1840
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14$2;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14$2;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->access$1400(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;

    move-result-object v0

    iget v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14$2;->val$pos:I

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14$2;->val$text:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->updateStreetName(Lio/realm/Realm;ILjava/lang/String;)V

    .line 1842
    :try_start_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1847
    :catch_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14$2;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->saveFile()V

    .line 1848
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14$2;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmListFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->update(Z)V

    return-void
.end method
