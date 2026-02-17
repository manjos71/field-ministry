.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/adapters/SeparatedButtonListAdapter$OnButtonTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->getVisitAdapter(Ljava/util/List;Ljava/lang/String;J)Landroid/widget/BaseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;)V
    .locals 0

    .line 469
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$5;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTap(Lcom/lostpixels/fieldservice/adapters/SeparatedButtonListAdapter;I)V
    .locals 4

    .line 474
    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;->getHeaderItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    if-eqz v0, :cond_0

    .line 476
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$5;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->-$$Nest$fgetlistener(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnListItemClickListener;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnListItemClickListener;

    invoke-interface {p1, v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnListItemClickListener;->onVisitLongClicked(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V

    return-void

    .line 479
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v0

    const-string v1, "Position %d, sections %d"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;->getNumSections()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 p2, 0x1

    aput-object p1, v2, p2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->log(Ljava/lang/String;)V

    .line 480
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object p1

    new-instance p2, Ljava/lang/Exception;

    const-string v0, "Visit is null"

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->recordException(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
