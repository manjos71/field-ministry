.class Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14

    .line 306
    new-instance v10, Landroid/app/Dialog;

    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    invoke-direct {v10, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const p1, 0x7f0c0040

    .line 307
    invoke-virtual {v10, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 308
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    const v0, 0x7f12014e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v10, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const p1, 0x7f0904f9

    .line 310
    invoke-virtual {v10, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/widget/Spinner;

    const p1, 0x7f0904f4

    .line 311
    invoke-virtual {v10, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Landroid/widget/Spinner;

    const p1, 0x7f0904ee

    .line 312
    invoke-virtual {v10, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Landroid/widget/Spinner;

    const p1, 0x7f0901e4

    .line 313
    invoke-virtual {v10, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v9, p1

    check-cast v9, Landroid/widget/EditText;

    const p1, 0x7f09047b

    .line 314
    invoke-virtual {v10, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/widget/RadioButton;

    const p1, 0x7f090480

    .line 315
    invoke-virtual {v10, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/widget/RadioButton;

    const p1, 0x7f090487

    .line 316
    invoke-virtual {v10, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    const v0, 0x7f09047f

    .line 317
    invoke-virtual {v10, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/RadioButton;

    const v0, 0x7f09047e

    .line 318
    invoke-virtual {v10, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/RadioButton;

    .line 320
    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$FloorAdapter;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->-$$Nest$mgetFloorNumbers(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)Ljava/util/List;

    move-result-object v11

    const v12, 0x1090008

    invoke-direct {v0, v1, v12, v11}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$FloorAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v1, 0x1090009

    .line 321
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 322
    invoke-virtual {v6, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const/16 v0, 0x64

    .line 323
    invoke-virtual {v6, v0}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 324
    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$FloorAdapter;

    iget-object v11, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    invoke-static {v11}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->-$$Nest$mgetFloorNumbers(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)Ljava/util/List;

    move-result-object v13

    invoke-direct {v0, v11, v12, v13}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$FloorAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 325
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 326
    invoke-virtual {v7, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const/16 v0, 0x65

    .line 327
    invoke-virtual {v7, v0}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 329
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v11, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    invoke-static {v11}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->-$$Nest$mgetApartmentNumbers(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)Ljava/util/List;

    move-result-object v13

    invoke-direct {v0, v11, v12, v13}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 330
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 331
    invoke-virtual {v8, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const/4 v0, 0x0

    .line 332
    invoke-virtual {v8, v0}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 334
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v11, 0x4

    .line 342
    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    .line 344
    new-instance v12, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5$1;

    invoke-direct {v12, p0, v9, v8, v1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5$1;-><init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5;Landroid/widget/EditText;Landroid/widget/Spinner;Landroid/content/SharedPreferences;)V

    invoke-virtual {v2, v12}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 357
    new-instance v12, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5$2;

    invoke-direct {v12, p0, v9, v8, v1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5$2;-><init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5;Landroid/widget/EditText;Landroid/widget/Spinner;Landroid/content/SharedPreferences;)V

    invoke-virtual {v3, v12}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 370
    new-instance v12, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5$3;

    invoke-direct {v12, p0, v9, v1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5$3;-><init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5;Landroid/widget/EditText;Landroid/content/SharedPreferences;)V

    invoke-virtual {p1, v12}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 380
    new-instance v12, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5$4;

    invoke-direct {v12, p0, v9, v8, v1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5$4;-><init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5;Landroid/widget/EditText;Landroid/widget/Spinner;Landroid/content/SharedPreferences;)V

    invoke-virtual {v4, v12}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 393
    new-instance v12, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5$5;

    invoke-direct {v12, p0, v9, v8, v1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5$5;-><init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5;Landroid/widget/EditText;Landroid/widget/Spinner;Landroid/content/SharedPreferences;)V

    invoke-virtual {v5, v12}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 406
    const-string v12, "LastOrdering"

    invoke-interface {v1, v12, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_3

    const/4 p1, 0x2

    if-eq v0, p1, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    if-eq v0, v11, :cond_0

    goto :goto_0

    .line 420
    :cond_0
    invoke-virtual {v5, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    .line 417
    :cond_1
    invoke-virtual {v4, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    .line 414
    :cond_2
    invoke-virtual {v3, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    .line 411
    :cond_3
    invoke-virtual {v2, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    .line 408
    :cond_4
    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :goto_0
    const p1, 0x7f0900eb

    .line 424
    invoke-virtual {v10, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 425
    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5$6;

    move-object v1, p0

    invoke-direct/range {v0 .. v10}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5$6;-><init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0900e6

    .line 554
    invoke-virtual {v10, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 555
    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5$7;

    invoke-direct {v0, p0, v10}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5$7;-><init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5;Landroid/app/Dialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 567
    invoke-virtual {v10}, Landroid/app/Dialog;->show()V

    return-void
.end method
