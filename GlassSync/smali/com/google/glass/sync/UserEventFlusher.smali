.class public Lcom/google/glass/sync/UserEventFlusher;
.super Lcom/google/glass/util/RateLimitedRunnable;
.source "UserEventFlusher.java"


# static fields
.field private static final PREF_LAST_USER_EVENT_FLUSH_TIME:Ljava/lang/String; = "user_event_flush_time"

.field private static final TAG:Ljava/lang/String;

.field private static final TIMELINE_PURGE_PREFS:Ljava/lang/String; = "user_event_flush_prefs"

.field private static final USER_EVENT_FLUSH_INTERVAL:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 14
    const-class v0, Lcom/google/glass/sync/UserEventFlusher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/sync/UserEventFlusher;->TAG:Ljava/lang/String;

    .line 21
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/sync/UserEventFlusher;->USER_EVENT_FLUSH_INTERVAL:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    const-string v0, "user_event_flush_prefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/util/RateLimitedRunnable;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 25
    return-void
.end method


# virtual methods
.method public execute(J)V
    .locals 2
    .param p1, "now"    # J

    .prologue
    .line 29
    new-instance v0, Lcom/google/glass/userevent/UserEventHelper;

    iget-object v1, p0, Lcom/google/glass/sync/UserEventFlusher;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/glass/userevent/UserEventHelper;->flush()V

    .line 30
    return-void
.end method

.method protected getInterval()J
    .locals 2

    .prologue
    .line 39
    sget-wide v0, Lcom/google/glass/sync/UserEventFlusher;->USER_EVENT_FLUSH_INTERVAL:J

    return-wide v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/google/glass/sync/UserEventFlusher;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method protected getTimestampPref()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string v0, "user_event_flush_time"

    return-object v0
.end method
