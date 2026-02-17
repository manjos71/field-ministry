.class Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5;

.field final synthetic val$apartmentsSpinner:Landroid/widget/Spinner;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$endSpinner:Landroid/widget/Spinner;

.field final synthetic val$rdInc:Landroid/widget/RadioButton;

.field final synthetic val$rdLeftMiddleRight:Landroid/widget/RadioButton;

.field final synthetic val$rdLeftRight:Landroid/widget/RadioButton;

.field final synthetic val$rdLetters:Landroid/widget/RadioButton;

.field final synthetic val$startNumber:Landroid/widget/EditText;

.field final synthetic val$startSpinner:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/EditText;Landroid/app/Dialog;)V
    .locals 0

    .line 425
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5$6;->this$1:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5$6;->val$rdInc:Landroid/widget/RadioButton;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5$6;->val$rdLetters:Landroid/widget/RadioButton;

    iput-object p4, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5$6;->val$rdLeftMiddleRight:Landroid/widget/RadioButton;

    iput-object p5, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5$6;->val$rdLeftRight:Landroid/widget/RadioButton;

    iput-object p6, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5$6;->val$startSpinner:Landroid/widget/Spinner;

    iput-object p7, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5$6;->val$endSpinner:Landroid/widget/Spinner;

    iput-object p8, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5$6;->val$apartmentsSpinner:Landroid/widget/Spinner;

    iput-object p9, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5$6;->val$startNumber:Landroid/widget/EditText;

    iput-object p10, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5$6;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 21

    move-object/from16 v0, p0

    .line 430
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5$6;->val$rdInc:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    .line 431
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5$6;->val$rdLetters:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    .line 432
    iget-object v3, v0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5$6;->val$rdLeftMiddleRight:Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    .line 433
    iget-object v4, v0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5$6;->val$rdLeftRight:Landroid/widget/RadioButton;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    .line 435
    iget-object v5, v0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5$6;->this$1:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5;

    iget-object v5, v5, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    invoke-static {v5}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->-$$Nest$fgetmFloorMap(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)Lcom/lostpixels/fieldservice/activities/territory/dialogs/FloorItemMap;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/FloorItemMap;->clear()V

    .line 436
    iget-object v5, v0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5$6;->val$startSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 437
    iget-object v6, v0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5$6;->val$endSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v5, v6, :cond_0

    move/from16 v20, v6

    move v6, v5

    move/from16 v5, v20

    .line 443
    :cond_0
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    sub-int/2addr v7, v6

    const/4 v6, 0x1

    add-int/2addr v7, v6

    .line 444
    iget-object v8, v0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5$6;->val$apartmentsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v8

    add-int/2addr v8, v6

    .line 448
    iget-object v9, v0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5$6;->val$startNumber:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    const/4 v10, 0x0

    if-lez v9, :cond_1

    .line 450
    :try_start_0
    iget-object v9, v0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5$6;->val$startNumber:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v11, 0x1

    goto :goto_0

    .line 453
    :catch_0
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5$6;->this$1:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    const v2, 0x7f1200ca

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    const/4 v9, 0x0

    const/4 v11, 0x0

    :goto_0
    if-nez v7, :cond_2

    .line 459
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5$6;->this$1:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    const v2, 0x7f1200ce

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_2
    if-nez v8, :cond_3

    if-nez v3, :cond_3

    if-nez v4, :cond_3

    .line 463
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5$6;->this$1:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    const v2, 0x7f1200cd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    .line 467
    :cond_3
    iget-object v12, v0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5$6;->this$1:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5;

    iget-object v12, v12, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    const v13, 0x7f12042d

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 468
    iget-object v13, v0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5$6;->this$1:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5;

    iget-object v13, v13, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    const v14, 0x7f120444

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 469
    iget-object v14, v0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5$6;->this$1:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5;

    iget-object v14, v14, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    const v15, 0x7f1204ba

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    if-eqz v3, :cond_4

    const/4 v8, 0x3

    goto :goto_1

    :cond_4
    if-eqz v4, :cond_5

    const/4 v8, 0x2

    :cond_5
    :goto_1
    if-eqz v11, :cond_6

    move v11, v9

    :goto_2
    const/16 p1, 0x0

    goto :goto_3

    :cond_6
    move v11, v5

    const/4 v9, 0x1

    goto :goto_2

    .line 484
    :goto_3
    iget-object v10, v0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5$6;->this$1:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5;

    iget-object v10, v10, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    invoke-static {v10}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->addFloorNumber(Landroid/content/Context;)I

    move-result v10

    move v15, v5

    :goto_4
    add-int v6, v5, v7

    if-ge v15, v6, :cond_1b

    const/4 v6, 0x1

    if-nez v15, :cond_7

    if-eq v10, v6, :cond_9

    :cond_7
    if-eqz v15, :cond_8

    if-ne v15, v6, :cond_a

    :cond_8
    const/4 v6, 0x2

    if-ne v10, v6, :cond_a

    :cond_9
    move/from16 v16, v1

    move/from16 v17, v2

    move/from16 v19, v3

    goto/16 :goto_b

    .line 489
    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v1, :cond_c

    if-nez v2, :cond_c

    mul-int/lit8 v9, v15, 0x64

    if-ltz v15, :cond_b

    const/16 v16, 0x1

    goto :goto_5

    :cond_b
    const/16 v16, -0x1

    :goto_5
    add-int v9, v9, v16

    :cond_c
    move/from16 v16, v1

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v8, :cond_1a

    if-eqz v16, :cond_d

    .line 494
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move/from16 v17, v2

    :goto_7
    move/from16 v19, v3

    goto/16 :goto_9

    :cond_d
    if-eqz v2, :cond_e

    .line 496
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move/from16 v17, v2

    add-int/lit8 v2, v1, 0x41

    int-to-char v2, v2

    .line 498
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_e
    move/from16 v17, v2

    if-eqz v4, :cond_11

    if-eqz v1, :cond_10

    const/4 v2, 0x1

    if-eq v1, v2, :cond_f

    goto :goto_7

    .line 505
    :cond_f
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_10
    const/4 v2, 0x1

    .line 502
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_11
    const/4 v2, 0x1

    if-eqz v3, :cond_15

    if-eqz v1, :cond_14

    if-eq v1, v2, :cond_13

    const/4 v2, 0x2

    if-eq v1, v2, :cond_12

    goto :goto_7

    .line 517
    :cond_12
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_13
    const/4 v2, 0x2

    .line 514
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_14
    const/4 v2, 0x2

    .line 511
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_15
    const/4 v2, 0x2

    if-nez v15, :cond_17

    if-ltz v15, :cond_16

    move v2, v9

    goto :goto_8

    :cond_16
    neg-int v2, v9

    .line 524
    :goto_8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v18, v2

    move/from16 v19, v3

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v18, v3, p1

    const-string v2, "%03d"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_17
    move/from16 v19, v3

    .line 526
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_9
    add-int/lit8 v2, v8, -0x1

    if-ge v1, v2, :cond_18

    .line 529
    const-string v2, "\n"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18
    if-nez v16, :cond_19

    if-nez v17, :cond_19

    if-gez v15, :cond_19

    add-int/lit8 v9, v9, -0x1

    goto :goto_a

    :cond_19
    add-int/lit8 v9, v9, 0x1

    :goto_a
    add-int/lit8 v1, v1, 0x1

    move/from16 v2, v17

    move/from16 v3, v19

    goto/16 :goto_6

    :cond_1a
    move/from16 v17, v2

    move/from16 v19, v3

    add-int/lit8 v11, v11, 0x1

    .line 538
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5$6;->this$1:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->-$$Nest$fgetmFloorMap(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)Lcom/lostpixels/fieldservice/activities/territory/dialogs/FloorItemMap;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v15, v2}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/FloorItemMap;->add(ILjava/lang/String;)V

    :goto_b
    add-int/lit8 v15, v15, 0x1

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v19

    goto/16 :goto_4

    .line 542
    :cond_1b
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5$6;->this$1:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->addFloorNumber(Landroid/content/Context;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->-$$Nest$fputmiCurrentFloor(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;I)V

    .line 543
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5$6;->this$1:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->-$$Nest$msetFloorNames(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)V

    .line 544
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5$6;->this$1:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->-$$Nest$fgetmFlinger(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v6, 0x1

    invoke-virtual {v1, v6, v2}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->setCurrentScreenNow(IZ)V

    .line 547
    :try_start_1
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5$6;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
