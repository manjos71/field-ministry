.class public Lme/gujun/android/taggroup/TagGroup;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/gujun/android/taggroup/TagGroup$OnTagChangeListener;,
        Lme/gujun/android/taggroup/TagGroup$OnTagClickListener;,
        Lme/gujun/android/taggroup/TagGroup$InternalTagClickListener;,
        Lme/gujun/android/taggroup/TagGroup$TagView;,
        Lme/gujun/android/taggroup/TagGroup$SavedState;,
        Lme/gujun/android/taggroup/TagGroup$LayoutParams;
    }
.end annotation


# instance fields
.field private allowRepeats:Z

.field private autoCompleteTags:Ljava/util/List;

.field private backgroundColor:I

.field private borderColor:I

.field private borderStrokeWidth:F

.field private buttonHint:Ljava/lang/CharSequence;

.field private checkedBackgroundColor:I

.field private checkedBorderColor:I

.field private checkedMarkerColor:I

.field private checkedTextColor:I

.field private dashBorderColor:I

.field private final default_background_color:I

.field private final default_border_color:I

.field private final default_border_stroke_width:F

.field private final default_checked_background_color:I

.field private final default_checked_border_color:I

.field private final default_checked_marker_color:I

.field private final default_checked_text_color:I

.field private final default_dash_border_color:I

.field private final default_horizontal_padding:F

.field private final default_horizontal_spacing:F

.field private final default_input_hint_color:I

.field private final default_input_text_color:I

.field private final default_pressed_background_color:I

.field private final default_text_color:I

.field private final default_text_size:F

.field private final default_vertical_padding:F

.field private final default_vertical_spacing:F

.field private horizontalPadding:I

.field private horizontalSpacing:I

.field private inputHint:Ljava/lang/CharSequence;

.field private inputHintColor:I

.field private inputTextColor:I

.field private isAppendMode:Z

.field private isButtonMode:Z

.field private mInternalTagClickListener:Lme/gujun/android/taggroup/TagGroup$InternalTagClickListener;

.field private mOnTagChangeListener:Lme/gujun/android/taggroup/TagGroup$OnTagChangeListener;

.field private mOnTagClickListener:Lme/gujun/android/taggroup/TagGroup$OnTagClickListener;

.field private pressedBackgroundColor:I

.field private textColor:I

.field private textSize:F

.field private verticalPadding:I

