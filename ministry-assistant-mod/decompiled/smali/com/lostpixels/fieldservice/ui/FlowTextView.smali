.class public Lcom/lostpixels/fieldservice/ui/FlowTextView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/ui/FlowTextView$HtmlLink;,
        Lcom/lostpixels/fieldservice/ui/FlowTextView$OnLinkClickListener;,
        Lcom/lostpixels/fieldservice/ui/FlowTextView$Line;,
        Lcom/lostpixels/fieldservice/ui/FlowTextView$Box;,
        Lcom/lostpixels/fieldservice/ui/FlowTextView$Area;,
        Lcom/lostpixels/fieldservice/ui/FlowTextView$HtmlObject;
    }
.end annotation


# instance fields
.field arrayIndex:I

.field private bitmaps:Ljava/util/ArrayList;

.field private final boxes:Ljava/util/ArrayList;

.field charCounter:I

.field charFlagIndex:I

.field charFlagSize:I

.field private final mAreas:Ljava/util/ArrayList;

.field private mColor:I

.field private mDesiredHeight:I

.field private mIsHtml:Z

.field mLargestArea:Lcom/lostpixels/fieldservice/ui/FlowTextView$Area;

.field private mLinkPaint:Landroid/text/TextPaint;

.field private final mLinks:Ljava/util/ArrayList;

.field private final mPaintHeap:Ljava/util/ArrayList;

.field private mSpannable:Landroid/text/Spannable;

.field private mText:Ljava/lang/CharSequence;

.field mTextLength:I

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTextsize:F

.field private mViewWidth:F

.field needsMeasure:Z

.field private pageHeight:I

