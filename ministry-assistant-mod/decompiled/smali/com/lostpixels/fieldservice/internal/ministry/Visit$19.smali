.class Lcom/lostpixels/fieldservice/internal/ministry/Visit$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setHouseHolder(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

.field final synthetic val$houseHolder:J


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/Visit;J)V
    .locals 0

    .line 959
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$19;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iput-wide p2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$19;->val$houseHolder:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 3

    .line 962
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$19;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-wide v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$19;->val$houseHolder:J

    invoke-virtual {v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$houseHolder(J)V

    .line 963
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$19;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$date(Ljava/util/Date;)V

    .line 964
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$19;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$syncDate(Ljava/util/Date;)V

    return-void
.end method
