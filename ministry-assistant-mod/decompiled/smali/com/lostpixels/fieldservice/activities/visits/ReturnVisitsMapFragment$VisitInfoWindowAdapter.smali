.class Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$VisitInfoWindowAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VisitInfoWindowAdapter"
.end annotation


# instance fields
.field private final dayNameFormat:Ljava/text/SimpleDateFormat;

.field private final mContents:Landroid/view/View;

.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;)V
    .locals 2

    .line 716
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$VisitInfoWindowAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 712
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EE"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$VisitInfoWindowAdapter;->dayNameFormat:Ljava/text/SimpleDateFormat;

    .line 717
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c00f6

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$VisitInfoWindowAdapter;->mContents:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getInfoContents(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;
    .locals 5

    .line 725
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$VisitInfoWindowAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;

    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->-$$Nest$mgetMarkerData(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;Lcom/google/android/gms/maps/model/Marker;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 727
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$VisitInfoWindowAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->realm:Lio/realm/Realm;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$VisitInfoWindowAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;

    iget-object v2, v2, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->realm:Lio/realm/Realm;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPerson(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object v0

    .line 728
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$VisitInfoWindowAdapter;->setData(Lcom/lostpixels/fieldservice/internal/ministry/Person;)V

    .line 730
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$VisitInfoWindowAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->-$$Nest$fgetmMapFrame(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;)Lcom/lostpixels/fieldservice/ui/MapWrapperLayout;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$VisitInfoWindowAdapter;->mContents:Landroid/view/View;

    invoke-virtual {v0, p1, v1}, Lcom/lostpixels/fieldservice/ui/MapWrapperLayout;->setMarkerWithInfoWindow(Lcom/google/android/gms/maps/model/Marker;Landroid/view/View;)V

    .line 731
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$VisitInfoWindowAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->-$$Nest$fgetmInfoButtonListener(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;)Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;->setMarker(Lcom/google/android/gms/maps/model/Marker;)V

    .line 733
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$VisitInfoWindowAdapter;->mContents:Landroid/view/View;

    return-object p1
.end method

.method public getInfoWindow(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public setData(Lcom/lostpixels/fieldservice/internal/ministry/Person;)V
    .locals 12

    if-eqz p1, :cond_c

    .line 744
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$VisitInfoWindowAdapter;->mContents:Landroid/view/View;

    const v1, 0x7f09052f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 745
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$VisitInfoWindowAdapter;->mContents:Landroid/view/View;

    const v2, 0x7f090441

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 746
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$VisitInfoWindowAdapter;->mContents:Landroid/view/View;

    const v3, 0x7f0902d9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 747
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$VisitInfoWindowAdapter;->mContents:Landroid/view/View;

    const v4, 0x7f09066c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 749
    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$VisitInfoWindowAdapter;->mContents:Landroid/view/View;

    const v5, 0x7f09027e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 750
    iget-object v5, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$VisitInfoWindowAdapter;->mContents:Landroid/view/View;

    const v6, 0x7f090621

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 752
    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$VisitInfoWindowAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;

    invoke-static {v6}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->-$$Nest$fgetmimgMoreButton(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;)Landroid/widget/ImageView;

    move-result-object v6

    if-nez v6, :cond_0

    .line 753
    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$VisitInfoWindowAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;

    iget-object v7, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$VisitInfoWindowAdapter;->mContents:Landroid/view/View;

    const v8, 0x7f0903e0

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    invoke-static {v6, v7}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->-$$Nest$fputmimgMoreButton(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;Landroid/widget/ImageView;)V

    .line 758
    :cond_0
    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$VisitInfoWindowAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;

    invoke-static {v6}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->-$$Nest$fgetmInfoButtonListener(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;)Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;

    move-result-object v6

    if-nez v6, :cond_1

    .line 759
    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$VisitInfoWindowAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;

    new-instance v7, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$VisitInfoWindowAdapter$1;

    invoke-static {v6}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->-$$Nest$fgetmimgMoreButton(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;)Landroid/widget/ImageView;

    move-result-object v8

    iget-object v9, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$VisitInfoWindowAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0800c6

    .line 760
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iget-object v10, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$VisitInfoWindowAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;

    invoke-virtual {v10}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0800c8

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-direct {v7, p0, v8, v9, v10}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$VisitInfoWindowAdapter$1;-><init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$VisitInfoWindowAdapter;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-static {v6, v7}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->-$$Nest$fputmInfoButtonListener(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;)V

    .line 773
    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$VisitInfoWindowAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;

    invoke-static {v6}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->-$$Nest$fgetmimgMoreButton(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;)Landroid/widget/ImageView;

    move-result-object v6

    iget-object v7, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$VisitInfoWindowAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;

    invoke-static {v7}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->-$$Nest$fgetmInfoButtonListener(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;)Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 774
    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$VisitInfoWindowAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;

    invoke-static {v6}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->-$$Nest$fgetmimgMoreButton(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;)Landroid/widget/ImageView;

    move-result-object v6

    new-instance v7, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$VisitInfoWindowAdapter$2;

    invoke-direct {v7, p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$VisitInfoWindowAdapter$2;-><init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$VisitInfoWindowAdapter;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 784
    :cond_1
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 785
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getApartment()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getApartment()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 786
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getApartment()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 788
    :cond_2
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x8

    const/4 v9, 0x0

    if-eqz v7, :cond_3

    .line 789
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    .line 790
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 791
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    if-eqz v6, :cond_4

    .line 792
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4

    .line 793
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 794
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 796
    :cond_4
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    if-eqz v7, :cond_5

    .line 798
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 799
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 800
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 802
    :cond_5
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 805
    :goto_1
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 806
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getVisitDate()Ljava/util/Date;

    move-result-object v0

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    const/4 v1, 0x1

    if-eqz v0, :cond_7

    .line 808
    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$VisitInfoWindowAdapter;->dayNameFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v6, v7, v9

    aput-object v0, v7, v1

    const-string v0, "%s %s"

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 810
    :cond_7
    const-string v0, "N/A"

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 813
    :goto_3
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 814
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v9

    const-string v0, "%d"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 816
    :cond_8
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 817
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->toString()Ljava/lang/String;

    move-result-object v0

    .line 818
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 819
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 820
    :cond_9
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->hasVisitType()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 821
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$VisitInfoWindowAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getVisitType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/helpfunctions/ShareUtils;->visitTypeToText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 823
    :cond_a
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 825
    :cond_b
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 827
    :goto_4
    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/UIHelpers;->getHouseholderImage(Lcom/lostpixels/fieldservice/internal/ministry/Person;)I

    move-result p1

    invoke-virtual {v4, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_c
    return-void
.end method
