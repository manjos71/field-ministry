.class Lcom/lostpixels/fieldservice/internal/ministry/Visit$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setVisitInterested(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

.field final synthetic val$interested:Z


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/Visit;Z)V
    .locals 0

    .line 987
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$21;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iput-boolean p2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$21;->val$interested:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 3

    .line 990
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$21;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$21;->val$interested:Z

    iput-boolean v1, v0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->previousInterested:Z

    .line 991
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$visitType()I

    move-result v1

    iput v1, v0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->previousVisitType:I

    .line 992
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$21;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$date()Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->previousDate:Ljava/util/Date;

    .line 994
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$21;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$21;->val$interested:Z

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$interested(Z)V

    .line 995
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$21;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$visitType()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x3

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$21;->val$interested:Z

    if-eqz v0, :cond_0

    .line 996
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$21;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$visitType(I)V

    goto :goto_0

    .line 997
    :cond_0
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$21;->val$interested:Z

    if-nez v0, :cond_1

    .line 998
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$21;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v0, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$visitType(I)V

    .line 999
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$21;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$date(Ljava/util/Date;)V

    .line 1001
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$21;->val$interested:Z

    if-nez v0, :cond_2

    .line 1002
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$21;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$date()Ljava/util/Date;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->-$$Nest$maddVisitTypeToList(Lcom/lostpixels/fieldservice/internal/ministry/Visit;ILjava/util/Date;)V

    .line 1004
    :cond_2
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$21;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$syncDate(Ljava/util/Date;)V

    return-void
.end method
