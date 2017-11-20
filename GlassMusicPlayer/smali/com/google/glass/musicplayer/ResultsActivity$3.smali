.class Lcom/google/glass/musicplayer/ResultsActivity$3;
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
    .line 201
    iput-object p1, p0, Lcom/google/glass/musicplayer/ResultsActivity$3;->this$0:Lcom/google/glass/musicplayer/ResultsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity$3;->this$0:Lcom/google/glass/musicplayer/ResultsActivity;

    iget-object v1, p0, Lcom/google/glass/musicplayer/ResultsActivity$3;->this$0:Lcom/google/glass/musicplayer/ResultsActivity;

    invoke-virtual {v1}, Lcom/google/glass/musicplayer/ResultsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/a/a/a;->a(Landroid/content/ContentResolver;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/glass/musicplayer/ResultsActivity;->access$202(Lcom/google/glass/musicplayer/ResultsActivity;Z)Z

    .line 205
    iget-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity$3;->this$0:Lcom/google/glass/musicplayer/ResultsActivity;

    iget-object v1, p0, Lcom/google/glass/musicplayer/ResultsActivity$3;->this$0:Lcom/google/glass/musicplayer/ResultsActivity;

    invoke-static {v1}, Lcom/google/glass/musicplayer/ResultsActivity;->access$200(Lcom/google/glass/musicplayer/ResultsActivity;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/glass/musicplayer/ResultsActivity;->access$300(Lcom/google/glass/musicplayer/ResultsActivity;Z)V

    .line 206
    return-void
.end method
