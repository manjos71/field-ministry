.class Lcom/lostpixels/fieldservice/internal/ministry/Territory$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/ministry/Territory;->hide(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

.field final synthetic val$bHide:Z


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/Territory;Z)V
    .locals 0

    .line 365
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$6;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    iput-boolean p2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$6;->val$bHide:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 2

    .line 368
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$6;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$6;->val$bHide:Z

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$isHidden(Z)V

    .line 369
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$6;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->setLastUpdated()V

    return-void
.end method
