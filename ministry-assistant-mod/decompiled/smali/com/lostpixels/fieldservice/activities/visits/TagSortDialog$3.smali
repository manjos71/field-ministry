.class Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog$3;->this$0:Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2

    const p1, 0x7f09047a

    if-eq p2, p1, :cond_1

    const p1, 0x7f090484

    if-eq p2, p1, :cond_0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 123
    :pswitch_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog$3;->this$0:Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;

    sget-object p2, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;->eByPriority:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    iput-object p2, p1, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;->group:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    goto :goto_0

    .line 114
    :pswitch_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog$3;->this$0:Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;

    sget-object p2, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;->eByNeighborhood:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    iput-object p2, p1, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;->group:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    goto :goto_0

    .line 120
    :pswitch_2
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog$3;->this$0:Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;

    sget-object p2, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;->eByDate:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    iput-object p2, p1, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;->group:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    goto :goto_0

    .line 117
    :pswitch_3
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog$3;->this$0:Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;

    sget-object p2, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;->eByCity:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    iput-object p2, p1, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;->group:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    goto :goto_0

    .line 129
    :pswitch_4
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog$3;->this$0:Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;

    sget-object p2, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;->eByBestVisit:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    iput-object p2, p1, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;->group:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    goto :goto_0

    .line 132
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog$3;->this$0:Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;

    sget-object p2, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;->eNoGrouping:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    iput-object p2, p1, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;->group:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    goto :goto_0

    .line 126
    :cond_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog$3;->this$0:Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;

    sget-object p2, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;->eByScheduledTime:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    iput-object p2, p1, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;->group:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    .line 136
    :goto_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog$3;->this$0:Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;

    iget-boolean p2, p1, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;->isCreating:Z

    if-nez p2, :cond_2

    .line 137
    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;->-$$Nest$fgetlistener(Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;)Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog$OnTagsSortListener;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog$OnTagsSortListener;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog$3;->this$0:Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;

    iget-object v0, p2, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;->sort:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$ESort;

    iget-object v1, p2, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;->group:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    iget-boolean p2, p2, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;->decreasing:Z

    invoke-interface {p1, v0, v1, p2}, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog$OnTagsSortListener;->onSortChanged(Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$ESort;Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;Z)V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f090474
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
