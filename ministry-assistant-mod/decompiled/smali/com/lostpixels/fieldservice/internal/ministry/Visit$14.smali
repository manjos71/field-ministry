.class Lcom/lostpixels/fieldservice/internal/ministry/Visit$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setParent(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

.field final synthetic val$parent:Lcom/lostpixels/fieldservice/internal/ministry/Address;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/Visit;Lcom/lostpixels/fieldservice/internal/ministry/Address;)V
    .locals 0

    .line 877
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$14;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$14;->val$parent:Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 2

    .line 880
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$14;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$parentRef()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 882
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$14;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$14;->val$parent:Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$parentRef(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    return-void

    .line 881
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
