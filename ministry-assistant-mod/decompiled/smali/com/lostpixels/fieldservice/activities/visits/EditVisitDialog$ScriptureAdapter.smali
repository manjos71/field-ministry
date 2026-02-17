.class Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$ScriptureAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScriptureAdapter"
.end annotation


# instance fields
.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private textColor:I

.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;


# direct methods
.method public constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;Landroid/app/Activity;ILjava/util/List;)V
    .locals 1

    .line 1074
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$ScriptureAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    const p1, 0x7f090642

    .line 1075
    invoke-direct {p0, p2, p3, p1, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    const/4 p1, 0x0

    .line 1072
    iput p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$ScriptureAdapter;->textColor:I

    .line 1076
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 1077
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    const p4, 0x7f040014

    const/4 v0, 0x1

    invoke-virtual {p3, p4, p1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1078
    iget p3, p1, Landroid/util/TypedValue;->type:I

    const/16 p4, 0x1c

    if-lt p3, p4, :cond_0

    const/16 p4, 0x1f

    if-gt p3, p4, :cond_0

    .line 1079
    iget p1, p1, Landroid/util/TypedValue;->data:I

    iput p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$ScriptureAdapter;->textColor:I

    .line 1080
    :cond_0
    const-string p1, "layout_inflater"

    invoke-virtual {p2, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$ScriptureAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    if-nez p2, :cond_0

    .line 1095
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$ScriptureAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const/4 p3, 0x0

    const/4 v0, 0x1

    const v1, 0x7f0c011c

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1096
    new-instance p3, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$ItemViewHolder;

    invoke-direct {p3}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$ItemViewHolder;-><init>()V

    const v0, 0x7f090642

    .line 1097
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$ItemViewHolder;->verse:Landroid/widget/TextView;

    const v0, 0x7f0905ee

    .line 1098
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$ItemViewHolder;->content:Landroid/widget/TextView;

    const v0, 0x7f090269

    .line 1099
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$ItemViewHolder;->btnEdit:Landroid/view/View;

    .line 1100
    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$ScriptureAdapter$1;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$ScriptureAdapter$1;-><init>(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$ScriptureAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902ec

    .line 1109
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1110
    iget-object v1, p3, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$ItemViewHolder;->btnEdit:Landroid/view/View;

    new-instance v2, Landroid/graphics/RectF;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f4ccccd    # 0.8f

    invoke-direct {v2, v5, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {v0, v1, v2}, Lcom/lostpixels/fieldservice/helpfunctions/FractionalTouchDelegate;->setupDelegate(Landroid/view/View;Landroid/view/View;Landroid/graphics/RectF;)V

    .line 1112
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 1114
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$ItemViewHolder;

    .line 1117
    :goto_0
    iget-object v0, p3, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$ItemViewHolder;->btnEdit:Landroid/view/View;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1118
    invoke-interface {p0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/internal/report/Scripture;

    .line 1119
    iget-object v0, p3, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$ItemViewHolder;->verse:Landroid/widget/TextView;

    iget v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$ScriptureAdapter;->textColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1120
    iget-object v0, p3, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$ItemViewHolder;->content:Landroid/widget/TextView;

    iget v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$ScriptureAdapter;->textColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1122
    iget-object v0, p3, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$ItemViewHolder;->verse:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/Scripture;->realmGet$verse()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1123
    iget-object v0, p3, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$ItemViewHolder;->content:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/Scripture;->realmGet$content()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1124
    iget-object p1, p3, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$ItemViewHolder;->btnEdit:Landroid/view/View;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
