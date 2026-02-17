.class Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->setCountStudy(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

.field final synthetic val$countStudy:Z


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;Z)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo$2;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    iput-boolean p2, p0, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo$2;->val$countStudy:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo$2;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo$2;->val$countStudy:Z

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmSet$countStudy(Z)V

    return-void
.end method
