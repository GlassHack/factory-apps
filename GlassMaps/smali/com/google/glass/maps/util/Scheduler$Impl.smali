.class public Lcom/google/glass/maps/util/Scheduler$Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/maps/util/Scheduler;


# instance fields
.field private final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/util/Scheduler$Impl;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public schedule(Ljava/lang/Runnable;J)V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/glass/maps/util/Scheduler$Impl;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 32
    return-void
.end method

.method public unschedule(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/glass/maps/util/Scheduler$Impl;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 37
    return-void
.end method
