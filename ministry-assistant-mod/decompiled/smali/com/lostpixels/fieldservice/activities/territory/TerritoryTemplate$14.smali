.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->displayStreetList()V
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

    .line 843
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$14;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 845
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$14;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->-$$Nest$fgetmStreetName(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;)Landroid/widget/AutoCompleteTextView;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$14;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->-$$Nest$fgetmGPSlstStreets(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
