.class Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$SectionArrayAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$SectionArrayAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$SectionArrayAdapter;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$SectionArrayAdapter;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$SectionArrayAdapter$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$SectionArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 352
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 353
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$SectionArrayAdapter$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$SectionArrayAdapter;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$SectionArrayAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;->realm:Lio/realm/Realm;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$SectionArrayAdapter$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$SectionArrayAdapter;

    iget-object v2, v2, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$SectionArrayAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;

    iget-object v2, v2, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;->realm:Lio/realm/Realm;

    invoke-virtual {p1, v2, v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPerson(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object p1

    .line 354
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$SectionArrayAdapter$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$SectionArrayAdapter;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$SectionArrayAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;->-$$Nest$fgetlistener(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;)Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$OnListFragmentListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$SectionArrayAdapter$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$SectionArrayAdapter;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$SectionArrayAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;->-$$Nest$fgetlistener(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;)Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$OnListFragmentListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$OnListFragmentListener;->onPersonLongClicked(Lcom/lostpixels/fieldservice/internal/ministry/Person;)V

    :cond_0
    return-void
.end method
