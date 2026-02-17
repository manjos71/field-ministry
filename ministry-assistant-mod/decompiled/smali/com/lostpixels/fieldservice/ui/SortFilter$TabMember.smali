.class public Lcom/lostpixels/fieldservice/ui/SortFilter$TabMember;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/ui/SortFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabMember"
.end annotation


# instance fields
.field protected mIconResourceId:I

.field protected final mIconResourceIdSelected:I

.field protected final mId:I

.field protected final mIsCheckItem:Z

.field protected mIsChecked:Z

.field protected final mTabGroup:Ljava/lang/Integer;

.field protected mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;IIIZ)V
    .locals 0

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    iput p1, p0, Lcom/lostpixels/fieldservice/ui/SortFilter$TabMember;->mId:I

    .line 233
    iput p3, p0, Lcom/lostpixels/fieldservice/ui/SortFilter$TabMember;->mIconResourceId:I

    .line 234
    iput p4, p0, Lcom/lostpixels/fieldservice/ui/SortFilter$TabMember;->mIconResourceIdSelected:I

    .line 235
    iput-object p2, p0, Lcom/lostpixels/fieldservice/ui/SortFilter$TabMember;->mText:Ljava/lang/String;

    .line 236
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/SortFilter$TabMember;->mTabGroup:Ljava/lang/Integer;

    .line 237
    iput-boolean p6, p0, Lcom/lostpixels/fieldservice/ui/SortFilter$TabMember;->mIsCheckItem:Z

    return-void
.end method


# virtual methods
.method public getIconResourceId()I
    .locals 1

    .line 270
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/SortFilter$TabMember;->mIconResourceId:I

    return v0
.end method

.method public getIconResourceIdSelected()I
    .locals 1

    .line 278
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/SortFilter$TabMember;->mIconResourceIdSelected:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 241
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/SortFilter$TabMember;->mId:I

    return v0
.end method

.method public getTabGroup()Ljava/lang/Integer;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/SortFilter$TabMember;->mTabGroup:Ljava/lang/Integer;

    return-object v0
.end method

.method public isCheckItem()Z
    .locals 1

    .line 266
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/ui/SortFilter$TabMember;->mIsCheckItem:Z

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 258
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/ui/SortFilter$TabMember;->mIsCheckItem:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/ui/SortFilter$TabMember;->mIsChecked:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
