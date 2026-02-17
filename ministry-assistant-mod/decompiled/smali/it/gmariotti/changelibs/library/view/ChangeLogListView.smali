.class public Lit/gmariotti/changelibs/library/view/ChangeLogListView;
.super Landroid/widget/ListView;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lit/gmariotti/changelibs/library/view/ChangeLogListView$ParseAsyncTask;
    }
.end annotation


# static fields
.field protected static TAG:Ljava/lang/String; = "ChangeLogListView"


# instance fields
.field protected mAdapter:Lit/gmariotti/changelibs/library/internal/ChangeLogAdapter;

.field protected mChangeLogFileResourceId:I

.field protected mChangeLogFileResourceUrl:Ljava/lang/String;

.field protected mRowHeaderLayoutId:I

.field protected mRowLayoutId:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, p2, v0}, Lit/gmariotti/changelibs/library/view/ChangeLogListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    sget p1, Lit/gmariotti/changelibs/library/Constants;->mRowLayoutId:I

    iput p1, p0, Lit/gmariotti/changelibs/library/view/ChangeLogListView;->mRowLayoutId:I

    .line 49
    sget p1, Lit/gmariotti/changelibs/library/Constants;->mRowHeaderLayoutId:I

    iput p1, p0, Lit/gmariotti/changelibs/library/view/ChangeLogListView;->mRowHeaderLayoutId:I

    .line 50
    sget p1, Lit/gmariotti/changelibs/library/Constants;->mChangeLogFileResourceId:I

    iput p1, p0, Lit/gmariotti/changelibs/library/view/ChangeLogListView;->mChangeLogFileResourceId:I

    const/4 p1, 0x0

    .line 51
    iput-object p1, p0, Lit/gmariotti/changelibs/library/view/ChangeLogListView;->mChangeLogFileResourceUrl:Ljava/lang/String;

    const/4 p1, 0x1

    .line 74
    invoke-virtual {p0, p1}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    .line 76
    invoke-virtual {p0, p2, p3}, Lit/gmariotti/changelibs/library/view/ChangeLogListView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected init(Landroid/util/AttributeSet;I)V
    .locals 0

    .line 91
    invoke-virtual {p0, p1, p2}, Lit/gmariotti/changelibs/library/view/ChangeLogListView;->initAttrs(Landroid/util/AttributeSet;I)V

    .line 93
    invoke-virtual {p0}, Lit/gmariotti/changelibs/library/view/ChangeLogListView;->initAdapter()V

    const/4 p1, 0x0

    .line 96
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setDividerHeight(I)V

    return-void
.end method

