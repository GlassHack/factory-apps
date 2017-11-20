.class public Lcom/google/glass/musicplayer/XdiContentObserver;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field handler:Landroid/os/Handler;

.field logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 14
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/musicplayer/XdiContentObserver;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 19
    iput-object p1, p0, Lcom/google/glass/musicplayer/XdiContentObserver;->handler:Landroid/os/Handler;

    .line 20
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/glass/musicplayer/XdiContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 32
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 25
    iget-object v0, p0, Lcom/google/glass/musicplayer/XdiContentObserver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Xdi content was updated for uri=%s! Clearing content cache..."

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    iget-object v0, p0, Lcom/google/glass/musicplayer/XdiContentObserver;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 27
    return-void
.end method
