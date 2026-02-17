.class Lcom/lostpixels/fieldservice/internal/ministry/Territory$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/ministry/Territory;->setRegion(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

.field final synthetic val$region:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/Territory;Ljava/lang/String;)V
    .locals 0

    .line 838
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$18;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$18;->val$region:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 2

    .line 841
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$18;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$18;->val$region:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$region(Ljava/lang/String;)V

    .line 842
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$18;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->setLastUpdated()V

    return-void
.end method
