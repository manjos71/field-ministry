.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->selectImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

.field final synthetic val$alertDialog:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    .line 770
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$11;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$11;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    .line 772
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$11;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    long-to-int p1, p4

    const p2, 0x7f1201b0

    packed-switch p1, :pswitch_data_0

    return-void

    .line 812
    :pswitch_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$11;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->-$$Nest$fgetmTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->setTerritoryCardPath(Ljava/lang/String;)V

    .line 813
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$11;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->-$$Nest$fgetmTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->setTerritoryBorder(Ljava/util/List;)V

    .line 814
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$11;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->-$$Nest$mupdateTerritoryCard(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)V

    return-void

    .line 796
    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$11;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    const-class p3, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 798
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$11;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->-$$Nest$fgetmTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getTerritoryBorder()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$11;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->-$$Nest$fgetmTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getTerritoryBorder()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 799
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 800
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$11;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    invoke-static {p3}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->-$$Nest$fgetmTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object p3

    invoke-virtual {p3}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getTerritoryBorder()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;

    .line 801
    new-instance p5, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p4}, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;->realmGet$latitude()D

    move-result-wide v0

    invoke-virtual {p4}, Lcom/lostpixels/fieldservice/internal/ministry/LatLngEx;->realmGet$longitude()D

    move-result-wide v2

    invoke-direct {p5, v0, v1, v2, v3}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {p2, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 803
    :cond_0
    const-string p3, "TerriotryPoints"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 805
    :cond_1
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$11;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->-$$Nest$fgetmTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object p2

    invoke-static {p2}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getTerritoryCardId(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "TerriotryId"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 806
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$11;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    const/16 p3, 0xa

    invoke-virtual {p2, p1, p3}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 789
    :pswitch_2
    new-instance p1, Landroid/content/Intent;

    const-string p3, "android.intent.action.GET_CONTENT"

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 790
    const-string p3, "*/*"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 791
    const-string p3, "android.intent.category.OPENABLE"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 792
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$11;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    invoke-virtual {p3, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    const/16 p2, 0x9

    invoke-virtual {p3, p1, p2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 779
    :pswitch_3
    new-instance p1, Landroid/content/Intent;

    const-string p3, "android.intent.action.PICK"

    sget-object p4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p1, p3, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 782
    const-string p3, "image/*"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 783
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$11;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    .line 784
    invoke-virtual {p3, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    const/16 p2, 0x8

    .line 783
    invoke-virtual {p3, p1, p2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 775
    :pswitch_4
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$11;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdderPermissionsDispatcher;->takePictureWithPermissionCheck(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
