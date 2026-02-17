.class Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->saveAndFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;

.field final synthetic val$callback:Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$6;->this$0:Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$6;->val$callback:Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 308
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$6;->this$0:Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->-$$Nest$fgetmMap(Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$6;->val$callback:Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->snapshot(Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;)V

    return-void
.end method
