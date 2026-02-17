.class Lcom/lostpixels/fieldservice/activities/settings/Preferences$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/settings/Preferences;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/settings/Preferences;

.field final synthetic val$checkCustom1:Landroid/preference/CheckBoxPreference;

.field final synthetic val$serviceManager:Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/settings/Preferences;Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;Landroid/preference/CheckBoxPreference;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$7;->this$0:Lcom/lostpixels/fieldservice/activities/settings/Preferences;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$7;->val$serviceManager:Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$7;->val$checkCustom1:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    .line 239
    check-cast p2, Ljava/lang/Boolean;

    .line 240
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 241
    new-instance v5, Landroid/app/Dialog;

    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$7;->this$0:Lcom/lostpixels/fieldservice/activities/settings/Preferences;

    invoke-direct {v5, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const p1, 0x7f0c0062

    .line 242
    invoke-virtual {v5, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 243
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$7;->this$0:Lcom/lostpixels/fieldservice/activities/settings/Preferences;

    const v0, 0x7f120297

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const p1, 0x7f0902c0

    .line 245
    invoke-virtual {v5, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/widget/EditText;

    .line 246
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$7;->val$serviceManager:Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getCustom1()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f090124

    .line 248
    invoke-virtual {v5, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/widget/CheckBox;

    .line 249
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$7;->val$serviceManager:Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isCustomItem1Caps()Z

    move-result p1

    invoke-virtual {v4, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    const p1, 0x7f09047c

    .line 251
    invoke-virtual {v5, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/widget/RadioGroup;

    .line 252
    new-instance p1, Lcom/lostpixels/fieldservice/activities/settings/Preferences$7$1;

    invoke-direct {p1, p0, v4}, Lcom/lostpixels/fieldservice/activities/settings/Preferences$7$1;-><init>(Lcom/lostpixels/fieldservice/activities/settings/Preferences$7;Landroid/widget/CheckBox;)V

    invoke-virtual {v3, p1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 262
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$7;->val$serviceManager:Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isCustomItem1IsTime()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f090491

    goto :goto_0

    :cond_0
    const p1, 0x7f09047d

    :goto_0
    invoke-virtual {v3, p1}, Landroid/widget/RadioGroup;->check(I)V

    const p1, 0x7f0900fe

    .line 264
    invoke-virtual {v5, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 265
    new-instance v0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$7$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/lostpixels/fieldservice/activities/settings/Preferences$7$2;-><init>(Lcom/lostpixels/fieldservice/activities/settings/Preferences$7;Landroid/widget/EditText;Landroid/widget/RadioGroup;Landroid/widget/CheckBox;Landroid/app/Dialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0900e6

    .line 278
    invoke-virtual {v5, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$7$3;

    invoke-direct {v0, p0, v5}, Lcom/lostpixels/fieldservice/activities/settings/Preferences$7$3;-><init>(Lcom/lostpixels/fieldservice/activities/settings/Preferences$7;Landroid/app/Dialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    return p2

    :cond_1
    move-object v1, p0

    .line 287
    iget-object p1, v1, Lcom/lostpixels/fieldservice/activities/settings/Preferences$7;->this$0:Lcom/lostpixels/fieldservice/activities/settings/Preferences;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/settings/Preferences;->realm:Lio/realm/Realm;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->setUsingCustom1(Z)V

    const/4 p1, 0x1

    return p1
.end method
