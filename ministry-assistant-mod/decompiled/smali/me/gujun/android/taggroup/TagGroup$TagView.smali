.class Lme/gujun/android/taggroup/TagGroup$TagView;
.super Landroid/widget/EditText;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/gujun/android/taggroup/TagGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TagView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/gujun/android/taggroup/TagGroup$TagView$ZanyInputConnection;
    }
.end annotation


# instance fields
.field private actualText:Ljava/lang/String;

.field private deleteHint:Z

.field private isChecked:Z

.field private isPressed:Z

.field private justEdited:Z

.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mBorderPaint:Landroid/graphics/Paint;

.field private mBorderPath:Landroid/graphics/Path;

.field private mCheckedMarkerBound:Landroid/graphics/RectF;

.field private mCheckedMarkerPaint:Landroid/graphics/Paint;

.field private mHorizontalBlankFillRectF:Landroid/graphics/RectF;

.field private mLeftCornerRectF:Landroid/graphics/RectF;

.field private mOutRect:Landroid/graphics/Rect;

.field private mPathEffect:Landroid/graphics/PathEffect;

.field private mRightCornerRectF:Landroid/graphics/RectF;

.field private mState:I

.field private mVerticalBlankFillRectF:Landroid/graphics/RectF;

.field final synthetic this$0:Lme/gujun/android/taggroup/TagGroup;