.field sorterKeys:[Ljava/lang/Object;

.field final sorterMap:Ljava/util/HashMap;

.field spanEnd:I

.field spanStart:I

.field temp1:I

.field temp2:I

.field tempFloat:F

.field tempString:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$monClick(Lcom/lostpixels/fieldservice/ui/FlowTextView;FF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/lostpixels/fieldservice/ui/FlowTextView;->onClick(FF)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smgetPointDistance(FFFF)D
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/lostpixels/fieldservice/ui/FlowTextView;->getPointDistance(FFFF)D

    move-result-wide p0

    return-wide p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 77
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->sorterMap:Ljava/util/HashMap;

    .line 33
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mAreas:Ljava/util/ArrayList;

    .line 34
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->boxes:Ljava/util/ArrayList;

    .line 35
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mPaintHeap:Ljava/util/ArrayList;

    .line 36
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mLinks:Ljava/util/ArrayList;

    const/4 p2, 0x1

    .line 39
    iput-boolean p2, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->needsMeasure:Z

    const/4 p2, 0x0

    .line 40
    iput p2, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->charFlagSize:I

    .line 41
    iput p2, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->charFlagIndex:I

    .line 42
    iput p2, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->spanStart:I

    .line 43
    iput p2, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->spanEnd:I

    .line 52
    iput p2, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->arrayIndex:I

    .line 53
    iput p2, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mTextLength:I

    const/high16 v0, -0x1000000

    .line 54
    iput v0, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mColor:I

    .line 55
    iput p2, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->pageHeight:I

    const/high16 v0, 0x41a00000    # 20.0f

    .line 58
    iput v0, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mTextsize:F

    const/16 v0, 0x64

    .line 59
    iput v0, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mDesiredHeight:I

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mText:Ljava/lang/CharSequence;

    .line 63
    iput-boolean p2, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mIsHtml:Z

    .line 65
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->bitmaps:Ljava/util/ArrayList;

    .line 78
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/ui/FlowTextView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private addLink(Lcom/lostpixels/fieldservice/ui/FlowTextView$HtmlLink;FFF)V
    .locals 1

    const/high16 v0, 0x41a00000    # 20.0f

    sub-float/2addr p2, v0

    .line 681
    iput p2, p1, Lcom/lostpixels/fieldservice/ui/FlowTextView$HtmlLink;->yOffset:F

    .line 682
    iput p3, p1, Lcom/lostpixels/fieldservice/ui/FlowTextView$HtmlLink;->width:F

    add-float/2addr p4, v0

    .line 683
    iput p4, p1, Lcom/lostpixels/fieldservice/ui/FlowTextView$HtmlLink;->height:F

    .line 684
    iget-object p2, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mLinks:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private extractText(II)Ljava/lang/String;
    .locals 2

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 637
    :cond_0
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mTextLength:I

    add-int/lit8 v1, v0, -0x1

    if-le p2, v1, :cond_1

    add-int/lit8 p2, v0, -0x1

    .line 638
    :cond_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mSpannable:Landroid/text/Spannable;

    invoke-interface {v0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getChunk(Ljava/lang/String;F)I
    .locals 6

    .line 281
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, p2, v1}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v0

    const/4 v1, -0x1

    if-gtz v0, :cond_0

    return v1

    .line 284
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v0, v3, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v0, -0x1

    .line 285
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_2

    :goto_0
    return v0

    .line 289
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v0, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_3

    add-int/2addr v0, v2

    return v0

    .line 295
    :cond_3
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v5, :cond_5

    add-int/lit8 v3, v3, -0x1

    if-gtz v3, :cond_3

    .line 301
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    cmpg-float p2, v0, p2

    if-gtz p2, :cond_4

    .line 302
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    return p1

    :cond_4
    return v1

    :cond_5
    add-int/2addr v3, v2

    return v3
.end method

.method private getHtmlLink(Landroid/text/style/URLSpan;Ljava/lang/String;IIF)Lcom/lostpixels/fieldservice/ui/FlowTextView$HtmlLink;
    .locals 8

    .line 675
    new-instance v0, Lcom/lostpixels/fieldservice/ui/FlowTextView$HtmlLink;

    iget-object v6, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mLinkPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/lostpixels/fieldservice/ui/FlowTextView$HtmlLink;-><init>(Lcom/lostpixels/fieldservice/ui/FlowTextView;Ljava/lang/String;IIFLandroid/text/TextPaint;Ljava/lang/String;)V

    .line 676
    iget-object p1, v1, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mLinks:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private getHtmlObject(Ljava/lang/String;IIF)Lcom/lostpixels/fieldservice/ui/FlowTextView$HtmlObject;
    .locals 7

    .line 669
    new-instance v0, Lcom/lostpixels/fieldservice/ui/FlowTextView$HtmlObject;

    iget-object v6, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/lostpixels/fieldservice/ui/FlowTextView$HtmlObject;-><init>(Lcom/lostpixels/fieldservice/ui/FlowTextView;Ljava/lang/String;IIFLandroid/text/TextPaint;)V

    return-object v0
.end method

.method private getLine(FI)Lcom/lostpixels/fieldservice/ui/FlowTextView$Line;
    .locals 16

    move-object/from16 v0, p0

    .line 207
    new-instance v1, Lcom/lostpixels/fieldservice/ui/FlowTextView$Line;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/lostpixels/fieldservice/ui/FlowTextView$Line;-><init>(Lcom/lostpixels/fieldservice/ui/FlowTextView;Lcom/lostpixels/fieldservice/ui/FlowTextView-IA;)V

    const/4 v3, 0x0

    .line 208
    iput v3, v1, Lcom/lostpixels/fieldservice/ui/FlowTextView$Line;->leftBound:F

    .line 209
    iget v4, v0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mViewWidth:F

    iput v4, v1, Lcom/lostpixels/fieldservice/ui/FlowTextView$Line;->rightBound:F

    move/from16 v4, p2

    int-to-float v4, v4

    sub-float v4, p1, v4

    .line 213
    iget-object v5, v0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mAreas:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 215
    iget-object v5, v0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->boxes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v6, :cond_8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Lcom/lostpixels/fieldservice/ui/FlowTextView$Box;

    .line 218
    iget v10, v9, Lcom/lostpixels/fieldservice/ui/FlowTextView$Box;->topLefty:I

    int-to-float v10, v10

    cmpl-float v10, v10, p1

    if-gtz v10, :cond_7

    iget v10, v9, Lcom/lostpixels/fieldservice/ui/FlowTextView$Box;->bottomRighty:I

    int-to-float v10, v10

    cmpg-float v10, v10, v4

    if-gez v10, :cond_0

    goto/16 :goto_4

    .line 222
    :cond_0
    new-instance v10, Lcom/lostpixels/fieldservice/ui/FlowTextView$Area;

    invoke-direct {v10, v0, v2}, Lcom/lostpixels/fieldservice/ui/FlowTextView$Area;-><init>(Lcom/lostpixels/fieldservice/ui/FlowTextView;Lcom/lostpixels/fieldservice/ui/FlowTextView-IA;)V

    .line 223
    iput v3, v10, Lcom/lostpixels/fieldservice/ui/FlowTextView$Area;->x1:F

    .line 225
    iget-object v11, v0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->boxes:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v12, :cond_3

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v13, v13, 0x1

    check-cast v14, Lcom/lostpixels/fieldservice/ui/FlowTextView$Box;

    .line 227
    iget v15, v14, Lcom/lostpixels/fieldservice/ui/FlowTextView$Box;->topLefty:I

    int-to-float v15, v15

    cmpl-float v15, v15, p1

    if-gtz v15, :cond_2

    iget v15, v14, Lcom/lostpixels/fieldservice/ui/FlowTextView$Box;->bottomRighty:I

    int-to-float v15, v15

    cmpg-float v15, v15, v4

    if-gez v15, :cond_1

    goto :goto_2

    .line 230
    :cond_1
    iget v15, v14, Lcom/lostpixels/fieldservice/ui/FlowTextView$Box;->topLeftx:I

    iget v3, v9, Lcom/lostpixels/fieldservice/ui/FlowTextView$Box;->topLeftx:I

    if-ge v15, v3, :cond_2

    .line 231
    iget v3, v14, Lcom/lostpixels/fieldservice/ui/FlowTextView$Box;->bottomRightx:I

    int-to-float v3, v3

    iput v3, v10, Lcom/lostpixels/fieldservice/ui/FlowTextView$Area;->x1:F

    :cond_2
    :goto_2
    const/4 v3, 0x0

    goto :goto_1

    .line 236
    :cond_3
    iget v3, v9, Lcom/lostpixels/fieldservice/ui/FlowTextView$Box;->topLeftx:I

    int-to-float v3, v3

    iput v3, v10, Lcom/lostpixels/fieldservice/ui/FlowTextView$Area;->x2:F

    .line 237
    iget v11, v10, Lcom/lostpixels/fieldservice/ui/FlowTextView$Area;->x1:F

    sub-float/2addr v3, v11

    iput v3, v10, Lcom/lostpixels/fieldservice/ui/FlowTextView$Area;->width:F

    .line 239
    new-instance v3, Lcom/lostpixels/fieldservice/ui/FlowTextView$Area;

    invoke-direct {v3, v0, v2}, Lcom/lostpixels/fieldservice/ui/FlowTextView$Area;-><init>(Lcom/lostpixels/fieldservice/ui/FlowTextView;Lcom/lostpixels/fieldservice/ui/FlowTextView-IA;)V

    .line 240
    iget v11, v9, Lcom/lostpixels/fieldservice/ui/FlowTextView$Box;->bottomRightx:I

    int-to-float v11, v11

    iput v11, v3, Lcom/lostpixels/fieldservice/ui/FlowTextView$Area;->x1:F

    .line 241
    iget v11, v0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mViewWidth:F

    iput v11, v3, Lcom/lostpixels/fieldservice/ui/FlowTextView$Area;->x2:F

    .line 243
    iget-object v11, v0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->boxes:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x0

    :cond_4
    :goto_3
    if-ge v13, v12, :cond_6

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v13, v13, 0x1

    check-cast v14, Lcom/lostpixels/fieldservice/ui/FlowTextView$Box;

    .line 245
    iget v15, v14, Lcom/lostpixels/fieldservice/ui/FlowTextView$Box;->topLefty:I

    int-to-float v15, v15

    cmpl-float v15, v15, p1

    if-gtz v15, :cond_4

    iget v15, v14, Lcom/lostpixels/fieldservice/ui/FlowTextView$Box;->bottomRighty:I

    int-to-float v15, v15

    cmpg-float v15, v15, v4

    if-gez v15, :cond_5

    goto :goto_3

    .line 248
    :cond_5
    iget v15, v14, Lcom/lostpixels/fieldservice/ui/FlowTextView$Box;->bottomRightx:I

    iget v7, v9, Lcom/lostpixels/fieldservice/ui/FlowTextView$Box;->bottomRightx:I

    if-le v15, v7, :cond_4

    .line 249
    iget v7, v14, Lcom/lostpixels/fieldservice/ui/FlowTextView$Box;->topLeftx:I

    int-to-float v7, v7

    iput v7, v3, Lcom/lostpixels/fieldservice/ui/FlowTextView$Area;->x2:F

    goto :goto_3

    .line 254
    :cond_6
    iget v7, v3, Lcom/lostpixels/fieldservice/ui/FlowTextView$Area;->x2:F

    iget v9, v3, Lcom/lostpixels/fieldservice/ui/FlowTextView$Area;->x1:F

    sub-float/2addr v7, v9

    iput v7, v3, Lcom/lostpixels/fieldservice/ui/FlowTextView$Area;->width:F

    .line 256
    iget-object v7, v0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mAreas:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    iget-object v7, v0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mAreas:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_4
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 260
    :cond_8
    iput-object v2, v0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mLargestArea:Lcom/lostpixels/fieldservice/ui/FlowTextView$Area;

    .line 262
    iget-object v2, v0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mAreas:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    .line 263
    iget-object v2, v0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mAreas:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v7, 0x0

    :cond_9
    :goto_5
    if-ge v7, v3, :cond_b

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v7, v7, 0x1

    check-cast v4, Lcom/lostpixels/fieldservice/ui/FlowTextView$Area;

    .line 264
    iget-object v5, v0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mLargestArea:Lcom/lostpixels/fieldservice/ui/FlowTextView$Area;

    if-nez v5, :cond_a

    .line 265
    iput-object v4, v0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mLargestArea:Lcom/lostpixels/fieldservice/ui/FlowTextView$Area;

    goto :goto_5

    .line 267
    :cond_a
    iget v6, v4, Lcom/lostpixels/fieldservice/ui/FlowTextView$Area;->width:F

    iget v5, v5, Lcom/lostpixels/fieldservice/ui/FlowTextView$Area;->width:F

    cmpl-float v5, v6, v5

    if-lez v5, :cond_9

    .line 268
    iput-object v4, v0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mLargestArea:Lcom/lostpixels/fieldservice/ui/FlowTextView$Area;

    goto :goto_5

    .line 273
    :cond_b
    iget-object v2, v0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mLargestArea:Lcom/lostpixels/fieldservice/ui/FlowTextView$Area;

    iget v3, v2, Lcom/lostpixels/fieldservice/ui/FlowTextView$Area;->x1:F

    iput v3, v1, Lcom/lostpixels/fieldservice/ui/FlowTextView$Line;->leftBound:F

    .line 274
    iget v2, v2, Lcom/lostpixels/fieldservice/ui/FlowTextView$Area;->x2:F

    iput v2, v1, Lcom/lostpixels/fieldservice/ui/FlowTextView$Line;->rightBound:F

    :cond_c
    return-object v1
.end method

.method private getPaintFromHeap()Landroid/text/TextPaint;
    .locals 2

    .line 642
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mPaintHeap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mPaintHeap:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/TextPaint;

    return-object v0

    .line 645
    :cond_0
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    return-object v0
.end method

.method private static getPointDistance(FFFF)D
    .locals 4

    sub-float/2addr p0, p2

    float-to-double v0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 87
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-float/2addr p1, p3

    float-to-double p0, p1

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private getStyledObject(Landroid/text/style/StyleSpan;Ljava/lang/String;IIF)Lcom/lostpixels/fieldservice/ui/FlowTextView$HtmlObject;
    .locals 7

    .line 655
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/ui/FlowTextView;->getPaintFromHeap()Landroid/text/TextPaint;

    move-result-object v6

    .line 656
    invoke-virtual {p1}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 657
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mTextsize:F

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 658
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mColor:I

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 660
    invoke-virtual {p1, v6}, Landroid/text/style/StyleSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 661
    invoke-virtual {p1, v6}, Landroid/text/style/StyleSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    .line 662
    new-instance v0, Lcom/lostpixels/fieldservice/ui/FlowTextView$HtmlObject;

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/lostpixels/fieldservice/ui/FlowTextView$HtmlObject;-><init>(Lcom/lostpixels/fieldservice/ui/FlowTextView;Ljava/lang/String;IIFLandroid/text/TextPaint;)V

    const/4 p1, 0x1

    .line 663
    iput-boolean p1, v0, Lcom/lostpixels/fieldservice/ui/FlowTextView$HtmlObject;->recycle:Z

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 110
    new-instance p1, Landroid/text/TextPaint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mTextPaint:Landroid/text/TextPaint;

    .line 111
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p1, Landroid/text/TextPaint;->density:F

    .line 112
    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mTextsize:F

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 113
    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    .line 114
    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mTextPaint:Landroid/text/TextPaint;

    const/high16 v1, -0x1000000

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 116
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mLinkPaint:Landroid/text/TextPaint;

    .line 117
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p1, Landroid/text/TextPaint;->density:F

    .line 118
    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mLinkPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mTextsize:F

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 119
    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mLinkPaint:Landroid/text/TextPaint;

    const v1, -0xffff01

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mLinkPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    const/4 p1, 0x0

    .line 122
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 124
    new-instance p1, Lcom/lostpixels/fieldservice/ui/FlowTextView$1;

    invoke-direct {p1, p0}, Lcom/lostpixels/fieldservice/ui/FlowTextView$1;-><init>(Lcom/lostpixels/fieldservice/ui/FlowTextView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private isArrayFull([Z)Z
    .locals 3

    const/4 v0, 0x0

    .line 616
    iput v0, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->arrayIndex:I

    :goto_0
    iget v1, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->arrayIndex:I

    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 617
    aget-boolean v2, p1, v1

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 616
    iput v1, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->arrayIndex:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private onClick(FF)V
    .locals 8

    .line 179
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mLinks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/lostpixels/fieldservice/ui/FlowTextView$HtmlLink;

    .line 180
    iget v4, v3, Lcom/lostpixels/fieldservice/ui/FlowTextView$HtmlObject;->xOffset:F

    .line 181
    iget v5, v3, Lcom/lostpixels/fieldservice/ui/FlowTextView$HtmlLink;->yOffset:F

    .line 182
    iget v6, v3, Lcom/lostpixels/fieldservice/ui/FlowTextView$HtmlLink;->width:F

    add-float/2addr v6, v4

    .line 183
    iget v7, v3, Lcom/lostpixels/fieldservice/ui/FlowTextView$HtmlLink;->height:F

    add-float/2addr v7, v5

    cmpl-float v4, p1, v4

    if-lez v4, :cond_0

    cmpg-float v4, p1, v6

    if-gez v4, :cond_0

    cmpl-float v4, p2, v5

    if-lez v4, :cond_0

    cmpg-float v4, p2, v7

    if-gez v4, :cond_0

    .line 188
    iget-object p1, v3, Lcom/lostpixels/fieldservice/ui/FlowTextView$HtmlLink;->url:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/ui/FlowTextView;->onLinkClick(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private onLinkClick(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private paintObject(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V
    .locals 0

    .line 495
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private parseSpan(Ljava/lang/Object;Ljava/lang/String;II)Lcom/lostpixels/fieldservice/ui/FlowTextView$HtmlObject;
    .locals 7

    .line 625
    instance-of v0, p1, Landroid/text/style/URLSpan;

    if-eqz v0, :cond_0

    .line 626
    move-object v2, p1

    check-cast v2, Landroid/text/style/URLSpan;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/lostpixels/fieldservice/ui/FlowTextView;->getHtmlLink(Landroid/text/style/URLSpan;Ljava/lang/String;IIF)Lcom/lostpixels/fieldservice/ui/FlowTextView$HtmlLink;

    move-result-object p1

    return-object p1

    :cond_0
    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 627
    instance-of p2, p1, Landroid/text/style/StyleSpan;

    if-eqz p2, :cond_1

    .line 628
    move-object v1, p1

    check-cast v1, Landroid/text/style/StyleSpan;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/lostpixels/fieldservice/ui/FlowTextView;->getStyledObject(Landroid/text/style/StyleSpan;Ljava/lang/String;IIF)Lcom/lostpixels/fieldservice/ui/FlowTextView$HtmlObject;

    move-result-object p1

    return-object p1

    :cond_1
    move-object v0, p0

    const/4 p1, 0x0

    .line 630
    invoke-direct {p0, v2, v3, v4, p1}, Lcom/lostpixels/fieldservice/ui/FlowTextView;->getHtmlObject(Ljava/lang/String;IIF)Lcom/lostpixels/fieldservice/ui/FlowTextView$HtmlObject;

    move-result-object p1

    return-object p1
.end method

.method private parseSpans(Ljava/util/ArrayList;[Ljava/lang/Object;IIF)F
    .locals 10

    .line 540
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->sorterMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sub-int v0, p4, p3

    .line 542
    iput v0, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->charFlagSize:I

    .line 543
    new-array v0, v0, [Z

    .line 545
    array-length v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_3

    aget-object v5, p2, v3

    .line 546
    iget-object v6, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mSpannable:Landroid/text/Spannable;

    invoke-interface {v6, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    iput v6, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->spanStart:I

    .line 547
    iget-object v6, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mSpannable:Landroid/text/Spannable;

    invoke-interface {v6, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    iput v6, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->spanEnd:I

    .line 549
    iget v7, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->spanStart:I

    if-ge v7, p3, :cond_0

    iput p3, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->spanStart:I

    :cond_0
    if-le v6, p4, :cond_1

    .line 550
    iput p4, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->spanEnd:I

    .line 552
    :cond_1
    iget v6, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->spanStart:I

    :goto_1
    iput v6, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->charCounter:I

    iget v6, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->charCounter:I

    iget v7, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->spanEnd:I

    if-ge v6, v7, :cond_2

    sub-int v7, v6, p3

    .line 553
    iput v7, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->charFlagIndex:I

    .line 554
    aput-boolean v4, v0, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 557
    :cond_2
    iget v4, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->spanStart:I

    invoke-direct {p0, v4, v7}, Lcom/lostpixels/fieldservice/ui/FlowTextView;->extractText(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->tempString:Ljava/lang/String;

    .line 558
    iget-object v4, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->sorterMap:Ljava/util/HashMap;

    iget v6, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->spanStart:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->tempString:Ljava/lang/String;

    iget v8, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->spanStart:I

    iget v9, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->spanEnd:I

    invoke-direct {p0, v5, v7, v8, v9}, Lcom/lostpixels/fieldservice/ui/FlowTextView;->parseSpan(Ljava/lang/Object;Ljava/lang/String;II)Lcom/lostpixels/fieldservice/ui/FlowTextView$HtmlObject;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 562
    :cond_3
    iput v2, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->charCounter:I

    .line 564
    :goto_2
    invoke-direct {p0, v0}, Lcom/lostpixels/fieldservice/ui/FlowTextView;->isArrayFull([Z)Z

    move-result p2

    if-nez p2, :cond_8

    .line 567
    :goto_3
    iget p2, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->charCounter:I

    iget p4, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->charFlagSize:I

    if-lt p2, p4, :cond_4

    goto :goto_2

    .line 570
    :cond_4
    aget-boolean p4, v0, p2

    if-eqz p4, :cond_5

    add-int/lit8 p2, p2, 0x1

    .line 571
    iput p2, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->charCounter:I

    goto :goto_3

    .line 575
    :cond_5
    iput p2, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->temp1:I

    .line 577
    :goto_4
    iget p2, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->charCounter:I

    iget p4, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->charFlagSize:I

    if-le p2, p4, :cond_6

    goto :goto_3

    :cond_6
    if-ge p2, p4, :cond_7

    .line 580
    aget-boolean p4, v0, p2

    if-nez p4, :cond_7

    .line 582
    aput-boolean v4, v0, p2

    add-int/lit8 p2, p2, 0x1

    .line 583
    iput p2, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->charCounter:I

    goto :goto_4

    .line 588
    :cond_7
    iput p2, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->temp2:I

    .line 589
    iget p4, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->temp1:I

    add-int/2addr p4, p3

    iput p4, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->spanStart:I

    add-int/2addr p2, p3

    .line 590
    iput p2, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->spanEnd:I

    .line 591
    invoke-direct {p0, p4, p2}, Lcom/lostpixels/fieldservice/ui/FlowTextView;->extractText(II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->tempString:Ljava/lang/String;

    .line 592
    iget-object p2, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->sorterMap:Ljava/util/HashMap;

    iget p4, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->spanStart:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->tempString:Ljava/lang/String;

    iget v3, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->spanStart:I

    iget v5, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->spanEnd:I

    const/4 v6, 0x0

    invoke-direct {p0, v6, v1, v3, v5}, Lcom/lostpixels/fieldservice/ui/FlowTextView;->parseSpan(Ljava/lang/Object;Ljava/lang/String;II)Lcom/lostpixels/fieldservice/ui/FlowTextView$HtmlObject;

    move-result-object v1

    invoke-virtual {p2, p4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 599
    :cond_8
    iget-object p2, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->sorterMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->sorterKeys:[Ljava/lang/Object;

    .line 600
    invoke-static {p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 604
    iput v2, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->charCounter:I

    move p2, p5

    :goto_5
    iget p3, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->charCounter:I

    iget-object p4, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->sorterKeys:[Ljava/lang/Object;

    array-length v0, p4

    if-ge p3, v0, :cond_9

    .line 605
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->sorterMap:Ljava/util/HashMap;

    aget-object p3, p4, p3

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/lostpixels/fieldservice/ui/FlowTextView$HtmlObject;

    .line 606
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput p2, p3, Lcom/lostpixels/fieldservice/ui/FlowTextView$HtmlObject;->xOffset:F

    .line 607
    iget-object p4, p3, Lcom/lostpixels/fieldservice/ui/FlowTextView$HtmlObject;->paint:Landroid/text/TextPaint;

    iget-object v0, p3, Lcom/lostpixels/fieldservice/ui/FlowTextView$HtmlObject;->content:Ljava/lang/String;

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p4

    iput p4, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->tempFloat:F

    add-float/2addr p2, p4

    .line 609
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 604
    iget p3, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->charCounter:I

    add-int/2addr p3, v4

    iput p3, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->charCounter:I

    goto :goto_5

    :cond_9
    sub-float/2addr p2, p5

    return p2
.end method

.method private recyclePaint(Landroid/text/TextPaint;)V
    .locals 1

    .line 650
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mPaintHeap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getBitmaps()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 711
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->bitmaps:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLineHeight()I
    .locals 2

    .line 534
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    const/4 v1, 0x0

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public invalidate()V
    .locals 1

    const/4 v0, 0x1

    .line 490
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->needsMeasure:Z

    .line 491
    invoke-super {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 484
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 485
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/ui/FlowTextView;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 22

    move-object/from16 v0, p0

    .line 316
    const-string v1, "flowText"

    const-string v2, "onDraw"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-super/range {p0 .. p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 320
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mViewWidth:F

    .line 322
    iget-object v1, v0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->boxes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 324
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v8, 0x0

    :goto_0
    const/16 v9, 0x8

    if-ge v2, v1, :cond_1

    .line 326
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 327
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v9, :cond_0

    .line 328
    new-instance v4, Lcom/lostpixels/fieldservice/ui/FlowTextView$Box;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Lcom/lostpixels/fieldservice/ui/FlowTextView$Box;-><init>(Lcom/lostpixels/fieldservice/ui/FlowTextView;Lcom/lostpixels/fieldservice/ui/FlowTextView-IA;)V

    .line 329
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    iput v5, v4, Lcom/lostpixels/fieldservice/ui/FlowTextView$Box;->topLeftx:I

    .line 330
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    iput v5, v4, Lcom/lostpixels/fieldservice/ui/FlowTextView$Box;->topLefty:I

    .line 331
    iget v5, v4, Lcom/lostpixels/fieldservice/ui/FlowTextView$Box;->topLeftx:I

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v4, Lcom/lostpixels/fieldservice/ui/FlowTextView$Box;->bottomRightx:I

    .line 332
    iget v5, v4, Lcom/lostpixels/fieldservice/ui/FlowTextView$Box;->topLefty:I

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v5, v3

    iput v5, v4, Lcom/lostpixels/fieldservice/ui/FlowTextView$Box;->bottomRighty:I

    .line 333
    iget-object v3, v0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->boxes:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    iget v3, v4, Lcom/lostpixels/fieldservice/ui/FlowTextView$Box;->bottomRighty:I

    if-le v3, v8, :cond_0

    move v8, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 338
    :cond_1
    iget-object v1, v0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 348
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/ui/FlowTextView;->getLineHeight()I

    move-result v11

    .line 350
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 355
    iget-object v2, v0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mLinks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v12, 0x0

    .line 357
    :goto_1
    array-length v6, v10

    const/4 v13, 0x1

    sub-int/2addr v6, v13

    if-gt v12, v6, :cond_10

    .line 359
    aget-object v6, v10, v12

    .line 360
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v14

    if-gtz v14, :cond_2

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    move v5, v4

    :goto_2
    move-object v9, v1

    goto/16 :goto_c

    :cond_2
    move-object v14, v6

    move v6, v4

    .line 366
    :goto_3
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_f

    add-int/lit8 v3, v3, 0x1

    mul-int v2, v3, v11

    int-to-float v2, v2

    .line 369
    invoke-direct {v0, v2, v11}, Lcom/lostpixels/fieldservice/ui/FlowTextView;->getLine(FI)Lcom/lostpixels/fieldservice/ui/FlowTextView$Line;

    move-result-object v4

    .line 370
    iget v15, v4, Lcom/lostpixels/fieldservice/ui/FlowTextView$Line;->leftBound:F

    .line 371
    iget v4, v4, Lcom/lostpixels/fieldservice/ui/FlowTextView$Line;->rightBound:F

    sub-float/2addr v4, v15

    .line 376
    :goto_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "maxWidth: "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "tv"

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-direct {v0, v14, v4}, Lcom/lostpixels/fieldservice/ui/FlowTextView;->getChunk(Ljava/lang/String;F)I

    move-result v7

    move/from16 v16, v7

    move v7, v2

    move/from16 v2, v16

    move/from16 v16, v15

    move v15, v3

    move/from16 v3, v16

    move/from16 v16, v4

    :goto_5
    const/4 v4, -0x1

    if-ne v2, v4, :cond_3

    add-int/lit8 v15, v15, 0x1

    mul-int v2, v15, v11

    int-to-float v7, v2

    .line 381
    invoke-direct {v0, v7, v11}, Lcom/lostpixels/fieldservice/ui/FlowTextView;->getLine(FI)Lcom/lostpixels/fieldservice/ui/FlowTextView$Line;

    move-result-object v2

    .line 382
    iget v3, v2, Lcom/lostpixels/fieldservice/ui/FlowTextView$Line;->leftBound:F

    .line 383
    iget v2, v2, Lcom/lostpixels/fieldservice/ui/FlowTextView$Line;->rightBound:F

    sub-float/2addr v2, v3

    .line 384
    invoke-direct {v0, v14, v2}, Lcom/lostpixels/fieldservice/ui/FlowTextView;->getChunk(Ljava/lang/String;F)I

    move-result v4

    move/from16 v16, v2

    move v2, v4

    goto :goto_5

    :cond_3
    add-int v4, v6, v2

    if-le v2, v13, :cond_4

    const/4 v13, 0x0

    .line 390
    invoke-virtual {v14, v13, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    goto :goto_6

    .line 392
    :cond_4
    const-string v18, ""

    .line 395
    :goto_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 397
    iget-boolean v13, v0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mIsHtml:Z

    if-eqz v13, :cond_6

    .line 398
    iget-object v13, v0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mText:Ljava/lang/CharSequence;

    check-cast v13, Landroid/text/Spanned;

    const-class v0, Ljava/lang/Object;

    invoke-interface {v13, v5, v4, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 399
    array-length v13, v0

    if-lez v13, :cond_5

    move v13, v5

    move v5, v3

    move v3, v13

    move v13, v2

    move-object v2, v0

    move-object/from16 v0, p0

    .line 400
    invoke-direct/range {v0 .. v5}, Lcom/lostpixels/fieldservice/ui/FlowTextView;->parseSpans(Ljava/util/ArrayList;[Ljava/lang/Object;IIF)F

    move-result v2

    move/from16 v21, v5

    move v5, v3

    move/from16 v3, v21

    :goto_7
    move-object/from16 v19, v1

    goto :goto_8

    :cond_5
    move-object/from16 v0, p0

    :cond_6
    move v13, v2

    move/from16 v2, v16

    goto :goto_7

    .line 409
    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v3

    const-string v3, "actualWidth: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    cmpl-float v1, v2, v16

    if-lez v1, :cond_7

    const/high16 v1, 0x40a00000    # 5.0f

    sub-float v16, v16, v1

    :cond_7
    cmpl-float v1, v2, v16

    if-gtz v1, :cond_e

    .line 421
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "charOffsetEnd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_8

    .line 424
    new-instance v1, Lcom/lostpixels/fieldservice/ui/FlowTextView$HtmlObject;

    move v6, v4

    const/4 v4, 0x0

    move v2, v6

    iget-object v6, v0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mTextPaint:Landroid/text/TextPaint;

    const/4 v3, 0x0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    move/from16 v16, v2

    move-object/from16 v2, v18

    move-object/from16 v9, v19

    move/from16 v5, v20

    invoke-direct/range {v0 .. v6}, Lcom/lostpixels/fieldservice/ui/FlowTextView$HtmlObject;-><init>(Lcom/lostpixels/fieldservice/ui/FlowTextView;Ljava/lang/String;IIFLandroid/text/TextPaint;)V

    move-object/from16 v21, v1

    move-object v1, v0

    move-object/from16 v0, v21

    .line 425
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_8
    move/from16 v16, v4

    move-object/from16 v9, v19

    .line 428
    :goto_9
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v6, :cond_b

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v18, v1, 0x1

    move-object v1, v2

    check-cast v1, Lcom/lostpixels/fieldservice/ui/FlowTextView$HtmlObject;

    .line 430
    instance-of v2, v1, Lcom/lostpixels/fieldservice/ui/FlowTextView$HtmlLink;

    if-eqz v2, :cond_9

    .line 431
    move-object v2, v1

    check-cast v2, Lcom/lostpixels/fieldservice/ui/FlowTextView$HtmlLink;

    .line 432
    iget-object v3, v2, Lcom/lostpixels/fieldservice/ui/FlowTextView$HtmlObject;->paint:Landroid/text/TextPaint;

    iget-object v4, v1, Lcom/lostpixels/fieldservice/ui/FlowTextView$HtmlObject;->content:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    int-to-float v4, v11

    .line 433
    invoke-direct {v0, v2, v7, v3, v4}, Lcom/lostpixels/fieldservice/ui/FlowTextView;->addLink(Lcom/lostpixels/fieldservice/ui/FlowTextView$HtmlLink;FFF)V

    .line 436
    :cond_9
    iget-object v2, v1, Lcom/lostpixels/fieldservice/ui/FlowTextView$HtmlObject;->content:Ljava/lang/String;

    iget v3, v1, Lcom/lostpixels/fieldservice/ui/FlowTextView$HtmlObject;->xOffset:F

    iget-object v5, v1, Lcom/lostpixels/fieldservice/ui/FlowTextView$HtmlObject;->paint:Landroid/text/TextPaint;

    move v4, v7

    move-object v7, v1

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/lostpixels/fieldservice/ui/FlowTextView;->paintObject(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 438
    iget-boolean v1, v7, Lcom/lostpixels/fieldservice/ui/FlowTextView$HtmlObject;->recycle:Z

    if-eqz v1, :cond_a

    .line 439
    iget-object v1, v7, Lcom/lostpixels/fieldservice/ui/FlowTextView$HtmlObject;->paint:Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Lcom/lostpixels/fieldservice/ui/FlowTextView;->recyclePaint(Landroid/text/TextPaint;)V

    :cond_a
    move v7, v4

    move/from16 v1, v18

    goto :goto_a

    :cond_b
    move v4, v7

    const/4 v1, 0x1

    if-lt v13, v1, :cond_c

    .line 445
    invoke-virtual {v14, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object v14, v1

    .line 446
    :cond_c
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    add-int/lit8 v1, v16, 0x1

    move v5, v1

    goto :goto_b

    :cond_d
    move/from16 v5, v16

    :goto_b
    move v2, v4

    move v6, v5

    move-object v1, v9

    move v3, v15

    const/16 v9, 0x8

    const/4 v13, 0x1

    goto/16 :goto_3

    :cond_e
    move v4, v7

    move/from16 v3, v20

    move v1, v15

    move v15, v3

    move v3, v1

    move v2, v4

    move/from16 v4, v16

    move-object/from16 v1, v19

    const/4 v13, 0x1

    goto/16 :goto_4

    :cond_f
    move v4, v6

    goto/16 :goto_2

    :goto_c
    add-int/lit8 v12, v12, 0x1

    move-object v1, v9

    const/16 v9, 0x8

    goto/16 :goto_1

    :cond_10
    int-to-float v1, v11

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    add-float/2addr v2, v1

    .line 456
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/16 v17, 0x1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 457
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 458
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "hideable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 459
    iget v3, v0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->pageHeight:I

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_13

    .line 460
    iget-object v3, v0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->boxes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v17, 0x1

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/ui/FlowTextView$Box;

    iget v3, v3, Lcom/lostpixels/fieldservice/ui/FlowTextView$Box;->topLefty:I

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/ui/FlowTextView;->getLineHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v3, v2, v3

    if-gez v3, :cond_12

    const/16 v3, 0x8

    .line 461
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    const/4 v13, 0x0

    goto :goto_d

    :cond_12
    const/4 v13, 0x0

    .line 465
    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    goto :goto_d

    :cond_13
    const/16 v3, 0x8

    const/4 v13, 0x0

    .line 468
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_d
    float-to-int v1, v2

    .line 475
    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mDesiredHeight:I

    .line 476
    iget-boolean v1, v0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->needsMeasure:Z

    if-eqz v1, :cond_14

    .line 477
    iput-boolean v13, v0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->needsMeasure:Z

    .line 478
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_14
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 501
    const-string v0, "flowText"

    const-string v1, "onMeasure"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 504
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 505
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 506
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 507
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 516
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    :goto_0
    if-ne v1, v2, :cond_1

    goto :goto_1

    .line 523
    :cond_1
    iget p2, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mDesiredHeight:I

    .line 526
    :goto_1
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/ui/FlowTextView;->getLineHeight()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setBitmaps(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 715
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->bitmaps:Ljava/util/ArrayList;

    return-void
.end method

.method public setColor(I)V
    .locals 4

    .line 94
    iput p1, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mColor:I

    .line 97
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mTextPaint:Landroid/text/TextPaint;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mPaintHeap:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Landroid/text/TextPaint;

    .line 102
    iget v3, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/ui/FlowTextView;->invalidate()V

    return-void
.end method

.method public setOnLinkClickListener(Lcom/lostpixels/fieldservice/ui/FlowTextView$OnLinkClickListener;)V
    .locals 0

    return-void
.end method

.method public setPageHeight(I)V
    .locals 0

    .line 719
    iput p1, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->pageHeight:I

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 689
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mText:Ljava/lang/CharSequence;

    .line 690
    instance-of v0, p1, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 691
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mIsHtml:Z

    .line 692
    move-object v0, p1

    check-cast v0, Landroid/text/Spannable;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mSpannable:Landroid/text/Spannable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 695
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mIsHtml:Z

    .line 698
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    iput p1, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mTextLength:I

    .line 700
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/ui/FlowTextView;->invalidate()V

    return-void
.end method

.method public setTextSize(F)V
    .locals 1

    .line 164
    iput p1, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mTextsize:F

    .line 165
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 166
    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mLinkPaint:Landroid/text/TextPaint;

    iget v0, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mTextsize:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 167
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/ui/FlowTextView;->invalidate()V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 173
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView;->mLinkPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 174
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/ui/FlowTextView;->invalidate()V

    return-void
.end method
