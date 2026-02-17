.class Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const v2, 0x7f090054

    .line 246
    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const v4, 0x7f090060

    .line 247
    invoke-virtual {v1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 250
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;->-$$Nest$fgetmlstItems(Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :cond_0
    if-ge v9, v6, :cond_3

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    check-cast v10, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectGroup;

    .line 251
    invoke-virtual {v10}, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectGroup;->getStreetIndex()I

    move-result v11

    int-to-long v11, v11

    cmp-long v13, v11, v2

    if-nez v13, :cond_0

    .line 252
    invoke-virtual {v10}, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectGroup;->getSelectItems()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x0

    :cond_1
    if-ge v12, v11, :cond_2

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v12, v12, 0x1

    check-cast v13, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectItem;

    .line 253
    invoke-virtual {v13}, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectItem;->getVisit()Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    move-result-object v14

    invoke-virtual {v14}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getId()J

    move-result-wide v14

    cmp-long v16, v14, v4

    if-nez v16, :cond_1

    .line 254
    invoke-virtual {v13}, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectItem;->isChecked()Z

    move-result v8

    const/4 v10, 0x1

    xor-int/2addr v8, v10

    invoke-virtual {v13, v8}, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectItem;->setChecked(Z)V

    const/4 v8, 0x1

    :cond_2
    if-eqz v8, :cond_0

    .line 264
    :cond_3
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;->-$$Nest$fgetmlstStreets(Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
