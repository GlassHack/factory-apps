.class public abstract Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private volatile canceled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadCallback;->canceled:Z

    .line 87
    return-void
.end method

.method public final isCanceled()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadCallback;->canceled:Z

    return v0
.end method

.method public abstract onItemRead(Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;)V
.end method
