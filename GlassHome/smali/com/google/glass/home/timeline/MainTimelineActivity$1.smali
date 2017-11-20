.class Lcom/google/glass/home/timeline/MainTimelineActivity$1;
.super Ljava/lang/Object;
.source "MainTimelineActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/timeline/MainTimelineActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/MainTimelineActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/home/timeline/MainTimelineActivity;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$1;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$1;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/glass/home/timeline/MainTimelineActivity;->access$002(Lcom/google/glass/home/timeline/MainTimelineActivity;Z)Z

    .line 130
    return-void
.end method
