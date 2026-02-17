.class public Lcom/lostpixels/fieldservice/activities/TutorialDialog$MyStepperAdapter;
.super Lcom/stepstone/stepper/adapter/AbstractFragmentStepAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/TutorialDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyStepperAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/TutorialDialog;


# direct methods
.method public constructor <init>(Lcom/lostpixels/fieldservice/activities/TutorialDialog;Landroidx/fragment/app/FragmentManager;Landroid/content/Context;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/TutorialDialog$MyStepperAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/TutorialDialog;

    .line 128
    invoke-direct {p0, p2, p3}, Lcom/stepstone/stepper/adapter/AbstractFragmentStepAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public createStep(I)Lcom/stepstone/stepper/Step;
    .locals 0

    .line 133
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/activities/TutorialDialog$MyStepperAdapter;->getFragment(I)Lcom/stepstone/stepper/Step;

    move-result-object p1

    return-object p1
.end method

.method public getCount()I
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method getFragment(I)Lcom/stepstone/stepper/Step;
    .locals 2

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    :pswitch_0
    const p1, 0x7f0c0169

    goto :goto_0

    :pswitch_1
    const p1, 0x7f0c0168

    goto :goto_0

    :pswitch_2
    const p1, 0x7f0c0167

    goto :goto_0

    :pswitch_3
    const p1, 0x7f0c0166

    goto :goto_0

    :pswitch_4
    const p1, 0x7f0c0165

    goto :goto_0

    :pswitch_5
    const p1, 0x7f0c0164

    goto :goto_0

    :pswitch_6
    const p1, 0x7f0c0163

    goto :goto_0

    :pswitch_7
    const p1, 0x7f0c0162

    goto :goto_0

    :pswitch_8
    const p1, 0x7f0c0161

    .line 194
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 195
    const-string v1, "layout"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 196
    new-instance p1, Lcom/lostpixels/fieldservice/activities/TutorialPage;

    invoke-direct {p1}, Lcom/lostpixels/fieldservice/activities/TutorialPage;-><init>()V

    .line 197
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getViewModel(I)Lcom/stepstone/stepper/viewmodel/StepViewModel;
    .locals 2

    .line 146
    new-instance v0, Lcom/stepstone/stepper/viewmodel/StepViewModel$Builder;

    iget-object v1, p0, Lcom/stepstone/stepper/adapter/AbstractFragmentStepAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/stepstone/stepper/viewmodel/StepViewModel$Builder;-><init>(Landroid/content/Context;)V

    if-nez p1, :cond_0

    const p1, 0x7f12005a

    .line 148
    invoke-virtual {v0, p1}, Lcom/stepstone/stepper/viewmodel/StepViewModel$Builder;->setBackButtonLabel(I)Lcom/stepstone/stepper/viewmodel/StepViewModel$Builder;

    move-result-object p1

    const/4 v1, -0x1

    .line 149
    invoke-virtual {p1, v1}, Lcom/stepstone/stepper/viewmodel/StepViewModel$Builder;->setBackButtonStartDrawableResId(I)Lcom/stepstone/stepper/viewmodel/StepViewModel$Builder;

    goto :goto_0

    :cond_0
    const p1, 0x7f12020d

    .line 151
    invoke-virtual {v0, p1}, Lcom/stepstone/stepper/viewmodel/StepViewModel$Builder;->setBackButtonLabel(I)Lcom/stepstone/stepper/viewmodel/StepViewModel$Builder;

    move-result-object p1

    const v1, 0x7f080264

    .line 152
    invoke-virtual {p1, v1}, Lcom/stepstone/stepper/viewmodel/StepViewModel$Builder;->setBackButtonStartDrawableResId(I)Lcom/stepstone/stepper/viewmodel/StepViewModel$Builder;

    .line 154
    :goto_0
    const-string p1, ""

    invoke-virtual {v0, p1}, Lcom/stepstone/stepper/viewmodel/StepViewModel$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/stepstone/stepper/viewmodel/StepViewModel$Builder;

    .line 155
    invoke-virtual {v0}, Lcom/stepstone/stepper/viewmodel/StepViewModel$Builder;->create()Lcom/stepstone/stepper/viewmodel/StepViewModel;

    move-result-object p1

    return-object p1
.end method
