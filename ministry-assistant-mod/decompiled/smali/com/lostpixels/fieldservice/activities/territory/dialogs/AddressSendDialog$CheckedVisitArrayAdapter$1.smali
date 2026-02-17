.class Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$CheckedVisitArrayAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$CheckedVisitArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$CheckedVisitArrayAdapter;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$CheckedVisitArrayAdapter;)V
    .locals 0

    .line 634
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$CheckedVisitArrayAdapter$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$CheckedVisitArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 637
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectItem;

    if-eqz p1, :cond_0

    .line 639
    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectItem;->setChecked(Z)V

    :cond_0
    return-void
.end method
