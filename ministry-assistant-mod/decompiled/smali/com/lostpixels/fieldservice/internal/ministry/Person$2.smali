.class Lcom/lostpixels/fieldservice/internal/ministry/Person$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/ministry/Person;->setInterested(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

.field final synthetic val$bInterested:Z


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/Person;Z)V
    .locals 0

    .line 481
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$2;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iput-boolean p2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$2;->val$bInterested:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 2

    .line 484
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$2;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$2;->val$bInterested:Z

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$isInterested(Z)V

    .line 485
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$2;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$date(Ljava/util/Date;)V

    return-void
.end method
