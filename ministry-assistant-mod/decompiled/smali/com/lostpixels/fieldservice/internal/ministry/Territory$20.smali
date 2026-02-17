.class Lcom/lostpixels/fieldservice/internal/ministry/Territory$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/ministry/Territory;->setDateCreated(Ljava/util/Date;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

.field final synthetic val$dateCreated:Ljava/util/Date;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/Territory;Ljava/util/Date;)V
    .locals 0

    .line 872
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$20;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$20;->val$dateCreated:Ljava/util/Date;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 2

    .line 875
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$20;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$20;->val$dateCreated:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$dateCreated(Ljava/util/Date;)V

    .line 876
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$20;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->setLastUpdated()V

    return-void
.end method
