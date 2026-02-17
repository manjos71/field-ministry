.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)V
    .locals 0

    .line 425
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$6;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 427
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$6;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->-$$Nest$mcreateTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)V

    .line 428
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$6;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
