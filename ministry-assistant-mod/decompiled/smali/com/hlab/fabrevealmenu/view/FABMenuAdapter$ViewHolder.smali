.class public Lcom/hlab/fabrevealmenu/view/FABMenuAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public imgIcon:Landroid/widget/ImageView;

.field public item:Lcom/hlab/fabrevealmenu/model/FABMenuItem;

.field final synthetic this$0:Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;

.field public tvTitle:Landroid/widget/TextView;

.field public viewParent:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;Landroid/view/View;)V
    .locals 6

    .line 109
    iput-object p1, p0, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter$ViewHolder;->this$0:Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;

    .line 110
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 111
    sget v0, Lcom/hlab/fabrevealmenu/R$id;->view_parent:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter$ViewHolder;->viewParent:Landroid/widget/RelativeLayout;

    .line 112
    sget v0, Lcom/hlab/fabrevealmenu/R$id;->txt_title_menu_item:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    .line 113
    new-instance v1, Landroid/content/res/ColorStateList;

    const/4 v2, 0x2

    new-array v2, v2, [[I

    const v3, 0x101009e

    filled-new-array {v3}, [I

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, -0x101009e

    filled-new-array {v3}, [I

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {p1}, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;->access$000(Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;)I

    move-result v3

    invoke-static {p1}, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;->access$100(Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;)I

    move-result v5

    filled-new-array {v3, v5}, [I

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 114
    iget-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;->access$200(Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v4, 0x8

    :goto_0
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 115
    sget v0, Lcom/hlab/fabrevealmenu/R$id;->img_menu_item:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter$ViewHolder;->imgIcon:Landroid/widget/ImageView;

    .line 117
    iget-object p2, p0, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter$ViewHolder;->viewParent:Landroid/widget/RelativeLayout;

    invoke-static {p1}, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;->access$300(Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 118
    sget p1, Lcom/hlab/fabrevealmenu/R$drawable;->drawable_bg_selected_round:I

    goto :goto_1

    :cond_1
    sget p1, Lcom/hlab/fabrevealmenu/R$drawable;->drawable_bg_selected:I

    .line 117
    :goto_1
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 120
    iget-object p1, p0, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter$ViewHolder;->viewParent:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object p1, p0, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter$ViewHolder;->viewParent:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter$ViewHolder;->item:Lcom/hlab/fabrevealmenu/model/FABMenuItem;

    invoke-virtual {v0}, Lcom/hlab/fabrevealmenu/model/FABMenuItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter$ViewHolder;->this$0:Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;

    invoke-static {v0}, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;->access$400(Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;)Lcom/hlab/fabrevealmenu/view/FABRevealMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->closeMenu()V

    .line 136
    iget-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter$ViewHolder;->this$0:Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;

    invoke-static {v0}, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;->access$400(Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;)Lcom/hlab/fabrevealmenu/view/FABRevealMenu;

    move-result-object v0

    iget-object v0, v0, Lcom/hlab/fabrevealmenu/view/FABRevealMenu;->menuSelectedListener:Lcom/hlab/fabrevealmenu/listeners/OnFABMenuSelectedListener;

    iget-object v1, p0, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter$ViewHolder;->item:Lcom/hlab/fabrevealmenu/model/FABMenuItem;

    invoke-virtual {v1}, Lcom/hlab/fabrevealmenu/model/FABMenuItem;->getId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/hlab/fabrevealmenu/listeners/OnFABMenuSelectedListener;->onMenuItemSelected(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public setData(Lcom/hlab/fabrevealmenu/model/FABMenuItem;)V
    .locals 2

    .line 125
    iput-object p1, p0, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter$ViewHolder;->item:Lcom/hlab/fabrevealmenu/model/FABMenuItem;

    .line 126
    iget-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter$ViewHolder;->viewParent:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Lcom/hlab/fabrevealmenu/model/FABMenuItem;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 127
    iget-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/hlab/fabrevealmenu/model/FABMenuItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter$ViewHolder;->imgIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/hlab/fabrevealmenu/model/FABMenuItem;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
