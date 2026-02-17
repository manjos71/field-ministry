.class Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->setScriptures(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

.field final synthetic val$scriptures:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;Ljava/lang/String;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo$9;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo$9;->val$scriptures:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo$9;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo$9;->val$scriptures:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->realmSet$scriptures(Ljava/lang/String;)V

    return-void
.end method