.field private verticalSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 207
    sget v0, Lme/gujun/android/taggroup/R$attr;->tagGroupStyle:I

    invoke-direct {p0, p1, p2, v0}, Lme/gujun/android/taggroup/TagGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 20

    move-object/from16 v1, p0

    .line 211
    invoke-direct/range {p0 .. p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0x49

    const/16 v2, 0xc1

    const/16 v3, 0x20

    .line 60
    invoke-static {v0, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    iput v4, v1, Lme/gujun/android/taggroup/TagGroup;->default_border_color:I

    .line 61
    invoke-static {v0, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    iput v5, v1, Lme/gujun/android/taggroup/TagGroup;->default_text_color:I

    const/4 v6, -0x1

    .line 62
    iput v6, v1, Lme/gujun/android/taggroup/TagGroup;->default_background_color:I

    const/16 v7, 0xaa

    .line 63
    invoke-static {v7, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    iput v7, v1, Lme/gujun/android/taggroup/TagGroup;->default_dash_border_color:I

    const/16 v8, 0x80

    const/4 v9, 0x0

    .line 64
    invoke-static {v8, v9, v9, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    iput v8, v1, Lme/gujun/android/taggroup/TagGroup;->default_input_hint_color:I

    const/16 v10, 0xde

    .line 65
    invoke-static {v10, v9, v9, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    iput v10, v1, Lme/gujun/android/taggroup/TagGroup;->default_input_text_color:I

    .line 66
    invoke-static {v0, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v11

    iput v11, v1, Lme/gujun/android/taggroup/TagGroup;->default_checked_border_color:I

    .line 67
    iput v6, v1, Lme/gujun/android/taggroup/TagGroup;->default_checked_text_color:I

    .line 68
    iput v6, v1, Lme/gujun/android/taggroup/TagGroup;->default_checked_marker_color:I

    .line 69
    invoke-static {v0, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, v1, Lme/gujun/android/taggroup/TagGroup;->default_checked_background_color:I

    const/16 v2, 0xed

    .line 70
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    iput v2, v1, Lme/gujun/android/taggroup/TagGroup;->default_pressed_background_color:I

    const/4 v3, 0x1

    .line 185
    iput-boolean v3, v1, Lme/gujun/android/taggroup/TagGroup;->allowRepeats:Z

    .line 200
    new-instance v12, Lme/gujun/android/taggroup/TagGroup$InternalTagClickListener;

    invoke-direct {v12, v1}, Lme/gujun/android/taggroup/TagGroup$InternalTagClickListener;-><init>(Lme/gujun/android/taggroup/TagGroup;)V

    iput-object v12, v1, Lme/gujun/android/taggroup/TagGroup;->mInternalTagClickListener:Lme/gujun/android/taggroup/TagGroup$InternalTagClickListener;

    const/high16 v12, 0x3f000000    # 0.5f

    .line 212
    invoke-virtual {v1, v12}, Lme/gujun/android/taggroup/TagGroup;->dp2px(F)F

    move-result v12

    iput v12, v1, Lme/gujun/android/taggroup/TagGroup;->default_border_stroke_width:F

    const/high16 v13, 0x41500000    # 13.0f

    .line 213
    invoke-virtual {v1, v13}, Lme/gujun/android/taggroup/TagGroup;->sp2px(F)F

    move-result v13

    iput v13, v1, Lme/gujun/android/taggroup/TagGroup;->default_text_size:F

    const/high16 v14, 0x41000000    # 8.0f

    .line 214
    invoke-virtual {v1, v14}, Lme/gujun/android/taggroup/TagGroup;->dp2px(F)F

    move-result v14

    iput v14, v1, Lme/gujun/android/taggroup/TagGroup;->default_horizontal_spacing:F

    const/high16 v15, 0x40800000    # 4.0f

    .line 215
    invoke-virtual {v1, v15}, Lme/gujun/android/taggroup/TagGroup;->dp2px(F)F

    move-result v15

    iput v15, v1, Lme/gujun/android/taggroup/TagGroup;->default_vertical_spacing:F

    const/high16 v6, 0x41400000    # 12.0f

    .line 216
    invoke-virtual {v1, v6}, Lme/gujun/android/taggroup/TagGroup;->dp2px(F)F

    move-result v6

    iput v6, v1, Lme/gujun/android/taggroup/TagGroup;->default_horizontal_padding:F

    const/high16 v3, 0x40400000    # 3.0f

    .line 217
    invoke-virtual {v1, v3}, Lme/gujun/android/taggroup/TagGroup;->dp2px(F)F

    move-result v3

    iput v3, v1, Lme/gujun/android/taggroup/TagGroup;->default_vertical_padding:F

    .line 220
    sget-object v9, Lme/gujun/android/taggroup/R$styleable;->TagGroup:[I

    move/from16 v16, v3

    sget v3, Lme/gujun/android/taggroup/R$style;->TagGroup:I

    move/from16 v17, v6

    move/from16 v19, v14

    move/from16 v18, v15

    move-object/from16 v6, p1

    move-object/from16 v15, p2

    move/from16 v14, p3

    invoke-virtual {v6, v15, v9, v14, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 224
    :try_start_0
    sget v6, Lme/gujun/android/taggroup/R$styleable;->TagGroup_atg_inputMode:I

    const/4 v9, 0x0

    invoke-virtual {v3, v6, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    if-eqz v6, :cond_3

    const/4 v14, 0x1

    if-eq v6, v14, :cond_2

    const/4 v15, 0x2

    if-eq v6, v15, :cond_1

    const/4 v15, 0x3

    if-eq v6, v15, :cond_0

    goto :goto_0

    .line 239
    :cond_0
    iput-boolean v9, v1, Lme/gujun/android/taggroup/TagGroup;->isAppendMode:Z

    .line 240
    iput-boolean v14, v1, Lme/gujun/android/taggroup/TagGroup;->isButtonMode:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_1

    .line 235
    :cond_1
    iput-boolean v14, v1, Lme/gujun/android/taggroup/TagGroup;->isAppendMode:Z

    .line 236
    iput-boolean v14, v1, Lme/gujun/android/taggroup/TagGroup;->isButtonMode:Z

    goto :goto_0

    .line 231
    :cond_2
    iput-boolean v14, v1, Lme/gujun/android/taggroup/TagGroup;->isAppendMode:Z

    const/4 v9, 0x0

    .line 232
    iput-boolean v9, v1, Lme/gujun/android/taggroup/TagGroup;->isButtonMode:Z

    goto :goto_0

    .line 227
    :cond_3
    iput-boolean v9, v1, Lme/gujun/android/taggroup/TagGroup;->isAppendMode:Z

    .line 228
    iput-boolean v9, v1, Lme/gujun/android/taggroup/TagGroup;->isButtonMode:Z

    .line 244
    :goto_0
    sget v6, Lme/gujun/android/taggroup/R$styleable;->TagGroup_atg_inputHint:I

    invoke-virtual {v3, v6}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v1, Lme/gujun/android/taggroup/TagGroup;->inputHint:Ljava/lang/CharSequence;

    .line 245
    sget v6, Lme/gujun/android/taggroup/R$styleable;->TagGroup_atg_buttonHint:I

    invoke-virtual {v3, v6}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v1, Lme/gujun/android/taggroup/TagGroup;->buttonHint:Ljava/lang/CharSequence;

    .line 246
    sget v6, Lme/gujun/android/taggroup/R$styleable;->TagGroup_atg_borderColor:I

    invoke-virtual {v3, v6, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, v1, Lme/gujun/android/taggroup/TagGroup;->borderColor:I

    .line 247
    sget v4, Lme/gujun/android/taggroup/R$styleable;->TagGroup_atg_textColor:I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, v1, Lme/gujun/android/taggroup/TagGroup;->textColor:I

    .line 248
    sget v4, Lme/gujun/android/taggroup/R$styleable;->TagGroup_atg_backgroundColor:I

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, v1, Lme/gujun/android/taggroup/TagGroup;->backgroundColor:I

    .line 249
    sget v4, Lme/gujun/android/taggroup/R$styleable;->TagGroup_atg_dashBorderColor:I

    invoke-virtual {v3, v4, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, v1, Lme/gujun/android/taggroup/TagGroup;->dashBorderColor:I

    .line 250
    sget v4, Lme/gujun/android/taggroup/R$styleable;->TagGroup_atg_inputHintColor:I

    invoke-virtual {v3, v4, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, v1, Lme/gujun/android/taggroup/TagGroup;->inputHintColor:I

    .line 251
    sget v4, Lme/gujun/android/taggroup/R$styleable;->TagGroup_atg_inputTextColor:I

    invoke-virtual {v3, v4, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, v1, Lme/gujun/android/taggroup/TagGroup;->inputTextColor:I

    .line 252
    sget v4, Lme/gujun/android/taggroup/R$styleable;->TagGroup_atg_checkedBorderColor:I

    invoke-virtual {v3, v4, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, v1, Lme/gujun/android/taggroup/TagGroup;->checkedBorderColor:I

    .line 253
    sget v4, Lme/gujun/android/taggroup/R$styleable;->TagGroup_atg_checkedTextColor:I

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, v1, Lme/gujun/android/taggroup/TagGroup;->checkedTextColor:I

    .line 254
    sget v4, Lme/gujun/android/taggroup/R$styleable;->TagGroup_atg_checkedMarkerColor:I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, v1, Lme/gujun/android/taggroup/TagGroup;->checkedMarkerColor:I

    .line 255
    sget v4, Lme/gujun/android/taggroup/R$styleable;->TagGroup_atg_checkedBackgroundColor:I

    invoke-virtual {v3, v4, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, v1, Lme/gujun/android/taggroup/TagGroup;->checkedBackgroundColor:I

    .line 256
    sget v0, Lme/gujun/android/taggroup/R$styleable;->TagGroup_atg_pressedBackgroundColor:I

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, v1, Lme/gujun/android/taggroup/TagGroup;->pressedBackgroundColor:I

    .line 257
    sget v0, Lme/gujun/android/taggroup/R$styleable;->TagGroup_atg_borderStrokeWidth:I

    invoke-virtual {v3, v0, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v1, Lme/gujun/android/taggroup/TagGroup;->borderStrokeWidth:F

    .line 258
    sget v0, Lme/gujun/android/taggroup/R$styleable;->TagGroup_atg_textSize:I

    invoke-virtual {v3, v0, v13}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v1, Lme/gujun/android/taggroup/TagGroup;->textSize:F

    .line 259
    sget v0, Lme/gujun/android/taggroup/R$styleable;->TagGroup_atg_horizontalSpacing:I

    move/from16 v2, v19

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Lme/gujun/android/taggroup/TagGroup;->horizontalSpacing:I

    .line 260
    sget v0, Lme/gujun/android/taggroup/R$styleable;->TagGroup_atg_verticalSpacing:I

    move/from16 v2, v18

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Lme/gujun/android/taggroup/TagGroup;->verticalSpacing:I

    .line 261
    sget v0, Lme/gujun/android/taggroup/R$styleable;->TagGroup_atg_horizontalPadding:I

    move/from16 v2, v17

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Lme/gujun/android/taggroup/TagGroup;->horizontalPadding:I

    .line 262
    sget v0, Lme/gujun/android/taggroup/R$styleable;->TagGroup_atg_verticalPadding:I

    move/from16 v2, v16

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Lme/gujun/android/taggroup/TagGroup;->verticalPadding:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 267
    iget-boolean v0, v1, Lme/gujun/android/taggroup/TagGroup;->isAppendMode:Z

    if-eqz v0, :cond_4

    .line 269
    invoke-virtual {v1}, Lme/gujun/android/taggroup/TagGroup;->appendInputTag()V

    .line 272
    new-instance v0, Lme/gujun/android/taggroup/TagGroup$1;

    invoke-direct {v0, v1}, Lme/gujun/android/taggroup/TagGroup$1;-><init>(Lme/gujun/android/taggroup/TagGroup;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-void

    .line 264
    :goto_1
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 265
    throw v0
.end method

.method static synthetic access$1000(Lme/gujun/android/taggroup/TagGroup;)I
    .locals 0

    .line 59
    iget p0, p0, Lme/gujun/android/taggroup/TagGroup;->verticalPadding:I

    return p0
.end method

.method static synthetic access$1100(Lme/gujun/android/taggroup/TagGroup;)F
    .locals 0

    .line 59
    iget p0, p0, Lme/gujun/android/taggroup/TagGroup;->textSize:F

    return p0
.end method

.method static synthetic access$1200(Lme/gujun/android/taggroup/TagGroup;)Ljava/lang/CharSequence;
    .locals 0

    .line 59
    iget-object p0, p0, Lme/gujun/android/taggroup/TagGroup;->inputHint:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$1300(Lme/gujun/android/taggroup/TagGroup;)Ljava/lang/CharSequence;
    .locals 0

    .line 59
    iget-object p0, p0, Lme/gujun/android/taggroup/TagGroup;->buttonHint:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$1400(Lme/gujun/android/taggroup/TagGroup;)Lme/gujun/android/taggroup/TagGroup$OnTagChangeListener;
    .locals 0

    .line 59
    iget-object p0, p0, Lme/gujun/android/taggroup/TagGroup;->mOnTagChangeListener:Lme/gujun/android/taggroup/TagGroup$OnTagChangeListener;

    return-object p0
.end method

.method static synthetic access$1500(Lme/gujun/android/taggroup/TagGroup;)Ljava/util/List;
    .locals 0

    .line 59
    iget-object p0, p0, Lme/gujun/android/taggroup/TagGroup;->autoCompleteTags:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1700(Lme/gujun/android/taggroup/TagGroup;)I
    .locals 0

    .line 59
    iget p0, p0, Lme/gujun/android/taggroup/TagGroup;->dashBorderColor:I

    return p0
.end method

.method static synthetic access$1800(Lme/gujun/android/taggroup/TagGroup;)I
    .locals 0

    .line 59
    iget p0, p0, Lme/gujun/android/taggroup/TagGroup;->backgroundColor:I

    return p0
.end method

.method static synthetic access$1900(Lme/gujun/android/taggroup/TagGroup;)I
    .locals 0

    .line 59
    iget p0, p0, Lme/gujun/android/taggroup/TagGroup;->inputHintColor:I

    return p0
.end method

.method static synthetic access$2000(Lme/gujun/android/taggroup/TagGroup;)I
    .locals 0

    .line 59
    iget p0, p0, Lme/gujun/android/taggroup/TagGroup;->inputTextColor:I

    return p0
.end method

.method static synthetic access$2100(Lme/gujun/android/taggroup/TagGroup;)I
    .locals 0

    .line 59
    iget p0, p0, Lme/gujun/android/taggroup/TagGroup;->checkedBorderColor:I

    return p0
.end method

.method static synthetic access$2200(Lme/gujun/android/taggroup/TagGroup;)I
    .locals 0

    .line 59
    iget p0, p0, Lme/gujun/android/taggroup/TagGroup;->checkedBackgroundColor:I

    return p0
.end method

.method static synthetic access$2300(Lme/gujun/android/taggroup/TagGroup;)I
    .locals 0

    .line 59
    iget p0, p0, Lme/gujun/android/taggroup/TagGroup;->checkedTextColor:I

    return p0
.end method

.method static synthetic access$2400(Lme/gujun/android/taggroup/TagGroup;)I
    .locals 0

    .line 59
    iget p0, p0, Lme/gujun/android/taggroup/TagGroup;->borderColor:I

    return p0
.end method

.method static synthetic access$2500(Lme/gujun/android/taggroup/TagGroup;)I
    .locals 0

    .line 59
    iget p0, p0, Lme/gujun/android/taggroup/TagGroup;->textColor:I

    return p0
.end method

.method static synthetic access$2600(Lme/gujun/android/taggroup/TagGroup;)I
    .locals 0

    .line 59
    iget p0, p0, Lme/gujun/android/taggroup/TagGroup;->pressedBackgroundColor:I

    return p0
.end method

.method static synthetic access$400(Lme/gujun/android/taggroup/TagGroup;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lme/gujun/android/taggroup/TagGroup;->isAppendMode:Z

    return p0
.end method

.method static synthetic access$500(Lme/gujun/android/taggroup/TagGroup;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lme/gujun/android/taggroup/TagGroup;->isButtonMode:Z

    return p0
.end method

.method static synthetic access$600(Lme/gujun/android/taggroup/TagGroup;)Lme/gujun/android/taggroup/TagGroup$OnTagClickListener;
    .locals 0

    .line 59
    iget-object p0, p0, Lme/gujun/android/taggroup/TagGroup;->mOnTagClickListener:Lme/gujun/android/taggroup/TagGroup$OnTagClickListener;

    return-object p0
.end method

.method static synthetic access$700(Lme/gujun/android/taggroup/TagGroup;)F
    .locals 0

    .line 59
    iget p0, p0, Lme/gujun/android/taggroup/TagGroup;->borderStrokeWidth:F

    return p0
.end method

.method static synthetic access$800(Lme/gujun/android/taggroup/TagGroup;)I
    .locals 0

    .line 59
    iget p0, p0, Lme/gujun/android/taggroup/TagGroup;->checkedMarkerColor:I

    return p0
.end method

.method static synthetic access$900(Lme/gujun/android/taggroup/TagGroup;)I
    .locals 0

    .line 59
    iget p0, p0, Lme/gujun/android/taggroup/TagGroup;->horizontalPadding:I

    return p0
.end method


# virtual methods
.method protected appendButtonTag()V
    .locals 1

    const/4 v0, 0x0

    .line 650
    invoke-virtual {p0, v0}, Lme/gujun/android/taggroup/TagGroup;->appendButtonTag(Ljava/lang/String;)V

    return-void
.end method

.method protected appendButtonTag(Ljava/lang/String;)V
    .locals 3

    .line 670
    invoke-virtual {p0}, Lme/gujun/android/taggroup/TagGroup;->getButtonTag()Lme/gujun/android/taggroup/TagGroup$TagView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 675
    new-instance v0, Lme/gujun/android/taggroup/TagGroup$TagView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, p0, v1, v2, p1}, Lme/gujun/android/taggroup/TagGroup$TagView;-><init>(Lme/gujun/android/taggroup/TagGroup;Landroid/content/Context;ILjava/lang/CharSequence;)V

    .line 676
    iget-object p1, p0, Lme/gujun/android/taggroup/TagGroup;->mInternalTagClickListener:Lme/gujun/android/taggroup/TagGroup$InternalTagClickListener;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 677
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    .line 672
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already has a INPUT tag in group."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected appendInputTag()V
    .locals 1

    const/4 v0, 0x0

    .line 643
    invoke-virtual {p0, v0}, Lme/gujun/android/taggroup/TagGroup;->appendInputTag(Ljava/lang/String;)V

    return-void
.end method

.method protected appendInputTag(Ljava/lang/String;)V
    .locals 3

    .line 659
    invoke-virtual {p0}, Lme/gujun/android/taggroup/TagGroup;->getInputTag()Lme/gujun/android/taggroup/TagGroup$TagView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 664
    new-instance v0, Lme/gujun/android/taggroup/TagGroup$TagView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2, p1}, Lme/gujun/android/taggroup/TagGroup$TagView;-><init>(Lme/gujun/android/taggroup/TagGroup;Landroid/content/Context;ILjava/lang/CharSequence;)V

    .line 665
    iget-object p1, p0, Lme/gujun/android/taggroup/TagGroup;->mInternalTagClickListener:Lme/gujun/android/taggroup/TagGroup$InternalTagClickListener;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 666
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    .line 661
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already has a INPUT tag in group."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected appendTag(Ljava/lang/CharSequence;)V
    .locals 3

    .line 686
    new-instance v0, Lme/gujun/android/taggroup/TagGroup$TagView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2, p1}, Lme/gujun/android/taggroup/TagGroup$TagView;-><init>(Lme/gujun/android/taggroup/TagGroup;Landroid/content/Context;ILjava/lang/CharSequence;)V

    .line 687
    iget-object p1, p0, Lme/gujun/android/taggroup/TagGroup;->mInternalTagClickListener:Lme/gujun/android/taggroup/TagGroup$InternalTagClickListener;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 688
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected deleteTag(Lme/gujun/android/taggroup/TagGroup$TagView;)V
    .locals 1

    .line 716
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 717
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup;->mOnTagChangeListener:Lme/gujun/android/taggroup/TagGroup$OnTagChangeListener;

    if-eqz v0, :cond_0

    .line 718
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lme/gujun/android/taggroup/TagGroup$OnTagChangeListener;->onDelete(Lme/gujun/android/taggroup/TagGroup;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dp2px(F)F
    .locals 2

    .line 693
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 692
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 703
    new-instance v0, Lme/gujun/android/taggroup/TagGroup$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lme/gujun/android/taggroup/TagGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected getButtonTag()Lme/gujun/android/taggroup/TagGroup$TagView;
    .locals 4

    .line 472
    iget-boolean v0, p0, Lme/gujun/android/taggroup/TagGroup;->isButtonMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 473
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 474
    invoke-virtual {p0, v0}, Lme/gujun/android/taggroup/TagGroup;->getTagAt(I)Lme/gujun/android/taggroup/TagGroup$TagView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 475
    invoke-static {v0}, Lme/gujun/android/taggroup/TagGroup$TagView;->access$200(Lme/gujun/android/taggroup/TagGroup$TagView;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    return-object v0

    :cond_0
    return-object v1
.end method

.method protected getCheckedTag()Lme/gujun/android/taggroup/TagGroup$TagView;
    .locals 2

    .line 569
    invoke-virtual {p0}, Lme/gujun/android/taggroup/TagGroup;->getCheckedTagIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 571
    invoke-virtual {p0, v0}, Lme/gujun/android/taggroup/TagGroup;->getTagAt(I)Lme/gujun/android/taggroup/TagGroup$TagView;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCheckedTagIndex()I
    .locals 3

    .line 582
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 584
    invoke-virtual {p0, v1}, Lme/gujun/android/taggroup/TagGroup;->getTagAt(I)Lme/gujun/android/taggroup/TagGroup$TagView;

    move-result-object v2

    .line 585
    invoke-static {v2}, Lme/gujun/android/taggroup/TagGroup$TagView;->access$300(Lme/gujun/android/taggroup/TagGroup$TagView;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getCheckedTagIndices()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 593
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 594
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 596
    invoke-virtual {p0, v2}, Lme/gujun/android/taggroup/TagGroup;->getTagAt(I)Lme/gujun/android/taggroup/TagGroup$TagView;

    move-result-object v3

    .line 597
    invoke-static {v3}, Lme/gujun/android/taggroup/TagGroup$TagView;->access$300(Lme/gujun/android/taggroup/TagGroup$TagView;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 598
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method protected getInputTag()Lme/gujun/android/taggroup/TagGroup$TagView;
    .locals 4

    .line 458
    iget-boolean v0, p0, Lme/gujun/android/taggroup/TagGroup;->isAppendMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 459
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 460
    invoke-virtual {p0, v0}, Lme/gujun/android/taggroup/TagGroup;->getTagAt(I)Lme/gujun/android/taggroup/TagGroup$TagView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 461
    invoke-static {v0}, Lme/gujun/android/taggroup/TagGroup$TagView;->access$200(Lme/gujun/android/taggroup/TagGroup$TagView;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getInputTagText()Ljava/lang/String;
    .locals 1

    .line 491
    invoke-virtual {p0}, Lme/gujun/android/taggroup/TagGroup;->getInputTag()Lme/gujun/android/taggroup/TagGroup$TagView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 493
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getLastNormalTagView()Lme/gujun/android/taggroup/TagGroup$TagView;
    .locals 1

    .line 504
    iget-boolean v0, p0, Lme/gujun/android/taggroup/TagGroup;->isAppendMode:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lme/gujun/android/taggroup/TagGroup;->isButtonMode:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    .line 505
    :goto_1
    invoke-virtual {p0, v0}, Lme/gujun/android/taggroup/TagGroup;->getTagAt(I)Lme/gujun/android/taggroup/TagGroup$TagView;

    move-result-object v0

    return-object v0
.end method

.method protected getTagAt(I)Lme/gujun/android/taggroup/TagGroup$TagView;
    .locals 0

    .line 560
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lme/gujun/android/taggroup/TagGroup$TagView;

    return-object p1
.end method

.method public getTags()[Ljava/lang/String;
    .locals 6

    .line 515
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 516
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 518
    invoke-virtual {p0, v2}, Lme/gujun/android/taggroup/TagGroup;->getTagAt(I)Lme/gujun/android/taggroup/TagGroup$TagView;

    move-result-object v3

    .line 519
    invoke-static {v3}, Lme/gujun/android/taggroup/TagGroup$TagView;->access$200(Lme/gujun/android/taggroup/TagGroup$TagView;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 520
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 524
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    .line 389
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    sub-int/2addr p4, p2

    .line 390
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr p4, p2

    .line 391
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    .line 392
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 399
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    const/4 p5, 0x0

    move v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge p5, p3, :cond_2

    .line 401
    invoke-virtual {p0, p5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 402
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 403
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 405
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_1

    add-int v5, v1, v3

    if-le v5, p4, :cond_0

    .line 408
    iget v1, p0, Lme/gujun/android/taggroup/TagGroup;->verticalSpacing:I

    add-int/2addr v0, v1

    add-int/2addr p2, v0

    move v1, p1

    move v0, v4

    goto :goto_1

    .line 411
    :cond_0
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_1
    add-int v5, v1, v3

    add-int/2addr v4, p2

    .line 413
    invoke-virtual {v2, v1, p2, v5, v4}, Landroid/view/View;->layout(IIII)V

    .line 415
    iget v2, p0, Lme/gujun/android/taggroup/TagGroup;->horizontalSpacing:I

    add-int/2addr v3, v2

    add-int/2addr v1, v3

    :cond_1
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12

    .line 336
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 337
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 338
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 339
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 341
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->measureChildren(II)V

    .line 350
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge p2, p1, :cond_2

    .line 352
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 353
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 354
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 356
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v11, 0x8

    if-eq v8, v11, :cond_1

    add-int/2addr v7, v9

    if-le v7, v2, :cond_0

    .line 360
    iget v7, p0, Lme/gujun/android/taggroup/TagGroup;->verticalSpacing:I

    add-int/2addr v5, v7

    add-int/2addr v4, v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 364
    :cond_0
    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    move v9, v7

    .line 366
    :goto_1
    iget v5, p0, Lme/gujun/android/taggroup/TagGroup;->horizontalSpacing:I

    add-int/2addr v9, v5

    move v7, v9

    move v5, v10

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    add-int/2addr v4, v5

    .line 373
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    add-int/2addr p1, p2

    add-int/2addr v4, p1

    if-nez v6, :cond_3

    .line 378
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    add-int/2addr p1, p2

    add-int/2addr v7, p1

    goto :goto_2

    :cond_3
    move v7, v2

    :goto_2
    const/high16 p1, 0x40000000    # 2.0f

    if-ne v0, p1, :cond_4

    goto :goto_3

    :cond_4
    move v2, v7

    :goto_3
    if-ne v1, p1, :cond_5

    goto :goto_4

    :cond_5
    move v3, v4

    .line 383
    :goto_4
    invoke-virtual {p0, v2, v3}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 434
    instance-of v0, p1, Lme/gujun/android/taggroup/TagGroup$SavedState;

    if-nez v0, :cond_0

    .line 435
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 439
    :cond_0
    check-cast p1, Lme/gujun/android/taggroup/TagGroup$SavedState;

    .line 440
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 442
    iget-object v0, p1, Lme/gujun/android/taggroup/TagGroup$SavedState;->tags:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lme/gujun/android/taggroup/TagGroup;->setTags([Ljava/lang/String;)V

    .line 443
    iget v0, p1, Lme/gujun/android/taggroup/TagGroup$SavedState;->checkedPosition:I

    invoke-virtual {p0, v0}, Lme/gujun/android/taggroup/TagGroup;->getTagAt(I)Lme/gujun/android/taggroup/TagGroup$TagView;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 445
    invoke-virtual {v0, v1}, Lme/gujun/android/taggroup/TagGroup$TagView;->setChecked(Z)V

    .line 447
    :cond_1
    invoke-virtual {p0}, Lme/gujun/android/taggroup/TagGroup;->getInputTag()Lme/gujun/android/taggroup/TagGroup$TagView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 448
    invoke-virtual {p0}, Lme/gujun/android/taggroup/TagGroup;->getInputTag()Lme/gujun/android/taggroup/TagGroup$TagView;

    move-result-object v0

    iget-object p1, p1, Lme/gujun/android/taggroup/TagGroup$SavedState;->input:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 422
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 423
    new-instance v1, Lme/gujun/android/taggroup/TagGroup$SavedState;

    invoke-direct {v1, v0}, Lme/gujun/android/taggroup/TagGroup$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 424
    invoke-virtual {p0}, Lme/gujun/android/taggroup/TagGroup;->getTags()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lme/gujun/android/taggroup/TagGroup$SavedState;->tags:[Ljava/lang/String;

    .line 425
    invoke-virtual {p0}, Lme/gujun/android/taggroup/TagGroup;->getCheckedTagIndex()I

    move-result v0

    iput v0, v1, Lme/gujun/android/taggroup/TagGroup$SavedState;->checkedPosition:I

    .line 426
    invoke-virtual {p0}, Lme/gujun/android/taggroup/TagGroup;->getInputTag()Lme/gujun/android/taggroup/TagGroup$TagView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 427
    invoke-virtual {p0}, Lme/gujun/android/taggroup/TagGroup;->getInputTag()Lme/gujun/android/taggroup/TagGroup$TagView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lme/gujun/android/taggroup/TagGroup$SavedState;->input:Ljava/lang/String;

    :cond_0
    return-object v1
.end method

.method public setAllowRepeats(Z)V
    .locals 0

    .line 290
    iput-boolean p1, p0, Lme/gujun/android/taggroup/TagGroup;->allowRepeats:Z

    return-void
.end method

.method public setAutoCompleteTags(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 282
    iput-object p1, p0, Lme/gujun/android/taggroup/TagGroup;->autoCompleteTags:Ljava/util/List;

    return-void
.end method

.method public varargs setAutoCompleteTags([Ljava/lang/String;)V
    .locals 1

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lme/gujun/android/taggroup/TagGroup;->autoCompleteTags:Ljava/util/List;

    return-void
.end method

.method public setCheckedTag(I)V
    .locals 1

    .line 613
    invoke-virtual {p0, p1}, Lme/gujun/android/taggroup/TagGroup;->getTagAt(I)Lme/gujun/android/taggroup/TagGroup$TagView;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 615
    invoke-virtual {p1, v0}, Lme/gujun/android/taggroup/TagGroup$TagView;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setCheckedTag(Ljava/lang/String;)V
    .locals 4

    .line 620
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 622
    invoke-virtual {p0, v1}, Lme/gujun/android/taggroup/TagGroup;->getTagAt(I)Lme/gujun/android/taggroup/TagGroup$TagView;

    move-result-object v2

    .line 623
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    .line 624
    invoke-virtual {v2, p1}, Lme/gujun/android/taggroup/TagGroup$TagView;->setChecked(Z)V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setCheckedTagIndices(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 605
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 606
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lme/gujun/android/taggroup/TagGroup;->getTagAt(I)Lme/gujun/android/taggroup/TagGroup$TagView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 608
    invoke-virtual {v0, v1}, Lme/gujun/android/taggroup/TagGroup$TagView;->setChecked(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setOnTagChangeListener(Lme/gujun/android/taggroup/TagGroup$OnTagChangeListener;)V
    .locals 0

    .line 636
    iput-object p1, p0, Lme/gujun/android/taggroup/TagGroup;->mOnTagChangeListener:Lme/gujun/android/taggroup/TagGroup$OnTagChangeListener;

    return-void
.end method

.method public setOnTagClickListener(Lme/gujun/android/taggroup/TagGroup$OnTagClickListener;)V
    .locals 0

    .line 712
    iput-object p1, p0, Lme/gujun/android/taggroup/TagGroup;->mOnTagClickListener:Lme/gujun/android/taggroup/TagGroup$OnTagClickListener;

    return-void
.end method

.method public setTags(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 531
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lme/gujun/android/taggroup/TagGroup;->setTags([Ljava/lang/String;)V

    return-void
.end method

.method public varargs setTags([Ljava/lang/String;)V
    .locals 3

    .line 540
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 541
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 542
    invoke-virtual {p0, v2}, Lme/gujun/android/taggroup/TagGroup;->appendTag(Ljava/lang/CharSequence;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 545
    :cond_0
    iget-boolean p1, p0, Lme/gujun/android/taggroup/TagGroup;->isAppendMode:Z

    if-eqz p1, :cond_1

    .line 546
    invoke-virtual {p0}, Lme/gujun/android/taggroup/TagGroup;->appendInputTag()V

    return-void

    .line 547
    :cond_1
    iget-boolean p1, p0, Lme/gujun/android/taggroup/TagGroup;->isButtonMode:Z

    if-eqz p1, :cond_2

    .line 548
    invoke-virtual {p0}, Lme/gujun/android/taggroup/TagGroup;->appendButtonTag()V

    :cond_2
    return-void
.end method

.method public sp2px(F)F
    .locals 2

    .line 698
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x2

    .line 697
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

.method public submitTag()V
    .locals 3

    .line 297
    invoke-virtual {p0}, Lme/gujun/android/taggroup/TagGroup;->getInputTag()Lme/gujun/android/taggroup/TagGroup$TagView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 298
    invoke-virtual {v0}, Lme/gujun/android/taggroup/TagGroup$TagView;->isInputAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 299
    iget-boolean v1, p0, Lme/gujun/android/taggroup/TagGroup;->allowRepeats:Z

    if-nez v1, :cond_0

    .line 300
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 301
    invoke-virtual {p0}, Lme/gujun/android/taggroup/TagGroup;->getTags()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 302
    invoke-static {v0, v1}, Lme/gujun/android/taggroup/TagGroup$TagView;->access$002(Lme/gujun/android/taggroup/TagGroup$TagView;Z)Z

    .line 306
    const-string v1, ""

    invoke-static {v0, v1}, Lme/gujun/android/taggroup/TagGroup$TagView;->access$102(Lme/gujun/android/taggroup/TagGroup$TagView;Ljava/lang/String;)Ljava/lang/String;

    .line 307
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 311
    :cond_0
    iget-object v1, p0, Lme/gujun/android/taggroup/TagGroup;->mOnTagChangeListener:Lme/gujun/android/taggroup/TagGroup$OnTagChangeListener;

    if-eqz v1, :cond_1

    .line 312
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Lme/gujun/android/taggroup/TagGroup$OnTagChangeListener;->onAppend(Lme/gujun/android/taggroup/TagGroup;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 313
    invoke-virtual {v0}, Lme/gujun/android/taggroup/TagGroup$TagView;->endInput()V

    .line 314
    invoke-virtual {p0}, Lme/gujun/android/taggroup/TagGroup;->appendInputTag()V

    return-void

    .line 317
    :cond_1
    invoke-virtual {v0}, Lme/gujun/android/taggroup/TagGroup$TagView;->endInput()V

    .line 318
    invoke-virtual {p0}, Lme/gujun/android/taggroup/TagGroup;->appendInputTag()V

    :cond_2
    return-void
.end method
