.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$29;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->addAddress(Lcom/lostpixels/fieldservice/internal/ministry/Street;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

.field final synthetic val$alertDialog:Landroidx/appcompat/app/AlertDialog;

.field final synthetic val$streetName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Ljava/lang/String;Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    .line 3604
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$29;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$29;->val$streetName:Ljava/lang/String;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$29;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    long-to-int p1, p4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    const/16 p2, 0x8

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 3617
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$29;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$29;->val$streetName:Ljava/lang/String;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$mopenPhoneTerritoryDialog(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Ljava/lang/String;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    goto :goto_0

    .line 3614
    :cond_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$29;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$29;->val$streetName:Ljava/lang/String;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$mopenRuralDialog(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Ljava/lang/String;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    goto :goto_0

    .line 3611
    :cond_2
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$29;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$29;->val$streetName:Ljava/lang/String;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->openBuildingDialog(Ljava/lang/String;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    goto :goto_0

    .line 3608
    :cond_3
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$29;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$29;->val$streetName:Ljava/lang/String;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$mopenStreetDialog(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Ljava/lang/String;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    .line 3621
    :goto_0
    :try_start_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$29;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