# direct methods
.method public constructor <init>(Lme/gujun/android/taggroup/TagGroup;Landroid/content/Context;ILjava/lang/CharSequence;)V
    .locals 6

    .line 960
    iput-object p1, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->this$0:Lme/gujun/android/taggroup/TagGroup;

    .line 961
    invoke-direct {p0, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x0

    .line 898
    iput-boolean p2, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->isChecked:Z

    .line 903
    iput-boolean p2, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->isPressed:Z

    .line 905
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mBorderPaint:Landroid/graphics/Paint;

    .line 907
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 909
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mCheckedMarkerPaint:Landroid/graphics/Paint;

    .line 914
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mLeftCornerRectF:Landroid/graphics/RectF;

    .line 919
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mRightCornerRectF:Landroid/graphics/RectF;

    .line 924
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mHorizontalBlankFillRectF:Landroid/graphics/RectF;

    .line 929
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mVerticalBlankFillRectF:Landroid/graphics/RectF;

    .line 934
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mCheckedMarkerBound:Landroid/graphics/RectF;

    .line 939
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mOutRect:Landroid/graphics/Rect;

    .line 944
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mBorderPath:Landroid/graphics/Path;

    .line 949
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object v0, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mPathEffect:Landroid/graphics/PathEffect;

    .line 952
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 953
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lme/gujun/android/taggroup/TagGroup;->access$700(Lme/gujun/android/taggroup/TagGroup;)F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 954
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 955
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mCheckedMarkerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 956
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mCheckedMarkerPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 957
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mCheckedMarkerPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lme/gujun/android/taggroup/TagGroup;->access$800(Lme/gujun/android/taggroup/TagGroup;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 962
    invoke-static {p1}, Lme/gujun/android/taggroup/TagGroup;->access$900(Lme/gujun/android/taggroup/TagGroup;)I

    move-result v0

    invoke-static {p1}, Lme/gujun/android/taggroup/TagGroup;->access$1000(Lme/gujun/android/taggroup/TagGroup;)I

    move-result v3

    invoke-static {p1}, Lme/gujun/android/taggroup/TagGroup;->access$900(Lme/gujun/android/taggroup/TagGroup;)I

    move-result v4

    invoke-static {p1}, Lme/gujun/android/taggroup/TagGroup;->access$1000(Lme/gujun/android/taggroup/TagGroup;)I

    move-result v5

    invoke-virtual {p0, v0, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 963
    new-instance v0, Lme/gujun/android/taggroup/TagGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v0, v3, v3}, Lme/gujun/android/taggroup/TagGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x11

    .line 967
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 968
    invoke-virtual {p0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 969
    invoke-static {p1}, Lme/gujun/android/taggroup/TagGroup;->access$1100(Lme/gujun/android/taggroup/TagGroup;)F

    move-result p4

    invoke-virtual {p0, p2, p4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 971
    iput p3, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mState:I

    .line 972
    const-string p4, ""

    iput-object p4, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->actualText:Ljava/lang/String;

    .line 973
    iput-boolean p2, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->justEdited:Z

    .line 974
    iput-boolean p2, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->deleteHint:Z

    .line 976
    invoke-static {p1}, Lme/gujun/android/taggroup/TagGroup;->access$400(Lme/gujun/android/taggroup/TagGroup;)Z

    move-result p4

    if-nez p4, :cond_1

    invoke-static {p1}, Lme/gujun/android/taggroup/TagGroup;->access$500(Lme/gujun/android/taggroup/TagGroup;)Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p4, 0x1

    :goto_1
    invoke-virtual {p0, p4}, Landroid/view/View;->setClickable(Z)V

    if-ne p3, v2, :cond_2

    const/4 p4, 0x1

    goto :goto_2

    :cond_2
    const/4 p4, 0x0

    .line 977
    :goto_2
    invoke-virtual {p0, p4}, Landroid/view/View;->setFocusable(Z)V

    if-ne p3, v2, :cond_3

    const/4 p4, 0x1

    goto :goto_3

    :cond_3
    const/4 p4, 0x0

    .line 978
    :goto_3
    invoke-virtual {p0, p4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    const/4 p4, 0x0

    if-ne p3, v2, :cond_4

    .line 979
    invoke-static {p1}, Lme/gujun/android/taggroup/TagGroup;->access$1200(Lme/gujun/android/taggroup/TagGroup;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_4

    :cond_4
    const/4 v0, 0x3

    if-ne p3, v0, :cond_5

    invoke-static {p1}, Lme/gujun/android/taggroup/TagGroup;->access$1300(Lme/gujun/android/taggroup/TagGroup;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_4

    :cond_5
    move-object v0, p4

    :goto_4
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    if-ne p3, v2, :cond_6

    .line 980
    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p4

    :cond_6
    invoke-virtual {p0, p4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 983
    new-instance p4, Lme/gujun/android/taggroup/TagGroup$TagView$1;

    invoke-direct {p4, p0, p1, p3}, Lme/gujun/android/taggroup/TagGroup$TagView$1;-><init>(Lme/gujun/android/taggroup/TagGroup$TagView;Lme/gujun/android/taggroup/TagGroup;I)V

    invoke-virtual {p0, p4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    if-ne p3, v2, :cond_7

    .line 991
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 994
    new-instance p3, Lme/gujun/android/taggroup/TagGroup$TagView$2;

    invoke-direct {p3, p0, p1}, Lme/gujun/android/taggroup/TagGroup$TagView$2;-><init>(Lme/gujun/android/taggroup/TagGroup$TagView;Lme/gujun/android/taggroup/TagGroup;)V

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1039
    new-instance p3, Lme/gujun/android/taggroup/TagGroup$TagView$3;

    invoke-direct {p3, p0, p1}, Lme/gujun/android/taggroup/TagGroup$TagView$3;-><init>(Lme/gujun/android/taggroup/TagGroup$TagView;Lme/gujun/android/taggroup/TagGroup;)V

    invoke-virtual {p0, p3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1068
    new-instance p3, Lme/gujun/android/taggroup/TagGroup$TagView$4;

    invoke-direct {p3, p0, p1}, Lme/gujun/android/taggroup/TagGroup$TagView$4;-><init>(Lme/gujun/android/taggroup/TagGroup$TagView;Lme/gujun/android/taggroup/TagGroup;)V

    .line 1090
    new-array p4, v1, [Landroid/text/InputFilter;

    aput-object p3, p4, p2

    invoke-virtual {p0, p4}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 1093
    new-instance p2, Lme/gujun/android/taggroup/TagGroup$TagView$5;

    invoke-direct {p2, p0, p1}, Lme/gujun/android/taggroup/TagGroup$TagView$5;-><init>(Lme/gujun/android/taggroup/TagGroup$TagView;Lme/gujun/android/taggroup/TagGroup;)V

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1152
    :cond_7
    invoke-direct {p0}, Lme/gujun/android/taggroup/TagGroup$TagView;->invalidatePaint()V

    return-void

    nop

    :array_0
    .array-data 4
        0x41200000    # 10.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method static synthetic access$000(Lme/gujun/android/taggroup/TagGroup$TagView;)Z
    .locals 0

    .line 860
    iget-boolean p0, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->justEdited:Z

    return p0
.end method

.method static synthetic access$002(Lme/gujun/android/taggroup/TagGroup$TagView;Z)Z
    .locals 0

    .line 860
    iput-boolean p1, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->justEdited:Z

    return p1
.end method

.method static synthetic access$100(Lme/gujun/android/taggroup/TagGroup$TagView;)Ljava/lang/String;
    .locals 0

    .line 860
    iget-object p0, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->actualText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lme/gujun/android/taggroup/TagGroup$TagView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 860
    iput-object p1, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->actualText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Lme/gujun/android/taggroup/TagGroup$TagView;)Z
    .locals 0

    .line 860
    iget-boolean p0, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->deleteHint:Z

    return p0
.end method

.method static synthetic access$1602(Lme/gujun/android/taggroup/TagGroup$TagView;Z)Z
    .locals 0

    .line 860
    iput-boolean p1, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->deleteHint:Z

    return p1
.end method

.method static synthetic access$200(Lme/gujun/android/taggroup/TagGroup$TagView;)I
    .locals 0

    .line 860
    iget p0, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mState:I

    return p0
.end method

.method static synthetic access$300(Lme/gujun/android/taggroup/TagGroup$TagView;)Z
    .locals 0

    .line 860
    iget-boolean p0, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->isChecked:Z

    return p0
.end method

.method private invalidatePaint()V
    .locals 2

    .line 1206
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {v0}, Lme/gujun/android/taggroup/TagGroup;->access$400(Lme/gujun/android/taggroup/TagGroup;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {v0}, Lme/gujun/android/taggroup/TagGroup;->access$500(Lme/gujun/android/taggroup/TagGroup;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1232
    :cond_0
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mBorderPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {v1}, Lme/gujun/android/taggroup/TagGroup;->access$2400(Lme/gujun/android/taggroup/TagGroup;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1233
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mBackgroundPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {v1}, Lme/gujun/android/taggroup/TagGroup;->access$1800(Lme/gujun/android/taggroup/TagGroup;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1234
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {v0}, Lme/gujun/android/taggroup/TagGroup;->access$2500(Lme/gujun/android/taggroup/TagGroup;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 1207
    :cond_1
    :goto_0
    iget v0, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1208
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mBorderPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {v1}, Lme/gujun/android/taggroup/TagGroup;->access$1700(Lme/gujun/android/taggroup/TagGroup;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1209
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mBorderPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mPathEffect:Landroid/graphics/PathEffect;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 1210
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mBackgroundPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {v1}, Lme/gujun/android/taggroup/TagGroup;->access$1800(Lme/gujun/android/taggroup/TagGroup;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1211
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {v0}, Lme/gujun/android/taggroup/TagGroup;->access$1900(Lme/gujun/android/taggroup/TagGroup;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 1212
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {v0}, Lme/gujun/android/taggroup/TagGroup;->access$2000(Lme/gujun/android/taggroup/TagGroup;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1214
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mBorderPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {v1}, Lme/gujun/android/taggroup/TagGroup;->access$1700(Lme/gujun/android/taggroup/TagGroup;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1215
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mBorderPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mPathEffect:Landroid/graphics/PathEffect;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 1216
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mBackgroundPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {v1}, Lme/gujun/android/taggroup/TagGroup;->access$1800(Lme/gujun/android/taggroup/TagGroup;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1217
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {v0}, Lme/gujun/android/taggroup/TagGroup;->access$1900(Lme/gujun/android/taggroup/TagGroup;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 1218
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {v0}, Lme/gujun/android/taggroup/TagGroup;->access$2000(Lme/gujun/android/taggroup/TagGroup;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 1220
    :cond_3
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mBorderPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 1221
    iget-boolean v0, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->isChecked:Z

    if-eqz v0, :cond_4

    .line 1222
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mBorderPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {v1}, Lme/gujun/android/taggroup/TagGroup;->access$2100(Lme/gujun/android/taggroup/TagGroup;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1223
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mBackgroundPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {v1}, Lme/gujun/android/taggroup/TagGroup;->access$2200(Lme/gujun/android/taggroup/TagGroup;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1224
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {v0}, Lme/gujun/android/taggroup/TagGroup;->access$2300(Lme/gujun/android/taggroup/TagGroup;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 1226
    :cond_4
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mBorderPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {v1}, Lme/gujun/android/taggroup/TagGroup;->access$2400(Lme/gujun/android/taggroup/TagGroup;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1227
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mBackgroundPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {v1}, Lme/gujun/android/taggroup/TagGroup;->access$1800(Lme/gujun/android/taggroup/TagGroup;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1228
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {v0}, Lme/gujun/android/taggroup/TagGroup;->access$2500(Lme/gujun/android/taggroup/TagGroup;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1237
    :goto_1
    iget-boolean v0, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->isPressed:Z

    if-eqz v0, :cond_5

    .line 1238
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mBackgroundPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {v1}, Lme/gujun/android/taggroup/TagGroup;->access$2600(Lme/gujun/android/taggroup/TagGroup;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_5
    return-void
.end method


# virtual methods
.method public endInput()V
    .locals 1

    const/4 v0, 0x0

    .line 1179
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 1180
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    const/4 v0, 0x0

    .line 1182
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 1184
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const/4 v0, 0x1

    .line 1186
    iput v0, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mState:I

    .line 1187
    invoke-direct {p0}, Lme/gujun/android/taggroup/TagGroup$TagView;->invalidatePaint()V

    .line 1188
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method protected getDefaultEditable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isInputAvailable()Z
    .locals 1

    .line 1202
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    .line 1350
    new-instance v0, Lme/gujun/android/taggroup/TagGroup$TagView$ZanyInputConnection;

    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lme/gujun/android/taggroup/TagGroup$TagView$ZanyInputConnection;-><init>(Lme/gujun/android/taggroup/TagGroup$TagView;Landroid/view/inputmethod/InputConnection;Z)V

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1244
    iget-object v1, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mLeftCornerRectF:Landroid/graphics/RectF;

    const/4 v4, 0x1

    iget-object v5, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mBackgroundPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x3ccc0000    # -180.0f

    const/high16 v3, 0x42b40000    # 90.0f

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    move-object v6, v0

    .line 1245
    iget-object v7, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mLeftCornerRectF:Landroid/graphics/RectF;

    const/4 v10, 0x1

    iget-object v11, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mBackgroundPaint:Landroid/graphics/Paint;

    const/high16 v8, -0x3c790000    # -270.0f

    const/high16 v9, 0x42b40000    # 90.0f

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 1246
    iget-object v7, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mRightCornerRectF:Landroid/graphics/RectF;

    iget-object v11, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mBackgroundPaint:Landroid/graphics/Paint;

    const/high16 v8, -0x3d4c0000    # -90.0f

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 1247
    iget-object v7, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mRightCornerRectF:Landroid/graphics/RectF;

    iget-object v11, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mBackgroundPaint:Landroid/graphics/Paint;

    const/4 v8, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 1248
    iget-object p1, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mHorizontalBlankFillRectF:Landroid/graphics/RectF;

    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, p1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1249
    iget-object p1, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mVerticalBlankFillRectF:Landroid/graphics/RectF;

    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, p1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1251
    iget-boolean p1, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->isChecked:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {p1}, Lme/gujun/android/taggroup/TagGroup;->access$400(Lme/gujun/android/taggroup/TagGroup;)Z

    move-result p1

    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {v0}, Lme/gujun/android/taggroup/TagGroup;->access$500(Lme/gujun/android/taggroup/TagGroup;)Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 1252
    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    .line 1253
    iget-object p1, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mCheckedMarkerBound:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mCheckedMarkerBound:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    const/high16 v1, 0x42340000    # 45.0f

    invoke-virtual {v6, v1, p1, v0}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1254
    iget-object p1, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mCheckedMarkerBound:Landroid/graphics/RectF;

    iget v7, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    iget-object p1, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mCheckedMarkerBound:Landroid/graphics/RectF;

    iget v9, p1, Landroid/graphics/RectF;->right:F

    .line 1255
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    iget-object v11, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mCheckedMarkerPaint:Landroid/graphics/Paint;

    .line 1254
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1256
    iget-object p1, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mCheckedMarkerBound:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    iget-object p1, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mCheckedMarkerBound:Landroid/graphics/RectF;

    iget v8, p1, Landroid/graphics/RectF;->top:F

    .line 1257
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v9

    iget-object p1, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mCheckedMarkerBound:Landroid/graphics/RectF;

    iget v10, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v11, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mCheckedMarkerPaint:Landroid/graphics/Paint;

    .line 1256
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1258
    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V

    .line 1260
    :cond_0
    iget-object p1, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mBorderPath:Landroid/graphics/Path;

    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, p1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1261
    invoke-super {p0, v6}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 11

    .line 1266
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onSizeChanged(IIII)V

    .line 1267
    iget-object p3, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {p3}, Lme/gujun/android/taggroup/TagGroup;->access$700(Lme/gujun/android/taggroup/TagGroup;)F

    move-result p3

    float-to-int p3, p3

    .line 1268
    iget-object p4, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {p4}, Lme/gujun/android/taggroup/TagGroup;->access$700(Lme/gujun/android/taggroup/TagGroup;)F

    move-result p4

    float-to-int p4, p4

    add-int/2addr p1, p3

    int-to-float p1, p1

    .line 1269
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {v0}, Lme/gujun/android/taggroup/TagGroup;->access$700(Lme/gujun/android/taggroup/TagGroup;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    sub-float/2addr p1, v0

    float-to-int p1, p1

    add-int v0, p4, p2

    int-to-float v0, v0

    .line 1270
    iget-object v2, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {v2}, Lme/gujun/android/taggroup/TagGroup;->access$700(Lme/gujun/android/taggroup/TagGroup;)F

    move-result v2

    mul-float v2, v2, v1

    sub-float/2addr v0, v2

    float-to-int v0, v0

    sub-int v2, v0, p4

    .line 1274
    iget-object v3, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mLeftCornerRectF:Landroid/graphics/RectF;

    int-to-float v4, p3

    int-to-float v5, p4

    add-int v6, p3, v2

    int-to-float v6, v6

    add-int v7, p4, v2

    int-to-float v7, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1275
    iget-object v3, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mRightCornerRectF:Landroid/graphics/RectF;

    sub-int v6, p1, v2

    int-to-float v6, v6

    int-to-float v8, p1

    invoke-virtual {v3, v6, v5, v8, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1277
    iget-object v3, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mBorderPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 1278
    iget-object v3, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mBorderPath:Landroid/graphics/Path;

    iget-object v6, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mLeftCornerRectF:Landroid/graphics/RectF;

    const/high16 v7, -0x3ccc0000    # -180.0f

    const/high16 v9, 0x42b40000    # 90.0f

    invoke-virtual {v3, v6, v7, v9}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 1279
    iget-object v3, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mBorderPath:Landroid/graphics/Path;

    iget-object v6, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mLeftCornerRectF:Landroid/graphics/RectF;

    const/high16 v7, -0x3c790000    # -270.0f

    invoke-virtual {v3, v6, v7, v9}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 1280
    iget-object v3, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mBorderPath:Landroid/graphics/Path;

    iget-object v6, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mRightCornerRectF:Landroid/graphics/RectF;

    const/high16 v7, -0x3d4c0000    # -90.0f

    invoke-virtual {v3, v6, v7, v9}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 1281
    iget-object v3, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mBorderPath:Landroid/graphics/Path;

    iget-object v6, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mRightCornerRectF:Landroid/graphics/RectF;

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7, v9}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    int-to-float v3, v2

    div-float v1, v3, v1

    float-to-int v1, v1

    .line 1284
    iget-object v6, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mBorderPath:Landroid/graphics/Path;

    add-int/2addr p3, v1

    int-to-float p3, p3

    invoke-virtual {v6, p3, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1285
    iget-object v6, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mBorderPath:Landroid/graphics/Path;

    sub-int v7, p1, v1

    int-to-float v7, v7

    invoke-virtual {v6, v7, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1287
    iget-object v6, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mBorderPath:Landroid/graphics/Path;

    int-to-float v9, v0

    invoke-virtual {v6, p3, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1288
    iget-object v6, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mBorderPath:Landroid/graphics/Path;

    invoke-virtual {v6, v7, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1290
    iget-object v6, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mBorderPath:Landroid/graphics/Path;

    add-int v10, p4, v1

    int-to-float v10, v10

    invoke-virtual {v6, v4, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1291
    iget-object v6, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mBorderPath:Landroid/graphics/Path;

    sub-int v1, v0, v1

    int-to-float v1, v1

    invoke-virtual {v6, v4, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1293
    iget-object v6, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mBorderPath:Landroid/graphics/Path;

    invoke-virtual {v6, v8, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1294
    iget-object v6, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mBorderPath:Landroid/graphics/Path;

    invoke-virtual {v6, v8, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1296
    iget-object v6, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mHorizontalBlankFillRectF:Landroid/graphics/RectF;

    invoke-virtual {v6, v4, v10, v8, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1297
    iget-object v1, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mVerticalBlankFillRectF:Landroid/graphics/RectF;

    invoke-virtual {v1, p3, v5, v7, v9}, Landroid/graphics/RectF;->set(FFFF)V

    int-to-float p2, p2

    const/high16 p3, 0x40200000    # 2.5f

    div-float/2addr p2, p3

    float-to-int p2, p2

    .line 1301
    iget-object v1, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mCheckedMarkerBound:Landroid/graphics/RectF;

    sub-int v4, p1, p2

    iget-object v5, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {v5}, Lme/gujun/android/taggroup/TagGroup;->access$900(Lme/gujun/android/taggroup/TagGroup;)I

    move-result v5

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x3

    int-to-float v4, v4

    div-int/lit8 v2, v2, 0x2

    add-int/2addr p4, v2

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p4, p2

    int-to-float p4, p4

    iget-object v5, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->this$0:Lme/gujun/android/taggroup/TagGroup;

    .line 1303
    invoke-static {v5}, Lme/gujun/android/taggroup/TagGroup;->access$900(Lme/gujun/android/taggroup/TagGroup;)I

    move-result v5

    sub-int/2addr p1, v5

    add-int/lit8 p1, p1, 0x3

    int-to-float p1, p1

    sub-int/2addr v0, v2

    add-int/2addr v0, p2

    int-to-float p2, v0

    .line 1301
    invoke-virtual {v1, v4, p4, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1307
    iget-boolean p1, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->isChecked:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {p1}, Lme/gujun/android/taggroup/TagGroup;->access$400(Lme/gujun/android/taggroup/TagGroup;)Z

    move-result p1

    iget-object p2, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {p2}, Lme/gujun/android/taggroup/TagGroup;->access$500(Lme/gujun/android/taggroup/TagGroup;)Z

    move-result p2

    if-eq p1, p2, :cond_0

    .line 1308
    iget-object p1, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {p1}, Lme/gujun/android/taggroup/TagGroup;->access$900(Lme/gujun/android/taggroup/TagGroup;)I

    move-result p1

    iget-object p2, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->this$0:Lme/gujun/android/taggroup/TagGroup;

    .line 1309
    invoke-static {p2}, Lme/gujun/android/taggroup/TagGroup;->access$1000(Lme/gujun/android/taggroup/TagGroup;)I

    move-result p2

    iget-object p4, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->this$0:Lme/gujun/android/taggroup/TagGroup;

    .line 1310
    invoke-static {p4}, Lme/gujun/android/taggroup/TagGroup;->access$900(Lme/gujun/android/taggroup/TagGroup;)I

    move-result p4

    int-to-float p4, p4

    div-float/2addr v3, p3

    add-float/2addr p4, v3

    const/high16 p3, 0x40400000    # 3.0f

    add-float/2addr p4, p3

    float-to-int p3, p4

    iget-object p4, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->this$0:Lme/gujun/android/taggroup/TagGroup;

    .line 1311
    invoke-static {p4}, Lme/gujun/android/taggroup/TagGroup;->access$1000(Lme/gujun/android/taggroup/TagGroup;)I

    move-result p4

    .line 1308
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1317
    iget v0, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1319
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 1322
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    const/4 v3, 0x0

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 1331
    :cond_1
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mOutRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1332
    iput-boolean v3, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->isPressed:Z

    .line 1333
    invoke-direct {p0}, Lme/gujun/android/taggroup/TagGroup$TagView;->invalidatePaint()V

    .line 1334
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 1339
    :cond_2
    iput-boolean v3, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->isPressed:Z

    .line 1340
    invoke-direct {p0}, Lme/gujun/android/taggroup/TagGroup$TagView;->invalidatePaint()V

    .line 1341
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 1324
    :cond_3
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->mOutRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1325
    iput-boolean v2, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->isPressed:Z

    .line 1326
    invoke-direct {p0}, Lme/gujun/android/taggroup/TagGroup$TagView;->invalidatePaint()V

    .line 1327
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1345
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setChecked(Z)V
    .locals 4

    .line 1161
    iput-boolean p1, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->isChecked:Z

    .line 1164
    iget-object p1, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {p1}, Lme/gujun/android/taggroup/TagGroup;->access$400(Lme/gujun/android/taggroup/TagGroup;)Z

    move-result p1

    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {v0}, Lme/gujun/android/taggroup/TagGroup;->access$500(Lme/gujun/android/taggroup/TagGroup;)Z

    move-result v0

    if-eq p1, v0, :cond_1

    .line 1165
    iget-object p1, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {p1}, Lme/gujun/android/taggroup/TagGroup;->access$900(Lme/gujun/android/taggroup/TagGroup;)I

    move-result p1

    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->this$0:Lme/gujun/android/taggroup/TagGroup;

    .line 1166
    invoke-static {v0}, Lme/gujun/android/taggroup/TagGroup;->access$1000(Lme/gujun/android/taggroup/TagGroup;)I

    move-result v0

    .line 1167
    iget-boolean v1, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->isChecked:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {v1}, Lme/gujun/android/taggroup/TagGroup;->access$900(Lme/gujun/android/taggroup/TagGroup;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40200000    # 2.5f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x40400000    # 3.0f

    add-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_0

    .line 1168
    :cond_0
    iget-object v1, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {v1}, Lme/gujun/android/taggroup/TagGroup;->access$900(Lme/gujun/android/taggroup/TagGroup;)I

    move-result v1

    :goto_0
    iget-object v2, p0, Lme/gujun/android/taggroup/TagGroup$TagView;->this$0:Lme/gujun/android/taggroup/TagGroup;

    .line 1169
    invoke-static {v2}, Lme/gujun/android/taggroup/TagGroup;->access$1000(Lme/gujun/android/taggroup/TagGroup;)I

    move-result v2

    .line 1165
    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 1171
    :cond_1
    invoke-direct {p0}, Lme/gujun/android/taggroup/TagGroup$TagView;->invalidatePaint()V

    return-void
.end method
