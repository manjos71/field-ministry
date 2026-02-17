.class Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->addReturnVisit(Lio/realm/Realm;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

.field final synthetic val$id:J

.field final synthetic val$realm:Lio/realm/Realm;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;Lio/realm/Realm;J)V
    .locals 0

    .line 1176
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$25;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$25;->val$realm:Lio/realm/Realm;

    iput-wide p3, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$25;->val$id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 4

    .line 1179
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$25;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$25;->val$realm:Lio/realm/Realm;

    iget-wide v2, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$25;->val$id:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPerson(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1181
    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setReturnVisit(Z)V

    :cond_0
    return-void
.end method
