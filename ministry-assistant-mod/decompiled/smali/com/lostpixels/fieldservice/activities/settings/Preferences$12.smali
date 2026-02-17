.class Lcom/lostpixels/fieldservice/activities/settings/Preferences$12;
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

    .line 504
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$12;->this$0:Lcom/lostpixels/fieldservice/activities/settings/Preferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    .line 506
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$12;->this$0:Lcom/lostpixels/fieldservice/activities/settings/Preferences;

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 507
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$12;->this$0:Lcom/lostpixels/fieldservice/activities/settings/Preferences;

    const v1, 0x7f120154

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 508
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$12;->this$0:Lcom/lostpixels/fieldservice/activities/settings/Preferences;

    const v2, 0x7f120158

    .line 509
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lostpixels/fieldservice/activities/settings/Preferences$12$2;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/activities/settings/Preferences$12$2;-><init>(Lcom/lostpixels/fieldservice/activities/settings/Preferences$12;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$12;->this$0:Lcom/lostpixels/fieldservice/activities/settings/Preferences;

    const v2, 0x7f120152

    .line 530
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lostpixels/fieldservice/activities/settings/Preferences$12$1;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/activities/settings/Preferences$12$1;-><init>(Lcom/lostpixels/fieldservice/activities/settings/Preferences$12;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 535
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 536
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    const/4 p1, 0x1

    return p1
.end method
