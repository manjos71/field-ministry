.class Lcom/lostpixels/fieldservice/helpfunctions/FileManager$1saveTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/helpfunctions/FileManager$FileOperationInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/helpfunctions/FileManager$1saveTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/helpfunctions/FileManager$1saveTask;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/helpfunctions/FileManager$1saveTask;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/lostpixels/fieldservice/helpfunctions/FileManager$1saveTask$1;->this$0:Lcom/lostpixels/fieldservice/helpfunctions/FileManager$1saveTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileOperationComplete(Z)V
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/lostpixels/fieldservice/helpfunctions/FileManager$1saveTask$1;->this$0:Lcom/lostpixels/fieldservice/helpfunctions/FileManager$1saveTask;

    iput-boolean p1, v0, Lcom/lostpixels/fieldservice/helpfunctions/FileManager$1saveTask;->bOK:Z

    return-void
.end method
