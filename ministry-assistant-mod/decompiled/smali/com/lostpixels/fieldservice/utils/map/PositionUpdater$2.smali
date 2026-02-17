.class Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/utils/map/PositionUpdater;->showUpdatePositionDialog(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Person;Landroid/app/Activity;Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$PositionFoundListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/app/Activity;

.field final synthetic val$listener:Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$PositionFoundListener;

.field final synthetic val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/lostpixels/fieldservice/internal/ministry/Person;Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$PositionFoundListener;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$2;->val$context:Landroid/app/Activity;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$2;->val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$2;->val$listener:Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$PositionFoundListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 205
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 206
    iget-object p1, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$2;->val$context:Landroid/app/Activity;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/utils/NetworkUtils;->testInternetConnection(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 207
    iget-object p1, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$2;->val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$2;->val$context:Landroid/app/Activity;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$2;->val$listener:Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$PositionFoundListener;

    invoke-static {p1, p2, v0}, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater;->updatePositionsFromAddress(Lcom/lostpixels/fieldservice/internal/ministry/Person;Landroid/content/Context;Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$PositionFoundListener;)V

    :cond_0
    return-void
.end method
