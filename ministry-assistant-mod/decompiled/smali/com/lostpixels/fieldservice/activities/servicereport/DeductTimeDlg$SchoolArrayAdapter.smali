.class Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SchoolArrayAdapter"
.end annotation


# instance fields
.field final context:Landroid/app/Activity;

.field final items:Ljava/util/ArrayList;

.field final mlayoutID:I

.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;Landroid/app/Activity;ILjava/util/ArrayList;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolArrayAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;

    .line 223
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 224
    iput-object p4, p0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolArrayAdapter;->items:Ljava/util/ArrayList;

    .line 225
    iput p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolArrayAdapter;->mlayoutID:I

    .line 227
    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolArrayAdapter;->context:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 p3, 0x1

    if-nez p2, :cond_0

    .line 235
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolArrayAdapter;->context:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    .line 236
    new-instance v0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolViewHolder;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolViewHolder;-><init>()V

    .line 237
    iget v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolArrayAdapter;->mlayoutID:I

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v1, 0x7f090579

    .line 238
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolViewHolder;->lblName:Landroid/widget/TextView;

    const v1, 0x7f090566

    .line 239
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolViewHolder;->lblDate:Landroid/widget/TextView;

    const v1, 0x7f09056e

    .line 240
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolViewHolder;->txtHours:Landroid/widget/TextView;

    const v1, 0x7f0900ed

    .line 241
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolViewHolder;->imgRemove:Landroid/view/View;

    .line 243
    new-instance v2, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolArrayAdapter$1;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolArrayAdapter$1;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolArrayAdapter;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 252
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolViewHolder;

    .line 255
    :goto_0
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolViewHolder;->imgRemove:Landroid/view/View;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 257
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolViewHolder;->lblName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolArrayAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolInfo;

    iget-object v2, v2, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolInfo;->sName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolViewHolder;->txtHours:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolArrayAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolInfo;

    iget v2, v2, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolInfo;->iHours:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, p3, v3

    const-string v2, "%dh"

    invoke-static {v2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object p3, v0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolViewHolder;->lblDate:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolArrayAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;->-$$Nest$fgetmMonthFormat(Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolArrayAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolInfo;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolInfo;->date:Ljava/util/Date;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
