.class public interface abstract Lcom/stepstone/stepper/StepperLayout$StepperListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stepstone/stepper/StepperLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StepperListener"
.end annotation


# static fields
.field public static final NULL:Lcom/stepstone/stepper/StepperLayout$StepperListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 106
    new-instance v0, Lcom/stepstone/stepper/StepperLayout$StepperListener$1;

    invoke-direct {v0}, Lcom/stepstone/stepper/StepperLayout$StepperListener$1;-><init>()V

    sput-object v0, Lcom/stepstone/stepper/StepperLayout$StepperListener;->NULL:Lcom/stepstone/stepper/StepperLayout$StepperListener;

    return-void
.end method


# virtual methods
.method public abstract onCompleted(Landroid/view/View;)V
.end method

.method public abstract onReturn()V
.end method

.method public abstract onStepSelected(I)V
.end method
