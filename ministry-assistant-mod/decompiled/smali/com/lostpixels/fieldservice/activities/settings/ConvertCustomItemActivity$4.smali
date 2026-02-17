.class Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity$4;->this$0:Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 136
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity$4;->this$0:Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;

    invoke-static {p3}, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;->-$$Nest$fgetNUM_PAGES(Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;)I

    move-result p3

    const/4 v0, 0x1

    sub-int/2addr p3, v0

    if-ne p1, p3, :cond_0

    const/4 p1, 0x0

    cmpl-float p1, p2, p1

    if-lez p1, :cond_0

    .line 137
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity$4;->this$0:Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;

    iget-boolean p2, p1, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;->isOpaque:Z

    if-eqz p2, :cond_1

    .line 138
    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;->pager:Landroidx/viewpager/widget/ViewPager;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 139
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity$4;->this$0:Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;

    iput-boolean p2, p1, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;->isOpaque:Z

    return-void

    .line 142
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity$4;->this$0:Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;

    iget-boolean p2, p1, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;->isOpaque:Z

    if-nez p2, :cond_1

    .line 143
    iget-object p2, p1, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f0602d0

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 144
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity$4;->this$0:Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;

    iput-boolean v0, p1, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;->isOpaque:Z

    :cond_1
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    .line 152
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity$4;->this$0:Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;

    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;->-$$Nest$msetIndicator(Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;I)V

    const/4 v0, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez p1, :cond_2

    .line 154
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity$4;->this$0:Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;->back:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 155
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity$4;->this$0:Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;

    iget-object v3, p1, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;->next:Landroid/widget/ImageButton;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;->-$$Nest$fgetNUM_PAGES(Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;)I

    move-result p1

    if-le p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v3, p1}, Landroid/view/View;->setVisibility(I)V

    .line 156
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity$4;->this$0:Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;

    iget-object v3, p1, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;->done:Landroid/widget/Button;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;->-$$Nest$fgetNUM_PAGES(Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;)I

    move-result p1

    if-ne p1, v0, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 157
    :cond_2
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity$4;->this$0:Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;

    invoke-static {v3}, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;->-$$Nest$fgetNUM_PAGES(Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;)I

    move-result v3

    sub-int/2addr v3, v0

    if-ne p1, v3, :cond_3

    .line 158
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity$4;->this$0:Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;->back:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 159
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity$4;->this$0:Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;->next:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 160
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity$4;->this$0:Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;->done:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 161
    :cond_3
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity$4;->this$0:Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;

    invoke-static {v3}, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;->-$$Nest$fgetNUM_PAGES(Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;)I

    move-result v3

    sub-int/2addr v3, v0

    if-ge p1, v3, :cond_4

    .line 162
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity$4;->this$0:Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;->back:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 163
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity$4;->this$0:Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;->next:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 164
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity$4;->this$0:Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;->done:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 165
    :cond_4
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity$4;->this$0:Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;->-$$Nest$fgetNUM_PAGES(Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;)I

    move-result v0

    if-ne p1, v0, :cond_5

    .line 166
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity$4;->this$0:Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;->-$$Nest$mendTutorial(Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;)V

    :cond_5
    return-void
.end method
