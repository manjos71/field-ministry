.class Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 164
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->-$$Nest$fgetmPositions(Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 165
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->-$$Nest$fgetmMap(Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->clear()V

    .line 166
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->-$$Nest$fputmAddMarker(Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;Z)V

    return-void
.end method
