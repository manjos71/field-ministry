.class Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->setUpMapIfNeeded()V
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

    .line 221
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$4;->this$0:Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 2

    .line 224
    const-string v0, "http.agent"

    const-string v1, "Ministry Assistant"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 225
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$4;->this$0:Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;

    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->-$$Nest$fputmMap(Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;Lcom/google/android/gms/maps/GoogleMap;)V

    .line 226
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$4;->this$0:Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->-$$Nest$msetUpMap(Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;)V

    return-void
.end method
