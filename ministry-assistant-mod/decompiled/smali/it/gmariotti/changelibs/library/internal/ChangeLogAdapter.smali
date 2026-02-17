.class public Lit/gmariotti/changelibs/library/internal/ChangeLogAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lit/gmariotti/changelibs/library/internal/ChangeLogAdapter$ViewHolderRow;,
        Lit/gmariotti/changelibs/library/internal/ChangeLogAdapter$ViewHolderHeader;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mRowHeaderLayoutId:I

.field private mRowLayoutId:I

.field private mStringVersionHeader:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 42
    sget p2, Lit/gmariotti/changelibs/library/Constants;->mRowLayoutId:I

    iput p2, p0, Lit/gmariotti/changelibs/library/internal/ChangeLogAdapter;->mRowLayoutId:I

    .line 43
    sget p2, Lit/gmariotti/changelibs/library/Constants;->mRowHeaderLayoutId:I

    iput p2, p0, Lit/gmariotti/changelibs/library/internal/ChangeLogAdapter;->mRowHeaderLayoutId:I

    .line 44
    sget p2, Lit/gmariotti/changelibs/library/Constants;->mStringVersionHeader:I

    iput p2, p0, Lit/gmariotti/changelibs/library/internal/ChangeLogAdapter;->mStringVersionHeader:I

    .line 53
    iput-object p1, p0, Lit/gmariotti/changelibs/library/internal/ChangeLogAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 0

    .line 181
    invoke-interface {p0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lit/gmariotti/changelibs/library/internal/ChangeLogRow;

    invoke-virtual {p1}, Lit/gmariotti/changelibs/library/internal/ChangeLogRow;->isHeader()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 67
    invoke-interface {p0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/gmariotti/changelibs/library/internal/ChangeLogRow;

    .line 69
    invoke-virtual {p0, p1}, Lit/gmariotti/changelibs/library/internal/ChangeLogAdapter;->getItemViewType(I)I

    move-result p1

    .line 71
    iget-object v1, p0, Lit/gmariotti/changelibs/library/internal/ChangeLogAdapter;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz p1, :cond_8

    const/4 v5, 0x1

    if-eq p1, v5, :cond_0

    return-object p2

    :cond_0
    if-eqz p2, :cond_1

    .line 78
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    .line 79
    instance-of v5, p1, Lit/gmariotti/changelibs/library/internal/ChangeLogAdapter$ViewHolderHeader;

    if-eqz v5, :cond_1

    .line 80
    move-object v4, p1

    check-cast v4, Lit/gmariotti/changelibs/library/internal/ChangeLogAdapter$ViewHolderHeader;

    :cond_1
    if-eqz p2, :cond_2

    if-nez v4, :cond_3

    .line 87
    :cond_2
    iget p1, p0, Lit/gmariotti/changelibs/library/internal/ChangeLogAdapter;->mRowHeaderLayoutId:I

    .line 88
    invoke-virtual {v1, p1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 91
    sget p1, Lit/gmariotti/changelibs/R$id;->chg_headerVersion:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 93
    sget p3, Lit/gmariotti/changelibs/R$id;->chg_headerDate:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 94
    new-instance v4, Lit/gmariotti/changelibs/library/internal/ChangeLogAdapter$ViewHolderHeader;

    invoke-direct {v4, p1, p3}, Lit/gmariotti/changelibs/library/internal/ChangeLogAdapter$ViewHolderHeader;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 96
    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_3
    if-eqz v0, :cond_7

    .line 100
    iget-object p1, v4, Lit/gmariotti/changelibs/library/internal/ChangeLogAdapter$ViewHolderHeader;->version:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    .line 101
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    iget v1, p0, Lit/gmariotti/changelibs/library/internal/ChangeLogAdapter;->mStringVersionHeader:I

    invoke-virtual {p3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 105
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    :cond_4
    iget-object p3, v0, Lit/gmariotti/changelibs/library/internal/ChangeLogRow;->versionName:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget-object p3, v4, Lit/gmariotti/changelibs/library/internal/ChangeLogAdapter$ViewHolderHeader;->version:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    :cond_5
    iget-object p1, v4, Lit/gmariotti/changelibs/library/internal/ChangeLogAdapter$ViewHolderHeader;->date:Landroid/widget/TextView;

    if-eqz p1, :cond_7

    .line 116
    iget-object p3, v0, Lit/gmariotti/changelibs/library/internal/ChangeLogRow;->changeDate:Ljava/lang/String;

    if-eqz p3, :cond_6

    .line 117
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object p1, v4, Lit/gmariotti/changelibs/library/internal/ChangeLogAdapter$ViewHolderHeader;->date:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    return-object p2

    .line 121
    :cond_6
    const-string p3, ""

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object p1, v4, Lit/gmariotti/changelibs/library/internal/ChangeLogAdapter$ViewHolderHeader;->date:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    return-object p2

    :cond_8
    if-eqz p2, :cond_9

    .line 132
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    .line 133
    instance-of v5, p1, Lit/gmariotti/changelibs/library/internal/ChangeLogAdapter$ViewHolderRow;

    if-eqz v5, :cond_9

    .line 134
    move-object v4, p1

    check-cast v4, Lit/gmariotti/changelibs/library/internal/ChangeLogAdapter$ViewHolderRow;

    :cond_9
    if-eqz p2, :cond_a

    if-nez v4, :cond_b

    .line 141
    :cond_a
    iget p1, p0, Lit/gmariotti/changelibs/library/internal/ChangeLogAdapter;->mRowLayoutId:I

    .line 142
    invoke-virtual {v1, p1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 144
    sget p1, Lit/gmariotti/changelibs/R$id;->chg_text:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 145
    sget p3, Lit/gmariotti/changelibs/R$id;->chg_textbullet:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 146
    new-instance v4, Lit/gmariotti/changelibs/library/internal/ChangeLogAdapter$ViewHolderRow;

    invoke-direct {v4, p1, p3}, Lit/gmariotti/changelibs/library/internal/ChangeLogAdapter$ViewHolderRow;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 147
    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_b
    if-eqz v0, :cond_e

    .line 153
    iget-object p1, v4, Lit/gmariotti/changelibs/library/internal/ChangeLogAdapter$ViewHolderRow;->text:Landroid/widget/TextView;

    if-eqz p1, :cond_c

    .line 154
    iget-object p3, p0, Lit/gmariotti/changelibs/library/internal/ChangeLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p3}, Lit/gmariotti/changelibs/library/internal/ChangeLogRow;->getChangeText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object p1, v4, Lit/gmariotti/changelibs/library/internal/ChangeLogAdapter$ViewHolderRow;->text:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 157
    :cond_c
    iget-object p1, v4, Lit/gmariotti/changelibs/library/internal/ChangeLogAdapter$ViewHolderRow;->bulletText:Landroid/widget/TextView;

    if-eqz p1, :cond_e

    .line 158
    invoke-virtual {v0}, Lit/gmariotti/changelibs/library/internal/ChangeLogRow;->isBulletedList()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 159
    iget-object p1, v4, Lit/gmariotti/changelibs/library/internal/ChangeLogAdapter$ViewHolderRow;->bulletText:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    return-object p2

    .line 161
    :cond_d
    iget-object p1, v4, Lit/gmariotti/changelibs/library/internal/ChangeLogAdapter$ViewHolderRow;->bulletText:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setmRowHeaderLayoutId(I)V
    .locals 0

    .line 228
    iput p1, p0, Lit/gmariotti/changelibs/library/internal/ChangeLogAdapter;->mRowHeaderLayoutId:I

    return-void
.end method

.method public setmRowLayoutId(I)V
    .locals 0

    .line 220
    iput p1, p0, Lit/gmariotti/changelibs/library/internal/ChangeLogAdapter;->mRowLayoutId:I

    return-void
.end method
