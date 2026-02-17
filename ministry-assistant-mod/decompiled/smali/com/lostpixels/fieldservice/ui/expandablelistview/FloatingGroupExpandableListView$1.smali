.class Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView$1;->this$0:Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView$1;->this$0:Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->-$$Nest$fgetmOnScrollListener(Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView$1;->this$0:Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->-$$Nest$fgetmOnScrollListener(Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 110
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView$1;->this$0:Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->-$$Nest$fgetmFloatingGroupEnabled(Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView$1;->this$0:Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->-$$Nest$fgetmAdapter(Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;)Lcom/lostpixels/fieldservice/ui/expandablelistview/WrapperExpandableListAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView$1;->this$0:Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->-$$Nest$fgetmAdapter(Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;)Lcom/lostpixels/fieldservice/ui/expandablelistview/WrapperExpandableListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/ui/expandablelistview/WrapperExpandableListAdapter;->getGroupCount()I

    move-result p1

    if-lez p1, :cond_1

    if-lez p3, :cond_1

    .line 111
    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView$1;->this$0:Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->-$$Nest$mcreateFloatingGroupView(Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;I)V

    :cond_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView$1;->this$0:Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->-$$Nest$fgetmOnScrollListener(Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView$1;->this$0:Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->-$$Nest$fgetmOnScrollListener(Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_0
    return-void
.end method
