.class public abstract Lcom/lostpixels/fieldservice/ui/OverlayHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static showOverLay(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4

    .line 23
    const-string v0, "HelpDlgs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v2, 0x1

    .line 24
    invoke-interface {v0, p2, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 25
    new-instance v2, Landroid/app/Dialog;

    const v3, 0x1030010

    invoke-direct {v2, p0, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 26
    invoke-virtual {v2, p1}, Landroid/app/Dialog;->setContentView(I)V

    const p0, 0x7f09042e

    .line 27
    invoke-virtual {v2, p0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 28
    new-instance p1, Lcom/lostpixels/fieldservice/ui/OverlayHelper$1;

    invoke-direct {p1, v2}, Lcom/lostpixels/fieldservice/ui/OverlayHelper$1;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 37
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public static showTapTargetPrompt(Landroid/app/Activity;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 47
    const-string v0, "HelpDlgs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x1

    .line 48
    invoke-interface {v0, p5, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 49
    new-instance v1, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$Builder;

    invoke-direct {v1, p0}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$Builder;-><init>(Landroid/app/Activity;)V

    int-to-float p0, p1

    int-to-float p1, p2

    .line 50
    invoke-virtual {v1, p0, p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->setTarget(FF)Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    move-result-object p0

    check-cast p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$Builder;

    .line 51
    invoke-virtual {p0, p3}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->setPrimaryText(Ljava/lang/String;)Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    move-result-object p0

    check-cast p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$Builder;

    .line 52
    invoke-virtual {p0, p4}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->setSecondaryText(Ljava/lang/String;)Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    move-result-object p0

    check-cast p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$Builder;

    new-instance p1, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {p1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    .line 53
    invoke-virtual {p0, p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->setAnimationInterpolator(Landroid/view/animation/Interpolator;)Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    move-result-object p0

    check-cast p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$Builder;

    new-instance p1, Lcom/lostpixels/fieldservice/ui/OverlayHelper$2;

    invoke-direct {p1, v0, p5}, Lcom/lostpixels/fieldservice/ui/OverlayHelper$2;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0, p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->setPromptStateChangeListener(Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptStateChangeListener;)Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    move-result-object p0

    check-cast p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$Builder;

    if-eqz p6, :cond_0

    .line 64
    invoke-virtual {p0, p6}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->setIcon(I)Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    .line 66
    :cond_0
    invoke-virtual {p0}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->show()Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;

    :cond_1
    return-void
.end method

.method public static showTapTargetPrompt(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 43
    invoke-static/range {v0 .. v5}, Lcom/lostpixels/fieldservice/ui/OverlayHelper;->showTapTargetPrompt(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static showTapTargetPrompt(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 72
    const-string v0, "HelpDlgs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v2, 0x1

    .line 73
    invoke-interface {v0, p4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    new-instance v2, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$Builder;

    invoke-direct {v2, p0}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$Builder;-><init>(Landroid/app/Activity;)V

    .line 75
    invoke-virtual {v2, p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->setTarget(Landroid/view/View;)Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    move-result-object p0

    check-cast p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$Builder;

    .line 76
    invoke-virtual {p0, p2}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->setPrimaryText(Ljava/lang/String;)Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    move-result-object p0

    check-cast p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$Builder;

    .line 77
    invoke-virtual {p0, p3}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->setSecondaryText(Ljava/lang/String;)Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    move-result-object p0

    check-cast p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$Builder;

    new-instance p1, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {p1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    .line 78
    invoke-virtual {p0, p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->setAnimationInterpolator(Landroid/view/animation/Interpolator;)Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    move-result-object p0

    check-cast p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$Builder;

    new-instance p1, Lcom/lostpixels/fieldservice/ui/OverlayHelper$3;

    invoke-direct {p1, v0, p4}, Lcom/lostpixels/fieldservice/ui/OverlayHelper$3;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0, p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->setPromptStateChangeListener(Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptStateChangeListener;)Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    move-result-object p0

    check-cast p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$Builder;

    if-eqz p5, :cond_0

    .line 88
    invoke-virtual {p0, v1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->setFocalColour(I)Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    .line 91
    :cond_0
    invoke-virtual {p0}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->show()Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;

    :cond_1
    return-void
.end method
