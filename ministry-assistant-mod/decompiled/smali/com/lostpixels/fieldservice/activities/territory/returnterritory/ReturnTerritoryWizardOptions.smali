.class public Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/stepstone/stepper/Step;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions$OnOptionsUpdatedListener;
    }
.end annotation


# instance fields
.field chDeleteTerritory:Landroid/widget/CheckBox;

.field comment:Landroid/widget/EditText;

.field deleteTerritory:Z

.field groupReturnTerritory:Landroid/widget/RadioGroup;

.field hasInterestedPersons:Z

.field isDeleteTerritoryChecked:Z

.field listener:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions$OnOptionsUpdatedListener;

.field realm:Lio/realm/Realm;

.field territory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;->listener:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions$OnOptionsUpdatedListener;

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;->isDeleteTerritoryChecked:Z

    .line 37
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;->deleteTerritory:Z

    .line 38
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;->hasInterestedPersons:Z

    return-void
.end method


# virtual methods
.method public deleteTerritory()Z
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;->chDeleteTerritory:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    return v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;->comment:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 115
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 116
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;->realm:Lio/realm/Realm;

    .line 118
    instance-of v0, p1, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions$OnOptionsUpdatedListener;

    if-eqz v0, :cond_0

    .line 119
    check-cast p1, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions$OnOptionsUpdatedListener;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;->listener:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions$OnOptionsUpdatedListener;

    return-void

    .line 121
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " must implemenet OnOptionsUpdatedListener"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const v0, 0x7f0c0108

    const/4 v1, 0x0

    .line 50
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09014d

    .line 53
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;->chDeleteTerritory:Landroid/widget/CheckBox;

    const p2, 0x7f090479

    .line 54
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioGroup;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;->groupReturnTerritory:Landroid/widget/RadioGroup;

    const p2, 0x7f090181

    .line 55
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;->comment:Landroid/widget/EditText;

    .line 56
    iget-boolean p2, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;->deleteTerritory:Z

    if-eqz p2, :cond_0

    .line 57
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;->chDeleteTerritory:Landroid/widget/CheckBox;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_0
    if-eqz p3, :cond_1

    .line 60
    const-string p2, "checked"

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;->isDeleteTerritoryChecked:Z

    .line 61
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;->realm:Lio/realm/Realm;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p2

    const-string v0, "territory_id"

    invoke-virtual {p3, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getTerritory(J)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object p2

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;->territory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    goto :goto_0

    .line 63
    :cond_1
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;->chDeleteTerritory:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    iput-boolean p2, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;->isDeleteTerritoryChecked:Z

    .line 64
    :goto_0
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;->chDeleteTerritory:Landroid/widget/CheckBox;

    new-instance p3, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions$1;

    invoke-direct {p3, p0}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions$1;-><init>(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;)V

    invoke-virtual {p2, p3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 75
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;->groupReturnTerritory:Landroid/widget/RadioGroup;

    new-instance p3, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions$2;

    invoke-direct {p3, p0}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions$2;-><init>(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;)V

    invoke-virtual {p2, p3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 82
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;->realm:Lio/realm/Realm;

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;->territory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {p2, p3}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->hasInterestedPersons(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;->hasInterestedPersons:Z

    .line 83
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;->territory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->hasTerritoryHelperLink(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)Z

    move-result p2

    const/16 p3, 0x8

    if-eqz p2, :cond_2

    .line 85
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;->territory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->isReturned()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 86
    :cond_2
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;->groupReturnTerritory:Landroid/widget/RadioGroup;

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f0902d7

    .line 87
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 89
    :cond_3
    iget-boolean p2, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;->hasInterestedPersons:Z

    if-nez p2, :cond_4

    .line 90
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;->chDeleteTerritory:Landroid/widget/CheckBox;

    const v0, 0x7f1200a8

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 92
    :cond_4
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;->comment:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;->groupReturnTerritory:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const v2, 0x7f090470

    if-eq v0, v2, :cond_5

    goto :goto_1

    :cond_5
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 127
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 128
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;->realm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 149
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 150
    const-string v0, "checked"

    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;->isDeleteTerritoryChecked:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 151
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;->territory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getId()J

    move-result-wide v0

    const-string v2, "territory_id"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public onSelected()V
    .locals 0

    return-void
.end method

.method public setDeleteTerritory()V
    .locals 1

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;->deleteTerritory:Z

    return-void
.end method

.method public setTerritory(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;->territory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    return-void
.end method

.method public shouldReturnTerritory()Z
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;->groupReturnTerritory:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const v1, 0x7f090470

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public territoryWorked()Z
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizardOptions;->groupReturnTerritory:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const v1, 0x7f09048a

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public verifyStep()Lcom/stepstone/stepper/VerificationError;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
