.class Lcom/balysv/materialmenu/MaterialMenuDrawable$1;
.super Lcom/nineoldandroids/util/Property;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/balysv/materialmenu/MaterialMenuDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/balysv/materialmenu/MaterialMenuDrawable;


# direct methods
.method constructor <init>(Lcom/balysv/materialmenu/MaterialMenuDrawable;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 706
    iput-object p1, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable$1;->this$0:Lcom/balysv/materialmenu/MaterialMenuDrawable;

    invoke-direct {p0, p2, p3}, Lcom/nineoldandroids/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/balysv/materialmenu/MaterialMenuDrawable;)Ljava/lang/Float;
    .locals 0

    .line 709
    invoke-virtual {p1}, Lcom/balysv/materialmenu/MaterialMenuDrawable;->getTransformationValue()Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 706
    check-cast p1, Lcom/balysv/materialmenu/MaterialMenuDrawable;

    invoke-virtual {p0, p1}, Lcom/balysv/materialmenu/MaterialMenuDrawable$1;->get(Lcom/balysv/materialmenu/MaterialMenuDrawable;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public set(Lcom/balysv/materialmenu/MaterialMenuDrawable;Ljava/lang/Float;)V
    .locals 0

    .line 714
    invoke-virtual {p1, p2}, Lcom/balysv/materialmenu/MaterialMenuDrawable;->setTransformationValue(Ljava/lang/Float;)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 706
    check-cast p1, Lcom/balysv/materialmenu/MaterialMenuDrawable;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/balysv/materialmenu/MaterialMenuDrawable$1;->set(Lcom/balysv/materialmenu/MaterialMenuDrawable;Ljava/lang/Float;)V

    return-void
.end method
