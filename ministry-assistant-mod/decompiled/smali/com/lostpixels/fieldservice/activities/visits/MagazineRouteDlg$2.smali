.class Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 152
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->-$$Nest$fgetmListener(Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;)Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg$OnSetMonthsListener;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 153
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 154
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->-$$Nest$fgetmDate(Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v1, 0x5

    const/4 v2, 0x1

    .line 156
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 157
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v3, 0x7e2

    const/4 v4, 0x2

    if-lt v1, v3, :cond_0

    .line 158
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    rem-int/2addr v5, v4

    sub-int/2addr v1, v5

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v5, 0x4

    if-ge v1, v5, :cond_3

    .line 161
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-gt v5, v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v5, v3, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-lt v5, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, -0x1

    .line 164
    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->add(II)V

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v5, -0x2

    .line 162
    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->add(II)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    :cond_3
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->-$$Nest$fgetchMonth1(Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 168
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    :cond_4
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-lt v1, v3, :cond_5

    const/4 v1, 0x2

    goto :goto_3

    :cond_5
    const/4 v1, 0x1

    :goto_3
    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->add(II)V

    .line 170
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->-$$Nest$fgetchMonth2(Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 171
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_6
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-lt v1, v3, :cond_7

    const/4 v1, 0x2

    goto :goto_4

    :cond_7
    const/4 v1, 0x1

    :goto_4
    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->add(II)V

    .line 173
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->-$$Nest$fgetchMonth3(Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 174
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_8
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-lt v1, v3, :cond_9

    const/4 v1, 0x2

    goto :goto_5

    :cond_9
    const/4 v1, 0x1

    :goto_5
    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->add(II)V

    .line 176
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->-$$Nest$fgetchMonth4(Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 177
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_a
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-lt v1, v3, :cond_b

    const/4 v1, 0x2

    goto :goto_6

    :cond_b
    const/4 v1, 0x1

    :goto_6
    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->add(II)V

    .line 179
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->-$$Nest$fgetchMonth5(Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 180
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_c
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-lt v1, v3, :cond_d

    const/4 v2, 0x2

    :cond_d
    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->add(II)V

    .line 182
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->-$$Nest$fgetchMonth6(Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 183
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_e
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->-$$Nest$fgetmListener(Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;)Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg$OnSetMonthsListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg$OnSetMonthsListener;->onSetMonths(Ljava/util/ArrayList;)V

    .line 188
    :cond_f
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
