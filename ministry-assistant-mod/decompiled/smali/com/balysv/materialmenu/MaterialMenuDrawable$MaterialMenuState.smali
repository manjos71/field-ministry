.class final Lcom/balysv/materialmenu/MaterialMenuDrawable$MaterialMenuState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/balysv/materialmenu/MaterialMenuDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MaterialMenuState"
.end annotation


# instance fields
.field private changingConfigurations:I

.field final synthetic this$0:Lcom/balysv/materialmenu/MaterialMenuDrawable;


# direct methods
.method private constructor <init>(Lcom/balysv/materialmenu/MaterialMenuDrawable;)V
    .locals 0

    .line 840
    iput-object p1, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable$MaterialMenuState;->this$0:Lcom/balysv/materialmenu/MaterialMenuDrawable;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/balysv/materialmenu/MaterialMenuDrawable;Lcom/balysv/materialmenu/MaterialMenuDrawable$1;)V
    .locals 0

    .line 837
    invoke-direct {p0, p1}, Lcom/balysv/materialmenu/MaterialMenuDrawable$MaterialMenuState;-><init>(Lcom/balysv/materialmenu/MaterialMenuDrawable;)V

    return-void
.end method

.method static synthetic access$402(Lcom/balysv/materialmenu/MaterialMenuDrawable$MaterialMenuState;I)I
    .locals 0

    .line 837
    iput p1, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable$MaterialMenuState;->changingConfigurations:I

    return p1
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    .line 857
    iget v0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable$MaterialMenuState;->changingConfigurations:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 12

    .line 845
    new-instance v0, Lcom/balysv/materialmenu/MaterialMenuDrawable;

    iget-object v1, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable$MaterialMenuState;->this$0:Lcom/balysv/materialmenu/MaterialMenuDrawable;

    .line 846
    invoke-static {v1}, Lcom/balysv/materialmenu/MaterialMenuDrawable;->access$500(Lcom/balysv/materialmenu/MaterialMenuDrawable;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    iget-object v2, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable$MaterialMenuState;->this$0:Lcom/balysv/materialmenu/MaterialMenuDrawable;

    invoke-static {v2}, Lcom/balysv/materialmenu/MaterialMenuDrawable;->access$600(Lcom/balysv/materialmenu/MaterialMenuDrawable;)Lcom/balysv/materialmenu/MaterialMenuDrawable$Stroke;

    move-result-object v2

    iget-object v3, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable$MaterialMenuState;->this$0:Lcom/balysv/materialmenu/MaterialMenuDrawable;

    invoke-static {v3}, Lcom/balysv/materialmenu/MaterialMenuDrawable;->access$700(Lcom/balysv/materialmenu/MaterialMenuDrawable;)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nineoldandroids/animation/ValueAnimator;->getDuration()J

    move-result-wide v3

    iget-object v5, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable$MaterialMenuState;->this$0:Lcom/balysv/materialmenu/MaterialMenuDrawable;

    .line 847
    invoke-static {v5}, Lcom/balysv/materialmenu/MaterialMenuDrawable;->access$800(Lcom/balysv/materialmenu/MaterialMenuDrawable;)I

    move-result v5

    iget-object v6, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable$MaterialMenuState;->this$0:Lcom/balysv/materialmenu/MaterialMenuDrawable;

    invoke-static {v6}, Lcom/balysv/materialmenu/MaterialMenuDrawable;->access$900(Lcom/balysv/materialmenu/MaterialMenuDrawable;)I

    move-result v6

    iget-object v7, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable$MaterialMenuState;->this$0:Lcom/balysv/materialmenu/MaterialMenuDrawable;

    invoke-static {v7}, Lcom/balysv/materialmenu/MaterialMenuDrawable;->access$1000(Lcom/balysv/materialmenu/MaterialMenuDrawable;)F

    move-result v7

    iget-object v8, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable$MaterialMenuState;->this$0:Lcom/balysv/materialmenu/MaterialMenuDrawable;

    invoke-static {v8}, Lcom/balysv/materialmenu/MaterialMenuDrawable;->access$1100(Lcom/balysv/materialmenu/MaterialMenuDrawable;)F

    move-result v8

    iget-object v9, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable$MaterialMenuState;->this$0:Lcom/balysv/materialmenu/MaterialMenuDrawable;

    invoke-static {v9}, Lcom/balysv/materialmenu/MaterialMenuDrawable;->access$1200(Lcom/balysv/materialmenu/MaterialMenuDrawable;)F

    move-result v9

    iget-object v10, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable$MaterialMenuState;->this$0:Lcom/balysv/materialmenu/MaterialMenuDrawable;

    invoke-static {v10}, Lcom/balysv/materialmenu/MaterialMenuDrawable;->access$1300(Lcom/balysv/materialmenu/MaterialMenuDrawable;)F

    move-result v10

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Lcom/balysv/materialmenu/MaterialMenuDrawable;-><init>(ILcom/balysv/materialmenu/MaterialMenuDrawable$Stroke;JIIFFFFLcom/balysv/materialmenu/MaterialMenuDrawable$1;)V

    .line 849
    iget-object v1, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable$MaterialMenuState;->this$0:Lcom/balysv/materialmenu/MaterialMenuDrawable;

    invoke-static {v1}, Lcom/balysv/materialmenu/MaterialMenuDrawable;->access$300(Lcom/balysv/materialmenu/MaterialMenuDrawable;)Lcom/balysv/materialmenu/MaterialMenuDrawable$IconState;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable$MaterialMenuState;->this$0:Lcom/balysv/materialmenu/MaterialMenuDrawable;

    invoke-static {v1}, Lcom/balysv/materialmenu/MaterialMenuDrawable;->access$300(Lcom/balysv/materialmenu/MaterialMenuDrawable;)Lcom/balysv/materialmenu/MaterialMenuDrawable$IconState;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable$MaterialMenuState;->this$0:Lcom/balysv/materialmenu/MaterialMenuDrawable;

    invoke-static {v1}, Lcom/balysv/materialmenu/MaterialMenuDrawable;->access$1500(Lcom/balysv/materialmenu/MaterialMenuDrawable;)Lcom/balysv/materialmenu/MaterialMenuDrawable$IconState;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/balysv/materialmenu/MaterialMenuDrawable;->setIconState(Lcom/balysv/materialmenu/MaterialMenuDrawable$IconState;)V

    .line 850
    iget-object v1, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable$MaterialMenuState;->this$0:Lcom/balysv/materialmenu/MaterialMenuDrawable;

    invoke-static {v1}, Lcom/balysv/materialmenu/MaterialMenuDrawable;->access$1600(Lcom/balysv/materialmenu/MaterialMenuDrawable;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/balysv/materialmenu/MaterialMenuDrawable;->setVisible(Z)V

    .line 851
    iget-object v1, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable$MaterialMenuState;->this$0:Lcom/balysv/materialmenu/MaterialMenuDrawable;

    invoke-static {v1}, Lcom/balysv/materialmenu/MaterialMenuDrawable;->access$1700(Lcom/balysv/materialmenu/MaterialMenuDrawable;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/balysv/materialmenu/MaterialMenuDrawable;->setRTLEnabled(Z)V

    return-object v0
.end method
