.class Lcom/lostpixels/fieldservice/internal/ministry/Address$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/ministry/Address;->insertVisit(ILcom/lostpixels/fieldservice/internal/ministry/Visit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/ministry/Address;

.field final synthetic val$iIndex:I

.field final synthetic val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/Address;ILcom/lostpixels/fieldservice/internal/ministry/Visit;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Address$5;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Address;

    iput p2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Address$5;->val$iIndex:I

    iput-object p3, p0, Lcom/lostpixels/fieldservice/internal/ministry/Address$5;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 3

    .line 248
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Address$5;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmGet$visitsList()Lio/realm/RealmList;

    move-result-object v0

    iget v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Address$5;->val$iIndex:I

    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Address$5;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v0, v1, v2}, Lio/realm/RealmList;->add(ILjava/lang/Object;)V

    return-void
.end method
