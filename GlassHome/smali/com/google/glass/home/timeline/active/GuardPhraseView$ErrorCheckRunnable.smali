.class Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable;
.super Ljava/lang/Object;
.source "GuardPhraseView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/timeline/active/GuardPhraseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ErrorCheckRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;


# direct methods
.method private constructor <init>(Lcom/google/glass/home/timeline/active/GuardPhraseView;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/home/timeline/active/GuardPhraseView;Lcom/google/glass/home/timeline/active/GuardPhraseView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/home/timeline/active/GuardPhraseView;
    .param p2, "x1"    # Lcom/google/glass/home/timeline/active/GuardPhraseView$1;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable;-><init>(Lcom/google/glass/home/timeline/active/GuardPhraseView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    invoke-static {v0}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->access$200(Lcom/google/glass/home/timeline/active/GuardPhraseView;)Lcom/google/glass/util/BatteryHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/BatteryHelper;->getCurrentState()Lcom/google/glass/util/BatteryHelper$BatteryState;

    move-result-object v3

    .line 62
    .local v3, "currentState":Lcom/google/glass/util/BatteryHelper$BatteryState;
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    invoke-static {v0}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->access$300(Lcom/google/glass/home/timeline/active/GuardPhraseView;)Lcom/google/glass/util/StorageHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/StorageHelper;->getExternalStorageState()Lcom/google/glass/util/StorageHelper$State;

    move-result-object v2

    .line 64
    .local v2, "externalStorageState":Lcom/google/glass/util/StorageHelper$State;
    invoke-static {}, Lcom/google/glass/system/PerformanceHelper$Provider;->getInstance()Lcom/google/glass/system/PerformanceHelper$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/system/PerformanceHelper$Provider;->get()Lcom/google/glass/system/PerformanceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/system/PerformanceHelper;->getBoardTemperature()J

    move-result-wide v4

    .line 67
    .local v4, "boardTemperature":J
    invoke-static {}, Lcom/google/glass/async/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    new-instance v0, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable$1;-><init>(Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable;Lcom/google/glass/util/StorageHelper$State;Lcom/google/glass/util/BatteryHelper$BatteryState;J)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 122
    return-void
.end method
