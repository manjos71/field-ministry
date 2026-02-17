.class Lcom/lostpixels/fieldservice/activities/settings/Preferences$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


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


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/settings/Preferences;)V
    .locals 0

    .line 547
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$13;->this$0:Lcom/lostpixels/fieldservice/activities/settings/Preferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    .line 549
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$13;->this$0:Lcom/lostpixels/fieldservice/activities/settings/Preferences;

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 550
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$13;->this$0:Lcom/lostpixels/fieldservice/activities/settings/Preferences;

    const v1, 0x7f12039d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 551
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$13;->this$0:Lcom/lostpixels/fieldservice/activities/settings/Preferences;

    const v2, 0x7f120158

    .line 552
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lostpixels/fieldservice/activities/settings/Preferences$13$2;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/activities/settings/Preferences$13$2;-><init>(Lcom/lostpixels/fieldservice/activities/settings/Preferences$13;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$13;->this$0:Lcom/lostpixels/fieldservice/activities/settings/Preferences;

    const v2, 0x7f120152

    .line 569
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lostpixels/fieldservice/activities/settings/Preferences$13$1;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/activities/settings/Preferences$13$1;-><init>(Lcom/lostpixels/fieldservice/activities/settings/Preferences$13;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 574
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 575
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    const/4 p1, 0x1

    return p1
.end method
