.class Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog$2;
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

    .line 74
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 86
    :pswitch_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;

    sget-object p2, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$ESort;->eSortByName:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$ESort;

    iput-object p2, p1, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;->sort:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$ESort;

    goto :goto_0

    .line 83
    :pswitch_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;

    sget-object p2, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$ESort;->eSortByDate:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$ESort;

    iput-object p2, p1, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;->sort:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$ESort;

    goto :goto_0

    .line 80
    :pswitch_2
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;

    sget-object p2, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$ESort;->eSortByStreet:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$ESort;

    iput-object p2, p1, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;->sort:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$ESort;

    .line 90
    :goto_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;

    iget-boolean p2, p1, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;->isCreating:Z

    if-nez p2, :cond_0

    .line 91
    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;->-$$Nest$fgetlistener(Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;)Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog$OnTagsSortListener;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog$OnTagsSortListener;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;

    iget-object v0, p2, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;->sort:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$ESort;

    iget-object v1, p2, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;->group:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    iget-boolean p2, p2, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;->decreasing:Z

    invoke-interface {p1, v0, v1, p2}, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog$OnTagsSortListener;->onSortChanged(Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$ESort;Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;Z)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f09048b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
