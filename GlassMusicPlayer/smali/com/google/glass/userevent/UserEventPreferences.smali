.class public Lcom/google/glass/userevent/UserEventPreferences;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BUILD_FINGERPRINT:Ljava/lang/String; = "build_fingerprint"

.field private static final PREF_BOOT_COUNT_KEY:Ljava/lang/String; = "boot_count"

.field private static final PREF_EVENT_QUEUE_FULL_COUNT_KEY:Ljava/lang/String; = "event_queue_full_count"

.field private static final PREF_LAST_FLUSH_TIME_KEY:Ljava/lang/String; = "last_flush_time"

.field private static final PREF_LAST_FRAMEWORK_EVENT_READ_TIME_KEY:Ljava/lang/String; = "last_framework_event_read_time"

.field private static final PREF_SERIAL_KEY:Ljava/lang/String; = "serial"

.field private static final PREF_SESSION_KEY:Ljava/lang/String; = "session"

.field public static final UNSET:I = -0x1

.field public static final USER_EVENT_PREFS:Ljava/lang/String; = "UserEventPrefs"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/google/glass/userevent/UserEventPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 64
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/SharedPreferences;Lcom/google/glass/userevent/UserEventPreferences$1;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/google/glass/userevent/UserEventPreferences;-><init>(Landroid/content/SharedPreferences;)V

    return-void
.end method


# virtual methods
.method public getBootCount()I
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/glass/userevent/UserEventPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "boot_count"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getBuildFingerprint()Ljava/lang/String;
    .locals 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/glass/userevent/UserEventPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "build_fingerprint"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastFlushTime()J
    .locals 4

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/glass/userevent/UserEventPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "last_flush_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastFrameworkEventReadTime()J
    .locals 4

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/glass/userevent/UserEventPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "last_framework_event_read_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getQueueFullCount()I
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/glass/userevent/UserEventPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "event_queue_full_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSerial()J
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/glass/userevent/UserEventPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "serial"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/glass/userevent/UserEventPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "session"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setBootCount(I)V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/glass/userevent/UserEventPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "boot_count"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 118
    return-void
.end method

.method public setBuildFingerprint(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/glass/userevent/UserEventPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "build_fingerprint"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 110
    return-void
.end method

.method public setLastFlushTime(J)V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/glass/userevent/UserEventPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_flush_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 72
    return-void
.end method

.method public setLastFrameworkEventReadTime(J)V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/glass/userevent/UserEventPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_framework_event_read_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 102
    return-void
.end method

.method public setQueueFullCount(I)V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/glass/userevent/UserEventPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "event_queue_full_count"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 94
    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/glass/userevent/UserEventPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "session"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 86
    return-void
.end method
