.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->onKeyDown(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;)V
    .locals 0

    .line 808
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$12;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 810
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$12;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->-$$Nest$fgetmbSomethingAdded(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 811
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$12;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->-$$Nest$msetResult(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;)V

    .line 812
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$12;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
