.class Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$3;
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

.field final synthetic val$realm:Lio/realm/Realm;


# direct methods
.method constructor <init>(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Person;Landroid/app/Activity;Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$PositionFoundListener;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$3;->val$realm:Lio/realm/Realm;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$3;->val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$3;->val$context:Landroid/app/Activity;

    iput-object p4, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$3;->val$listener:Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$PositionFoundListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 200
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 201
    iget-object p1, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$3;->val$realm:Lio/realm/Realm;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$3;->val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$3;->val$context:Landroid/app/Activity;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$3;->val$listener:Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$PositionFoundListener;

    invoke-static {p1, p2, v0, v1}, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater;->updatePosition(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Person;Landroid/app/Activity;Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$PositionFoundListener;)V

    return-void
.end method
