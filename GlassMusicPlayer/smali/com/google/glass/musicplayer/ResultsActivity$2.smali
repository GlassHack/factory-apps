.class Lcom/google/glass/musicplayer/ResultsActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/google/glass/musicplayer/ResultsActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/musicplayer/ResultsActivity;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/google/glass/musicplayer/ResultsActivity$2;->this$0:Lcom/google/glass/musicplayer/ResultsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity$2;->this$0:Lcom/google/glass/musicplayer/ResultsActivity;

    invoke-virtual {v0}, Lcom/google/glass/musicplayer/ResultsActivity;->onConfirm()Z

    .line 184
    return-void
.end method
