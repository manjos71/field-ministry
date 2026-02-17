.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$5;
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

    .line 431
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$5;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 433
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 434
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$5;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
