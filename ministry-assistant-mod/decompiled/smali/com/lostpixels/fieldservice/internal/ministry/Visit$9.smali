.class Lcom/lostpixels/fieldservice/internal/ministry/Visit$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setFloor(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

.field final synthetic val$iFloor:I


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/Visit;I)V
    .locals 0

    .line 755
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$9;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iput p2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$9;->val$iFloor:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 2

    .line 758
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$9;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$9;->val$iFloor:I

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$floorNumber(I)V

    .line 759
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$9;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$syncDate(Ljava/util/Date;)V

    return-void
.end method
