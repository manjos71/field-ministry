.class Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HistoryArrayAdapter"
.end annotation


# instance fields
.field final context:Landroid/app/Activity;

.field final items:Ljava/util/List;

.field private msDoNotCall:Ljava/lang/String;

.field private msEmpty:Ljava/lang/String;

.field private msEye:Ljava/lang/String;

.field private msInterested:Ljava/lang/String;

.field private msIsJw:Ljava/lang/String;

.field private msLetter:Ljava/lang/String;

.field private msLocked:Ljava/lang/String;

.field private msNoAds:Ljava/lang/String;

.field private msNoTime:Ljava/lang/String;

.field private msNoTrespass:Ljava/lang/String;

.field private msNotAtHome:Ljava/lang/String;

.field private msNotInterested:Ljava/lang/String;

.field private msOtherLang:Ljava/lang/String;

.field private msPerPhone:Ljava/lang/String;

.field private msReferred:Ljava/lang/String;

.field private msReturnVisit:Ljava/lang/String;

.field private msTract:Ljava/lang/String;

.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg;Landroid/app/Activity;Ljava/util/List;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg;

    const p1, 0x7f0c016b

    .line 211
    invoke-direct {p0, p2, p1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const/4 p1, 0x0

    .line 175
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;->msNotAtHome:Ljava/lang/String;

    .line 177
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;->msNotInterested:Ljava/lang/String;

    .line 179
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;->msNoTime:Ljava/lang/String;

    .line 181
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;->msLetter:Ljava/lang/String;

    .line 183
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;->msEye:Ljava/lang/String;

    .line 185
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;->msDoNotCall:Ljava/lang/String;

    .line 187
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;->msReturnVisit:Ljava/lang/String;

    .line 189
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;->msEmpty:Ljava/lang/String;

    .line 191
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;->msOtherLang:Ljava/lang/String;

    .line 193
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;->msNoTrespass:Ljava/lang/String;

    .line 195
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;->msReferred:Ljava/lang/String;

    .line 197
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;->msLocked:Ljava/lang/String;

    .line 199
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;->msTract:Ljava/lang/String;

    .line 201
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;->msNoAds:Ljava/lang/String;

    .line 203
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;->msInterested:Ljava/lang/String;

    .line 205
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;->msIsJw:Ljava/lang/String;

    .line 207
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;->msPerPhone:Ljava/lang/String;

    .line 212
    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;->items:Ljava/util/List;

    .line 213
    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;->context:Landroid/app/Activity;

    return-void
.end method

.method private visitTypeToText(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;->msNotAtHome:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 269
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x11

    .line 270
    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;->msNotAtHome:Ljava/lang/String;

    const/4 v1, 0x0

    .line 271
    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;->msNotInterested:Ljava/lang/String;

    const/4 v1, 0x1

    .line 272
    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;->msNoTime:Ljava/lang/String;

    const/4 v1, 0x5

    .line 273
    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;->msLetter:Ljava/lang/String;

    const/4 v1, 0x3

    .line 274
    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;->msEye:Ljava/lang/String;

    const/16 v1, 0x12

    .line 275
    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;->msDoNotCall:Ljava/lang/String;

    const v1, 0x7f1204b5

    .line 276
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;->msReturnVisit:Ljava/lang/String;

    const/16 v1, 0xe

    .line 277
    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;->msEmpty:Ljava/lang/String;

    const/16 v1, 0x10

    .line 278
    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;->msOtherLang:Ljava/lang/String;

    const v0, 0x7f12046e

    .line 279
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;->msNoTrespass:Ljava/lang/String;

    const v0, 0x7f1204a7

    .line 280
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;->msReferred:Ljava/lang/String;

    const v0, 0x7f120434

    .line 281
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;->msLocked:Ljava/lang/String;

    const v0, 0x7f12053b

    .line 282
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;->msTract:Ljava/lang/String;

    const v0, 0x7f12045d

    .line 283
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;->msNoAds:Ljava/lang/String;

    const v0, 0x7f120171

    .line 284
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;->msInterested:Ljava/lang/String;

    .line 285
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg;

    const v0, 0x7f120363

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;->msIsJw:Ljava/lang/String;

    .line 286
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg;

    const v0, 0x7f120485

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;->msPerPhone:Ljava/lang/String;

    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 326
    :pswitch_0
    const-string p1, ""

    return-object p1

    .line 323
    :pswitch_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;->msPerPhone:Ljava/lang/String;

    return-object p1

    .line 321
    :pswitch_2
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;->msIsJw:Ljava/lang/String;

    return-object p1

    .line 319
    :pswitch_3
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;->msNoAds:Ljava/lang/String;

    return-object p1

    .line 317
    :pswitch_4
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;->msTract:Ljava/lang/String;

    return-object p1

    .line 315
    :pswitch_5
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;->msLocked:Ljava/lang/String;

    return-object p1

    .line 313
    :pswitch_6
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;->msReferred:Ljava/lang/String;

    return-object p1

    .line 311
    :pswitch_7
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;->msNoTrespass:Ljava/lang/String;

    return-object p1

    .line 299
    :pswitch_8
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;->msDoNotCall:Ljava/lang/String;

    return-object p1

    .line 309
    :pswitch_9
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;->msNotAtHome:Ljava/lang/String;

    return-object p1

    .line 307
    :pswitch_a
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;->msOtherLang:Ljava/lang/String;

    return-object p1

    .line 305
    :pswitch_b
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;->msEmpty:Ljava/lang/String;

    return-object p1

    .line 303
    :pswitch_c
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;->msReturnVisit:Ljava/lang/String;

    return-object p1

    .line 301
    :pswitch_d
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;->msInterested:Ljava/lang/String;

    return-object p1

    .line 297
    :pswitch_e
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;->msNotInterested:Ljava/lang/String;

    return-object p1

    .line 291
    :pswitch_f
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;->msNoTime:Ljava/lang/String;

    return-object p1

    .line 293
    :pswitch_10
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;->msEye:Ljava/lang/String;

    return-object p1

    .line 295
    :pswitch_11
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;->msLetter:Ljava/lang/String;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected getHouseholderImage(I)I
    .locals 2

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    const v1, 0x7f0801fd

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    return v1

    :cond_0
    const p1, 0x7f080384

    return p1

    :cond_1
    const p1, 0x7f08013c

    return p1

    :cond_2
    return v1

    :cond_3
    const p1, 0x7f080172

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    if-nez p2, :cond_0

    .line 222
    new-instance p2, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$AddressViewHolder;

    invoke-direct {p2}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$AddressViewHolder;-><init>()V

    .line 223
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;->context:Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0c016b

    const/4 v1, 0x0

    .line 224
    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f0902d9

    .line 226
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$AddressViewHolder;->strDate:Landroid/widget/TextView;

    const v0, 0x7f09066c

    .line 227
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$AddressViewHolder;->strInfo:Landroid/widget/TextView;

    const v0, 0x7f09066a

    .line 228
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$AddressViewHolder;->strAge:Landroid/widget/TextView;

    const v0, 0x7f09027e

    .line 229
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$AddressViewHolder;->imgHouseholder:Landroid/widget/ImageView;

    const v0, 0x7f090298

    .line 230
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$AddressViewHolder;->imgVisitType:Landroid/widget/ImageView;

    .line 231
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 233
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$AddressViewHolder;

    move-object v5, p3

    move-object p3, p2

    move-object p2, v5

    .line 236
    :goto_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$VisitHistoryInfo;

    .line 237
    iget-object v0, p1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$VisitHistoryInfo;->item:Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    .line 238
    iget-object v3, p2, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$AddressViewHolder;->imgVisitType:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;->getVisitType(I)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 239
    iget-object v0, p2, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$AddressViewHolder;->strInfo:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;->context:Landroid/app/Activity;

    iget-object v4, p1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$VisitHistoryInfo;->item:Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;->getType()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;->visitTypeToText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v0, p2, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$AddressViewHolder;->strAge:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 241
    iget-object v0, p2, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$AddressViewHolder;->imgHouseholder:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 242
    iget-object v0, p2, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$AddressViewHolder;->imgVisitType:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 243
    :cond_1
    iget-object v0, p1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$VisitHistoryInfo;->info:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->hasVisitType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 244
    iget-object v0, p2, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$AddressViewHolder;->strInfo:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;->context:Landroid/app/Activity;

    iget-object v4, p1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$VisitHistoryInfo;->info:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getVisitType()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;->visitTypeToText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v0, p2, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$AddressViewHolder;->imgVisitType:Landroid/widget/ImageView;

    iget-object v3, p1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$VisitHistoryInfo;->info:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getVisitType()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;->getVisitType(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 246
    iget-object v0, p2, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$AddressViewHolder;->strAge:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 247
    iget-object v0, p2, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$AddressViewHolder;->imgHouseholder:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 248
    iget-object v0, p2, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$AddressViewHolder;->imgVisitType:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 250
    :cond_2
    iget-object v0, p2, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$AddressViewHolder;->strInfo:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$VisitHistoryInfo;->info:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v0, p2, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$AddressViewHolder;->imgHouseholder:Landroid/widget/ImageView;

    iget-object v3, p1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$VisitHistoryInfo;->info:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getType()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;->getHouseholderImage(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 252
    iget-object v0, p2, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$AddressViewHolder;->strAge:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$VisitHistoryInfo;->info:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getAge()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v0, p2, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$AddressViewHolder;->strAge:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 254
    iget-object v0, p2, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$AddressViewHolder;->imgHouseholder:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 255
    iget-object v0, p2, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$AddressViewHolder;->imgVisitType:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 257
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EEEE"

    iget-object v2, p1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$VisitHistoryInfo;->date:Ljava/util/Date;

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    .line 259
    invoke-static {v1}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    iget-object v2, p1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$VisitHistoryInfo;->date:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    .line 261
    invoke-static {v1}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$VisitHistoryInfo;->date:Ljava/util/Date;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 262
    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$AddressViewHolder;->strDate:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p3
.end method

.method protected getVisitType(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const p1, 0x7f080182

    return p1

    :pswitch_1
    const p1, 0x7f0802db

    return p1

    :pswitch_2
    const p1, 0x7f0801e1

    return p1

    :pswitch_3
    const p1, 0x7f080298

    return p1

    :pswitch_4
    const p1, 0x7f08036f

    return p1

    :pswitch_5
    const p1, 0x7f0801ee

    return p1

    :pswitch_6
    const p1, 0x7f0802fb

    return p1

    :pswitch_7
    const p1, 0x7f0802b3

    return p1

    :pswitch_8
    const p1, 0x7f08016b

    return p1

    :pswitch_9
    const p1, 0x7f0802d7

    return p1

    :pswitch_a
    const p1, 0x7f080164

    return p1

    :pswitch_b
    const p1, 0x7f080301

    return p1

    :pswitch_c
    const p1, 0x7f080315

    return p1

    :pswitch_d
    const p1, 0x7f0802ae

    return p1

    :pswitch_e
    const p1, 0x7f0800d1

    return p1

    :pswitch_f
    const p1, 0x7f08016d

    return p1

    :pswitch_10
    const p1, 0x7f0801e8

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
