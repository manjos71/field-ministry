.class Lcom/lostpixels/fieldservice/internal/ministry/Address$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/ministry/Address;->addVisits(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/ministry/Address;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/Address;Ljava/util/List;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Address$6;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Address;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Address$6;->val$list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Address$6;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmGet$visitsList()Lio/realm/RealmList;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Address$6;->val$list:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
