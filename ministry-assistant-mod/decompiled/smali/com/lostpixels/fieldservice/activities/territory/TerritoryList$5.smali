.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)V
    .locals 0

    .line 675
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$5;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 677
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$5;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    const-class v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 678
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$5;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object v0

    sput-object v0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 679
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$5;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget v1, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->meFilterOptions:I

    sput v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;->meFilterOptions:I

    .line 680
    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetfilterStreet(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;

    move-result-object v0

    sput-object v0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;->filterStreet:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;

    .line 681
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$5;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmFilterDate(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;->mFilterDate:Ljava/util/Calendar;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 683
    sput p2, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;->mSendType:I

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 686
    sput p2, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;->mSendType:I

    .line 687
    :goto_0
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$5;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
