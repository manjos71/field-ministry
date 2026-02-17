.class Lcom/lostpixels/fieldservice/internal/ministry/Visit$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setTypeNoHistory(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/Visit;I)V
    .locals 0

    .line 676
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$5;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iput p2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$5;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 2

    .line 679
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$5;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$5;->val$type:I

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$visitType(I)V

    return-void
.end method
