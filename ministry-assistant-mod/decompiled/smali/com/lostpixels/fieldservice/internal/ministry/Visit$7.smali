.class Lcom/lostpixels/fieldservice/internal/ministry/Visit$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/ministry/Visit;->undoSetType(ZIZLjava/lang/String;Ljava/util/Date;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

.field final synthetic val$oldComent:Ljava/lang/String;

.field final synthetic val$oldDate:Ljava/util/Date;

.field final synthetic val$oldInterested:Z

.field final synthetic val$type:I

.field final synthetic val$undoComment:Z


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/Visit;ILjava/util/Date;ZZLjava/lang/String;)V
    .locals 0

    .line 711
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$7;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iput p2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$7;->val$type:I

    iput-object p3, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$7;->val$oldDate:Ljava/util/Date;

    iput-boolean p4, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$7;->val$oldInterested:Z

    iput-boolean p5, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$7;->val$undoComment:Z

    iput-object p6, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$7;->val$oldComent:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 2

    .line 714
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$7;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$7;->val$type:I

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$visitType(I)V

    .line 715
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$7;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$7;->val$oldDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$date(Ljava/util/Date;)V

    .line 716
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$7;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$7;->val$oldInterested:Z

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$interested(Z)V

    .line 717
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$7;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$numVisits()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$numVisits(I)V

    .line 718
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$7;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$numVisits()I

    move-result v0

    if-gez v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$7;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$numVisits(I)V

    .line 720
    :cond_0
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$7;->val$undoComment:Z

    if-eqz v0, :cond_1

    .line 721
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$7;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$7;->val$oldComent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$comment(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
