.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->addNewApartment(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

.field final synthetic val$edtFloor:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Landroid/widget/EditText;)V
    .locals 0

    .line 2125
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$16;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$16;->val$edtFloor:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 2128
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$16;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$16;->val$edtFloor:Landroid/widget/EditText;

    invoke-static {p1, v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$msubtractEdit(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Landroid/widget/EditText;)V

    return-void
.end method
