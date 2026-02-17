.class Lcom/lostpixels/fieldservice/utils/map/PositionUtils$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/utils/map/PositionUtils;->buildAlertMessageNoGps(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUtils$2;->val$context:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 47
    iget-object p1, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUtils$2;->val$context:Landroid/app/Activity;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/utils/map/PositionUtils;->launchGPSOptions(Landroid/app/Activity;)V

    return-void
.end method
