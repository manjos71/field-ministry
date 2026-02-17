.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->showUpdatePositionDialog(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

.field final synthetic val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V
    .locals 0

    .line 3455
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$26;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$26;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 3457
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 3458
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$26;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/utils/NetworkUtils;->testInternetConnection(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3459
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$26;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$26;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$mupdatePositionsFromAddress(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V

    :cond_0
    return-void
.end method
