.class Lcom/lostpixels/fieldservice/activities/settings/Preferences$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


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


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/settings/Preferences$7;Landroid/widget/CheckBox;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$7$1;->this$1:Lcom/lostpixels/fieldservice/activities/settings/Preferences$7;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$7$1;->val$chCapAt70:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    const p1, 0x7f090491

    if-ne p2, p1, :cond_0

    .line 256
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$7$1;->val$chCapAt70:Landroid/widget/CheckBox;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 258
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$7$1;->val$chCapAt70:Landroid/widget/CheckBox;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
