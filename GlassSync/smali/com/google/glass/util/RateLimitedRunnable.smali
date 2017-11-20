.class public abstract Lcom/google/glass/util/RateLimitedRunnable;
.super Ljava/lang/Object;
.source "RateLimitedRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final clock:Lcom/google/glass/time/Clock;

.field protected final context:Landroid/content/Context;

.field private final sharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sharedPrefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 22
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/util/RateLimitedRunnable;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/google/glass/time/Clock;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/google/glass/time/Clock;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sharedPrefs"    # Landroid/content/SharedPreferences;
    .param p3, "clock"    # Lcom/google/glass/time/Clock;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/google/glass/util/RateLimitedRunnable;->context:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/google/glass/util/RateLimitedRunnable;->sharedPrefs:Landroid/content/SharedPreferences;

    .line 28
    iput-object p3, p0, Lcom/google/glass/util/RateLimitedRunnable;->clock:Lcom/google/glass/time/Clock;

    .line 29
    return-void
.end method


# virtual methods
.method protected abstract execute(J)V
.end method

.method protected abstract getInterval()J
.end method

.method protected abstract getTag()Ljava/lang/String;
.end method

.method protected abstract getTimestampPref()Ljava/lang/String;
.end method

.method public final run()V
    .locals 8

    .prologue
    .line 37
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 39
    iget-object v4, p0, Lcom/google/glass/util/RateLimitedRunnable;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v4}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v2

    .line 40
    .local v2, "now":J
    iget-object v4, p0, Lcom/google/glass/util/RateLimitedRunnable;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/google/glass/util/RateLimitedRunnable;->getTimestampPref()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 43
    .local v0, "lastRunTime":J
    sub-long v4, v2, v0

    invoke-virtual {p0}, Lcom/google/glass/util/RateLimitedRunnable;->getInterval()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/google/glass/util/RateLimitedRunnable;->getTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Has run recently, will not run now."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/google/glass/logging/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v4, p0, Lcom/google/glass/util/RateLimitedRunnable;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/glass/util/RateLimitedRunnable;->getTimestampPref()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 49
    invoke-virtual {p0, v2, v3}, Lcom/google/glass/util/RateLimitedRunnable;->execute(J)V

    goto :goto_0
.end method
