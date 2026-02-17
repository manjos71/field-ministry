.class public Lcom/lostpixels/fieldservice/ui/TagView;
.super Lcom/lostpixels/fieldservice/ui/Chip;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/ui/Chip$OnSelectClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/ui/TagView$TagChangedListener;
    }
.end annotation


# instance fields
.field listener:Lcom/lostpixels/fieldservice/ui/TagView$TagChangedListener;

.field tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/ui/Chip;-><init>(Landroid/content/Context;)V

    .line 19
    const-string p1, ""

    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/TagView;->tag:Ljava/lang/String;

    .line 23
    invoke-virtual {p0, p0}, Lcom/lostpixels/fieldservice/ui/Chip;->setOnSelectClickListener(Lcom/lostpixels/fieldservice/ui/Chip$OnSelectClickListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/lostpixels/fieldservice/ui/Chip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const-string p1, ""

    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/TagView;->tag:Ljava/lang/String;

    .line 28
    invoke-virtual {p0, p0}, Lcom/lostpixels/fieldservice/ui/Chip;->setOnSelectClickListener(Lcom/lostpixels/fieldservice/ui/Chip$OnSelectClickListener;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getTag()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/ui/TagView;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/TagView;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public onSelectClick(Landroid/view/View;Z)V
    .locals 2

    .line 38
    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/TagView;->listener:Lcom/lostpixels/fieldservice/ui/TagView$TagChangedListener;

    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/ui/Chip;->getChipText()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/TagView;->tag:Ljava/lang/String;

    invoke-interface {p1, v0, v1, p2}, Lcom/lostpixels/fieldservice/ui/TagView$TagChangedListener;->onTagChanaged(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const p1, -0x95e466

    .line 60
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/ui/Chip;->changeSelectedBackgroundColor(I)V

    goto :goto_0

    :cond_1
    const p1, -0xc771c4

    .line 63
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/ui/Chip;->changeSelectedBackgroundColor(I)V

    goto :goto_0

    :cond_2
    const p1, -0xc6b655

    .line 57
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/ui/Chip;->changeSelectedBackgroundColor(I)V

    goto :goto_0

    :cond_3
    const p1, -0x1ac6cb

    .line 69
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/ui/Chip;->changeSelectedBackgroundColor(I)V

    goto :goto_0

    :cond_4
    const/16 p1, -0x6000

    .line 66
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/ui/Chip;->changeSelectedBackgroundColor(I)V

    .line 73
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOnTagChangedListener(Lcom/lostpixels/fieldservice/ui/TagView$TagChangedListener;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/TagView;->listener:Lcom/lostpixels/fieldservice/ui/TagView$TagChangedListener;

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/TagView;->tag:Ljava/lang/String;

    return-void
.end method
