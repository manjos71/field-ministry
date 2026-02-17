.class Lcom/lostpixels/fieldservice/utils/map/NavigationUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/utils/map/NavigationUtils;->navigateTo(Lcom/google/android/gms/maps/model/LatLng;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/app/Activity;

.field final synthetic val$gp:Lcom/google/android/gms/maps/model/LatLng;

.field final synthetic val$installedMapApps:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/google/android/gms/maps/model/LatLng;Landroid/app/Activity;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/lostpixels/fieldservice/utils/map/NavigationUtils$1;->val$installedMapApps:Ljava/util/List;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/utils/map/NavigationUtils$1;->val$gp:Lcom/google/android/gms/maps/model/LatLng;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/utils/map/NavigationUtils$1;->val$context:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 42
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 43
    iget-object p1, p0, Lcom/lostpixels/fieldservice/utils/map/NavigationUtils$1;->val$installedMapApps:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "Google"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 44
    iget-object p1, p0, Lcom/lostpixels/fieldservice/utils/map/NavigationUtils$1;->val$gp:Lcom/google/android/gms/maps/model/LatLng;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/utils/map/NavigationUtils$1;->val$context:Landroid/app/Activity;

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/utils/map/NavigationUtils;->-$$Nest$smnavigateToUsingMaps(Lcom/google/android/gms/maps/model/LatLng;Landroid/app/Activity;)V

    return-void

    .line 45
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/utils/map/NavigationUtils$1;->val$installedMapApps:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, ".me"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 46
    iget-object p1, p0, Lcom/lostpixels/fieldservice/utils/map/NavigationUtils$1;->val$gp:Lcom/google/android/gms/maps/model/LatLng;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/utils/map/NavigationUtils$1;->val$context:Landroid/app/Activity;

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/utils/map/NavigationUtils;->-$$Nest$smnavigateToUsingMapsMe(Lcom/google/android/gms/maps/model/LatLng;Landroid/app/Activity;)V

    return-void

    .line 47
    :cond_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/utils/map/NavigationUtils$1;->val$installedMapApps:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "Waze"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 48
    iget-object p1, p0, Lcom/lostpixels/fieldservice/utils/map/NavigationUtils$1;->val$gp:Lcom/google/android/gms/maps/model/LatLng;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/utils/map/NavigationUtils$1;->val$context:Landroid/app/Activity;

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/utils/map/NavigationUtils;->-$$Nest$smnavigateToUsingWaze(Lcom/google/android/gms/maps/model/LatLng;Landroid/app/Activity;)V

    return-void

    .line 49
    :cond_2
    iget-object p1, p0, Lcom/lostpixels/fieldservice/utils/map/NavigationUtils$1;->val$installedMapApps:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p2, "2gis"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 50
    iget-object p1, p0, Lcom/lostpixels/fieldservice/utils/map/NavigationUtils$1;->val$gp:Lcom/google/android/gms/maps/model/LatLng;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/utils/map/NavigationUtils$1;->val$context:Landroid/app/Activity;

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/utils/map/NavigationUtils;->-$$Nest$smnavigateToUsing2gis(Lcom/google/android/gms/maps/model/LatLng;Landroid/app/Activity;)V

    :cond_3
    return-void
.end method
