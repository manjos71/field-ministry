.class Lcom/lostpixels/fieldservice/activities/settings/Preferences$7$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/settings/Preferences$7;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/activities/settings/Preferences$7;

.field final synthetic val$chCapAt70:Landroid/widget/CheckBox;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$rdItems:Landroid/widget/RadioGroup;

.field final synthetic val$text:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/settings/Preferences$7;Landroid/widget/EditText;Landroid/widget/RadioGroup;Landroid/widget/CheckBox;Landroid/app/Dialog;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$7$2;->this$1:Lcom/lostpixels/fieldservice/activities/settings/Preferences$7;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$7$2;->val$text:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$7$2;->val$rdItems:Landroid/widget/RadioGroup;

    iput-object p4, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$7$2;->val$chCapAt70:Landroid/widget/CheckBox;

    iput-object p5, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$7$2;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 268
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$7$2;->this$1:Lcom/lostpixels/fieldservice/activities/settings/Preferences$7;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/settings/Preferences$7;->val$serviceManager:Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$7$2;->val$text:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->setCustom1(Ljava/lang/String;)V

    .line 269
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$7$2;->this$1:Lcom/lostpixels/fieldservice/activities/settings/Preferences$7;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/settings/Preferences$7;->val$serviceManager:Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$7$2;->val$rdItems:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x7f090491

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$7$2;->val$chCapAt70:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->setCustomItem1Caps(Z)V

    .line 270
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$7$2;->this$1:Lcom/lostpixels/fieldservice/activities/settings/Preferences$7;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/settings/Preferences$7;->val$serviceManager:Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$7$2;->val$rdItems:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    if-ne v0, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {p1, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->setCustomItem1IsTime(Z)V

    .line 271
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$7$2;->this$1:Lcom/lostpixels/fieldservice/activities/settings/Preferences$7;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/settings/Preferences$7;->this$0:Lcom/lostpixels/fieldservice/activities/settings/Preferences;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/settings/Preferences;->realm:Lio/realm/Realm;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->setUsingCustom1(Z)V

    .line 272
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$7$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 273
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$7$2;->this$1:Lcom/lostpixels/fieldservice/activities/settings/Preferences$7;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/settings/Preferences$7;->val$checkCustom1:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 274
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$7$2;->this$1:Lcom/lostpixels/fieldservice/activities/settings/Preferences$7;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/settings/Preferences$7;->val$checkCustom1:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$7$2;->val$text:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
