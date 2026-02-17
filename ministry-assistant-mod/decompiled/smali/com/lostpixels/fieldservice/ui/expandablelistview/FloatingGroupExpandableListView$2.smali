.class Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 116
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView$2;->this$0:Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 122
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView$2;->this$0:Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->-$$Nest$fgetmOnGroupClickListener(Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;)Landroid/widget/ExpandableListView$OnGroupClickListener;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView$2;->this$0:Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->-$$Nest$fgetmOnGroupClickListener(Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;)Landroid/widget/ExpandableListView$OnGroupClickListener;

    move-result-object v2

    iget-object v3, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView$2;->this$0:Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;

    invoke-static {v3}, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->-$$Nest$fgetmFloatingGroupView(Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;)Landroid/view/View;

    move-result-object v4

    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView$2;->this$0:Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->-$$Nest$fgetmFloatingGroupPosition(Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;)I

    move-result v5

    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView$2;->this$0:Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->-$$Nest$fgetmAdapter(Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;)Lcom/lostpixels/fieldservice/ui/expandablelistview/WrapperExpandableListAdapter;

    move-result-object v0

    iget-object v6, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView$2;->this$0:Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;

    invoke-static {v6}, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->-$$Nest$fgetmFloatingGroupPosition(Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/lostpixels/fieldservice/ui/expandablelistview/WrapperExpandableListAdapter;->getGroupId(I)J

    move-result-wide v6

    invoke-interface/range {v2 .. v7}, Landroid/widget/ExpandableListView$OnGroupClickListener;->onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z

    move-result v0

    xor-int/2addr v1, v0

    :cond_0
    if-eqz v1, :cond_2

    .line 127
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView$2;->this$0:Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->-$$Nest$fgetmAdapter(Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;)Lcom/lostpixels/fieldservice/ui/expandablelistview/WrapperExpandableListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView$2;->this$0:Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->-$$Nest$fgetmFloatingGroupPosition(Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/ui/expandablelistview/WrapperExpandableListAdapter;->isGroupExpanded(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView$2;->this$0:Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->-$$Nest$fgetmFloatingGroupPosition(Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    goto :goto_0

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView$2;->this$0:Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->-$$Nest$fgetmFloatingGroupPosition(Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 133
    :goto_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView$2;->this$0:Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->-$$Nest$fgetmFloatingGroupPosition(Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setSelectedGroup(I)V

    :cond_2
    return-void
.end method