.method protected initAdapter()V
    .locals 4

    .line 134
    :try_start_0
    iget-object v0, p0, Lit/gmariotti/changelibs/library/view/ChangeLogListView;->mChangeLogFileResourceUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 135
    new-instance v0, Lit/gmariotti/changelibs/library/parser/XmlParser;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lit/gmariotti/changelibs/library/view/ChangeLogListView;->mChangeLogFileResourceUrl:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lit/gmariotti/changelibs/library/parser/XmlParser;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_3

    .line 137
    :cond_0
    new-instance v0, Lit/gmariotti/changelibs/library/parser/XmlParser;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lit/gmariotti/changelibs/library/view/ChangeLogListView;->mChangeLogFileResourceId:I

    invoke-direct {v0, v1, v2}, Lit/gmariotti/changelibs/library/parser/XmlParser;-><init>(Landroid/content/Context;I)V

    .line 139
    :goto_0
    new-instance v1, Lit/gmariotti/changelibs/library/internal/ChangeLog;

    invoke-direct {v1}, Lit/gmariotti/changelibs/library/internal/ChangeLog;-><init>()V

    .line 142
    new-instance v2, Lit/gmariotti/changelibs/library/internal/ChangeLogAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Lit/gmariotti/changelibs/library/internal/ChangeLog;->getRows()Ljava/util/LinkedList;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lit/gmariotti/changelibs/library/internal/ChangeLogAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lit/gmariotti/changelibs/library/view/ChangeLogListView;->mAdapter:Lit/gmariotti/changelibs/library/internal/ChangeLogAdapter;

    .line 143
    iget v1, p0, Lit/gmariotti/changelibs/library/view/ChangeLogListView;->mRowLayoutId:I

    invoke-virtual {v2, v1}, Lit/gmariotti/changelibs/library/internal/ChangeLogAdapter;->setmRowLayoutId(I)V

    .line 144
    iget-object v1, p0, Lit/gmariotti/changelibs/library/view/ChangeLogListView;->mAdapter:Lit/gmariotti/changelibs/library/internal/ChangeLogAdapter;

    iget v2, p0, Lit/gmariotti/changelibs/library/view/ChangeLogListView;->mRowHeaderLayoutId:I

    invoke-virtual {v1, v2}, Lit/gmariotti/changelibs/library/internal/ChangeLogAdapter;->setmRowHeaderLayoutId(I)V

    .line 147
    iget-object v1, p0, Lit/gmariotti/changelibs/library/view/ChangeLogListView;->mChangeLogFileResourceUrl:Ljava/lang/String;

    if-eqz v1, :cond_2

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lit/gmariotti/changelibs/library/Util;->isConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 150
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lit/gmariotti/changelibs/R$string;->changelog_internal_error_internet_connection:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 148
    :cond_2
    :goto_1
    new-instance v1, Lit/gmariotti/changelibs/library/view/ChangeLogListView$ParseAsyncTask;

    iget-object v2, p0, Lit/gmariotti/changelibs/library/view/ChangeLogListView;->mAdapter:Lit/gmariotti/changelibs/library/internal/ChangeLogAdapter;

    invoke-direct {v1, p0, v2, v0}, Lit/gmariotti/changelibs/library/view/ChangeLogListView$ParseAsyncTask;-><init>(Lit/gmariotti/changelibs/library/view/ChangeLogListView;Lit/gmariotti/changelibs/library/internal/ChangeLogAdapter;Lit/gmariotti/changelibs/library/parser/XmlParser;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 151
    :goto_2
    iget-object v0, p0, Lit/gmariotti/changelibs/library/view/ChangeLogListView;->mAdapter:Lit/gmariotti/changelibs/library/internal/ChangeLogAdapter;

    invoke-virtual {p0, v0}, Lit/gmariotti/changelibs/library/view/ChangeLogListView;->setAdapter(Lit/gmariotti/changelibs/library/internal/ChangeLogAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 154
    :goto_3
    sget-object v1, Lit/gmariotti/changelibs/library/view/ChangeLogListView;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lit/gmariotti/changelibs/R$string;->changelog_internal_error_parsing:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method protected initAttrs(Landroid/util/AttributeSet;I)V
    .locals 2

    .line 106
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lit/gmariotti/changelibs/R$styleable;->ChangeLogListView:[I

    invoke-virtual {v0, p1, v1, p2, p2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 111
    :try_start_0
    sget p2, Lit/gmariotti/changelibs/R$styleable;->ChangeLogListView_rowLayoutId:I

    iget v0, p0, Lit/gmariotti/changelibs/library/view/ChangeLogListView;->mRowLayoutId:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lit/gmariotti/changelibs/library/view/ChangeLogListView;->mRowLayoutId:I

    .line 112
    sget p2, Lit/gmariotti/changelibs/R$styleable;->ChangeLogListView_rowHeaderLayoutId:I

    iget v0, p0, Lit/gmariotti/changelibs/library/view/ChangeLogListView;->mRowHeaderLayoutId:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lit/gmariotti/changelibs/library/view/ChangeLogListView;->mRowHeaderLayoutId:I

    .line 115
    sget p2, Lit/gmariotti/changelibs/R$styleable;->ChangeLogListView_changeLogFileResourceId:I

    iget v0, p0, Lit/gmariotti/changelibs/library/view/ChangeLogListView;->mChangeLogFileResourceId:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lit/gmariotti/changelibs/library/view/ChangeLogListView;->mChangeLogFileResourceId:I

    .line 117
    sget p2, Lit/gmariotti/changelibs/R$styleable;->ChangeLogListView_changeLogFileResourceUrl:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lit/gmariotti/changelibs/library/view/ChangeLogListView;->mChangeLogFileResourceUrl:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    return-void
.end method

.method public setAdapter(Lit/gmariotti/changelibs/library/internal/ChangeLogAdapter;)V
    .locals 0

    .line 210
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
