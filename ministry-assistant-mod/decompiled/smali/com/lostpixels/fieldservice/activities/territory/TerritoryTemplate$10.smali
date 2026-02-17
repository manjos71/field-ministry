.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->addStreets(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;

.field final synthetic val$bFinishWhenAdded:Z

.field final synthetic val$bRemoveWhenAdded:Z

.field final synthetic val$res1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;

.field final synthetic val$res2:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;

.field final synthetic val$typeArray:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;Ljava/util/ArrayList;Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;ZZ)V
    .locals 0

    .line 558
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$10;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$10;->val$typeArray:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$10;->val$res1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;

    iput-object p4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$10;->val$res2:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;

    iput-boolean p5, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$10;->val$bRemoveWhenAdded:Z

    iput-boolean p6, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$10;->val$bFinishWhenAdded:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 561
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$10;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$10;->val$typeArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->-$$Nest$fputmeType(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;I)V

    .line 562
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$10;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$10;->val$res1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$10;->val$res2:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;

    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$10;->val$bRemoveWhenAdded:Z

    iget-boolean v2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$10;->val$bFinishWhenAdded:Z

    invoke-static {p1, p2, v0, v1, v2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->-$$Nest$maddMultipleAddresses(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;ZZ)V

    return-void
.end method
