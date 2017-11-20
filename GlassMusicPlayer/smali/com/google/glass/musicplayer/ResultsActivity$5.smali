.class Lcom/google/glass/musicplayer/ResultsActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/musicplayer/ResultsActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/musicplayer/ResultsActivity;)V
    .locals 0

    .prologue
    .line 344
    iput-object p1, p0, Lcom/google/glass/musicplayer/ResultsActivity$5;->this$0:Lcom/google/glass/musicplayer/ResultsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity$5;->this$0:Lcom/google/glass/musicplayer/ResultsActivity;

    iget-object v0, v0, Lcom/google/glass/musicplayer/ResultsActivity;->bestGuessDialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->show()V

    .line 348
    return-void
.end method
