.class Lcom/google/glass/musicplayer/ResultsActivity$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/google/glass/musicplayer/ResultsActivity$1;


# direct methods
.method constructor <init>(Lcom/google/glass/musicplayer/ResultsActivity$1;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/google/glass/musicplayer/ResultsActivity$1$1;->this$1:Lcom/google/glass/musicplayer/ResultsActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 132
    invoke-static {}, Lcom/google/glass/musicplayer/ResultsActivity;->access$000()Lcom/google/glass/musicplayer/BundleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/musicplayer/BundleManager;->clearContentCache()V

    .line 133
    return-void
.end method
