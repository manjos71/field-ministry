.class Lcom/lostpixels/fieldservice/internal/ministry/Visit$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setType(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/Visit;I)V
    .locals 0

    .line 685
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$6;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iput p2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$6;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 3

    .line 688
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$6;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$visitType()I

    move-result v1

    iput v1, v0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->previousVisitType:I

    .line 690
    iget v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$6;->val$type:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 691
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$6;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$date()Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->previousDate:Ljava/util/Date;

    .line 692
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$6;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$date(Ljava/util/Date;)V

    .line 694
    :cond_0
    iget v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$6;->val$type:I

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 695
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$6;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$interested()Z

    move-result v1

    iput-boolean v1, v0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->previousInterested:Z

    .line 696
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$6;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v0, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$interested(Z)V

    .line 698
    :cond_1
    iget v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$6;->val$type:I

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$6;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$visitType()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 699
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$6;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v0, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$numVisits(I)V

    .line 701
    :cond_2
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$6;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$6;->val$type:I

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$date()Ljava/util/Date;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->-$$Nest$maddVisitTypeToList(Lcom/lostpixels/fieldservice/internal/ministry/Visit;ILjava/util/Date;)V

    .line 703
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$6;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$numVisits()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$numVisits(I)V

    .line 704
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$6;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$6;->val$type:I

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$visitType(I)V

    .line 705
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$6;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$syncDate(Ljava/util/Date;)V

    return-void
.end method
