.class Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView$5;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


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

    .line 162
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView$5;->this$0:Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 6

    .line 166
    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView$5;->this$0:Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->-$$Nest$fgetmFloatingGroupView(Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView$5;->this$0:Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->-$$Nest$fgetmFloatingGroupView(Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isLongClickable()Z

    move-result p1

    if-nez p1, :cond_0

    .line 167
    new-instance v0, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView$5;->this$0:Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->-$$Nest$fgetmFloatingGroupView(Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;)Landroid/view/View;

    move-result-object v1

    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView$5;->this$0:Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->-$$Nest$fgetmFloatingGroupPosition(Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;)I

    move-result p1

    invoke-static {p1}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v2

    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView$5;->this$0:Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->-$$Nest$fgetmAdapter(Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;)Lcom/lostpixels/fieldservice/ui/expandablelistview/WrapperExpandableListAdapter;

    move-result-object p1

    iget-object v4, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView$5;->this$0:Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;

    invoke-static {v4}, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->-$$Nest$fgetmFloatingGroupPosition(Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;)I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/lostpixels/fieldservice/ui/expandablelistview/WrapperExpandableListAdapter;->getGroupId(I)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;-><init>(Landroid/view/View;JJ)V

    .line 168
    const-string p1, "mContextMenuInfo"

    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView$5;->this$0:Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;

    const-class v2, Landroid/widget/AbsListView;

    invoke-static {v2, p1, v1, v0}, Lcom/lostpixels/fieldservice/ui/expandablelistview/ReflectionUtils;->setFieldValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 169
    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView$5;->this$0:Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;

    invoke-virtual {p1}, Landroid/view/View;->showContextMenu()Z

    :cond_0
    return-void
.end method
