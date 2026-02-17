.class public Lcom/lostpixels/fieldservice/adapters/CommandListAdaper;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/adapters/CommandListAdaper$CommandViewHolder;
    }
.end annotation


# instance fields
.field final mCommandItemLayout:I

.field final mCommandLayout:I

.field final mContext:Landroid/app/Activity;

.field final mItems:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 1

    const v0, 0x7f0c0030

    .line 31
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 32
    iput-object p2, p0, Lcom/lostpixels/fieldservice/adapters/CommandListAdaper;->mItems:Ljava/util/ArrayList;

    .line 33
    iput-object p1, p0, Lcom/lostpixels/fieldservice/adapters/CommandListAdaper;->mContext:Landroid/app/Activity;

    const p1, 0x7f0c005d

    .line 34
    iput p1, p0, Lcom/lostpixels/fieldservice/adapters/CommandListAdaper;->mCommandLayout:I

    .line 35
    iput v0, p0, Lcom/lostpixels/fieldservice/adapters/CommandListAdaper;->mCommandItemLayout:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;I)V
    .locals 1

    const v0, 0x7f0c0030

    .line 39
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 40
    iput-object p2, p0, Lcom/lostpixels/fieldservice/adapters/CommandListAdaper;->mItems:Ljava/util/ArrayList;

    .line 41
    iput-object p1, p0, Lcom/lostpixels/fieldservice/adapters/CommandListAdaper;->mContext:Landroid/app/Activity;

    .line 42
    iput p3, p0, Lcom/lostpixels/fieldservice/adapters/CommandListAdaper;->mCommandLayout:I

    .line 43
    iput v0, p0, Lcom/lostpixels/fieldservice/adapters/CommandListAdaper;->mCommandItemLayout:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;II)V
    .locals 1

    const v0, 0x7f0c0030

    .line 47
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 48
    iput-object p2, p0, Lcom/lostpixels/fieldservice/adapters/CommandListAdaper;->mItems:Ljava/util/ArrayList;

    .line 49
    iput-object p1, p0, Lcom/lostpixels/fieldservice/adapters/CommandListAdaper;->mContext:Landroid/app/Activity;

    .line 50
    iput p3, p0, Lcom/lostpixels/fieldservice/adapters/CommandListAdaper;->mCommandLayout:I

    .line 51
    iput p4, p0, Lcom/lostpixels/fieldservice/adapters/CommandListAdaper;->mCommandItemLayout:I

    return-void
.end method


# virtual methods
.method public getItemId(I)J
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/lostpixels/fieldservice/adapters/CommandListAdaper;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/lostpixels/fieldservice/adapters/CommandListAdaper;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;->getCommandID()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    :cond_0
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/lostpixels/fieldservice/adapters/CommandListAdaper;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/ui/CommandListItem;

    .line 71
    invoke-interface {p1}, Lcom/lostpixels/fieldservice/ui/CommandListItem;->isSection()Z

    move-result p1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 77
    iget-object p3, p0, Lcom/lostpixels/fieldservice/adapters/CommandListAdaper;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/ui/CommandListItem;

    if-eqz p1, :cond_4

    .line 79
    invoke-interface {p1}, Lcom/lostpixels/fieldservice/ui/CommandListItem;->isSection()Z

    move-result p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    if-nez p2, :cond_0

    .line 81
    new-instance p2, Lcom/lostpixels/fieldservice/adapters/CommandListAdaper$CommandViewHolder;

    invoke-direct {p2}, Lcom/lostpixels/fieldservice/adapters/CommandListAdaper$CommandViewHolder;-><init>()V

    .line 82
    iget-object p3, p0, Lcom/lostpixels/fieldservice/adapters/CommandListAdaper;->mContext:Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p3

    .line 83
    iget v2, p0, Lcom/lostpixels/fieldservice/adapters/CommandListAdaper;->mCommandLayout:I

    invoke-virtual {p3, v2, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f0904c3

    .line 84
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/lostpixels/fieldservice/adapters/CommandListAdaper$CommandViewHolder;->strCmd:Landroid/widget/TextView;

    .line 85
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v3, p3

    move-object p3, p2

    move-object p2, v3

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/lostpixels/fieldservice/adapters/CommandListAdaper$CommandViewHolder;

    .line 90
    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    invoke-virtual {p2, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 v0, 0x0

    .line 92
    invoke-virtual {p2, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 94
    check-cast p1, Lcom/lostpixels/fieldservice/ui/CommandListSectionItem;

    .line 95
    iget-object p3, p3, Lcom/lostpixels/fieldservice/adapters/CommandListAdaper$CommandViewHolder;->strCmd:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/ui/CommandListSectionItem;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2

    :cond_1
    if-nez p2, :cond_2

    .line 98
    new-instance p2, Lcom/lostpixels/fieldservice/adapters/CommandListAdaper$CommandViewHolder;

    invoke-direct {p2}, Lcom/lostpixels/fieldservice/adapters/CommandListAdaper$CommandViewHolder;-><init>()V

    .line 99
    iget-object p3, p0, Lcom/lostpixels/fieldservice/adapters/CommandListAdaper;->mContext:Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p3

    .line 100
    iget v2, p0, Lcom/lostpixels/fieldservice/adapters/CommandListAdaper;->mCommandItemLayout:I

    invoke-virtual {p3, v2, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f0902ac

    .line 101
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/lostpixels/fieldservice/adapters/CommandListAdaper$CommandViewHolder;->strCmd:Landroid/widget/TextView;

    const v0, 0x7f0902b3

    .line 102
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/lostpixels/fieldservice/adapters/CommandListAdaper$CommandViewHolder;->image:Landroid/widget/ImageView;

    .line 103
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 105
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/lostpixels/fieldservice/adapters/CommandListAdaper$CommandViewHolder;

    move-object v3, p3

    move-object p3, p2

    move-object p2, v3

    .line 108
    :goto_1
    check-cast p1, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    .line 109
    iget-object v0, p2, Lcom/lostpixels/fieldservice/adapters/CommandListAdaper$CommandViewHolder;->strCmd:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;->getImageID()I

    move-result v0

    if-eqz v0, :cond_3

    .line 111
    iget-object p2, p2, Lcom/lostpixels/fieldservice/adapters/CommandListAdaper$CommandViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;->getImageID()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p3

    .line 113
    :cond_3
    iget-object p1, p2, Lcom/lostpixels/fieldservice/adapters/CommandListAdaper$CommandViewHolder;->image:Landroid/widget/ImageView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-object p3

    :cond_4
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
