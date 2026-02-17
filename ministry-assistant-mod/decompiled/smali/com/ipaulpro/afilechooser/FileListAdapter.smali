.class public Lcom/ipaulpro/afilechooser/FileListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# static fields
.field private static final ICON_FILE:I

.field private static final ICON_FOLDER:I


# instance fields
.field private mData:Ljava/util/List;

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    sget v0, Lcom/ipaulpro/afilechooser/R$drawable;->ic_folder:I

    sput v0, Lcom/ipaulpro/afilechooser/FileListAdapter;->ICON_FOLDER:I

    .line 39
    sget v0, Lcom/ipaulpro/afilechooser/R$drawable;->ic_file:I

    sput v0, Lcom/ipaulpro/afilechooser/FileListAdapter;->ICON_FILE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ipaulpro/afilechooser/FileListAdapter;->mData:Ljava/util/List;

    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/ipaulpro/afilechooser/FileListAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/ipaulpro/afilechooser/FileListAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 66
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/ipaulpro/afilechooser/FileListAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/io/File;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/ipaulpro/afilechooser/FileListAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/ipaulpro/afilechooser/FileListAdapter;->getItem(I)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 104
    iget-object p2, p0, Lcom/ipaulpro/afilechooser/FileListAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/ipaulpro/afilechooser/R$layout;->file:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 106
    :cond_0
    move-object p3, p2

    check-cast p3, Landroid/widget/TextView;

    .line 109
    invoke-virtual {p0, p1}, Lcom/ipaulpro/afilechooser/FileListAdapter;->getItem(I)Ljava/io/File;

    move-result-object p1

    .line 112
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Lcom/ipaulpro/afilechooser/FileListAdapter;->ICON_FOLDER:I

    goto :goto_0

    :cond_1
    sget p1, Lcom/ipaulpro/afilechooser/FileListAdapter;->ICON_FILE:I

    .line 116
    :goto_0
    invoke-virtual {p3, p1, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-object p2
.end method

.method public setListItems(Ljava/util/List;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/ipaulpro/afilechooser/FileListAdapter;->mData:Ljava/util/List;

    .line 96
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
