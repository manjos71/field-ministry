.class Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView$4;
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

    .line 150
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView$4;->this$0:Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView$4;->this$0:Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 155
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView$4;->this$0:Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->-$$Nest$fgetmFloatingGroupView(Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView$4;->this$0:Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;->-$$Nest$fgetmFloatingGroupView(Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView$4;->this$0:Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
