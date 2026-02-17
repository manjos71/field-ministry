.class Lcom/lostpixels/fieldservice/internal/ministry/Person$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/ministry/Person;->setVisitDay(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

.field final synthetic val$bVisitDay:Z


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/Person;Z)V
    .locals 0

    .line 551
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$6;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iput-boolean p2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$6;->val$bVisitDay:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 2

    .line 554
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$6;->val$bVisitDay:Z

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$6;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$bestVisitTime()I

    move-result v1

    or-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$bestVisitTime(I)V

    return-void

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$6;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$bestVisitTime()I

    move-result v1

    and-int/lit8 v1, v1, -0x3

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$bestVisitTime(I)V

    return-void
.end method
