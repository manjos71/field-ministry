.class public abstract Lcom/stepstone/stepper/internal/type/StepperTypeFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "StepperTypeFactory"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static createType(ILcom/stepstone/stepper/StepperLayout;)Lcom/stepstone/stepper/internal/type/AbstractStepperType;
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    .line 49
    new-instance p0, Lcom/stepstone/stepper/internal/type/NoneStepperType;

    invoke-direct {p0, p1}, Lcom/stepstone/stepper/internal/type/NoneStepperType;-><init>(Lcom/stepstone/stepper/StepperLayout;)V

    return-object p0

    .line 51
    :cond_0
    sget-object p1, Lcom/stepstone/stepper/internal/type/StepperTypeFactory;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_1
    new-instance p0, Lcom/stepstone/stepper/internal/type/TabsStepperType;

    invoke-direct {p0, p1}, Lcom/stepstone/stepper/internal/type/TabsStepperType;-><init>(Lcom/stepstone/stepper/StepperLayout;)V

    return-object p0

    .line 45
    :cond_2
    new-instance p0, Lcom/stepstone/stepper/internal/type/ProgressBarStepperType;

    invoke-direct {p0, p1}, Lcom/stepstone/stepper/internal/type/ProgressBarStepperType;-><init>(Lcom/stepstone/stepper/StepperLayout;)V

    return-object p0

    .line 43
    :cond_3
    new-instance p0, Lcom/stepstone/stepper/internal/type/DotsStepperType;

    invoke-direct {p0, p1}, Lcom/stepstone/stepper/internal/type/DotsStepperType;-><init>(Lcom/stepstone/stepper/StepperLayout;)V

    return-object p0
.end method
