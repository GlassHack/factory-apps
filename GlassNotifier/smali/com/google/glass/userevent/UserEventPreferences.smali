.class public Lcom/google/glass/userevent/UserEventPreferences;
.super Ljava/lang/Object;
.source "UserEventPreferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/userevent/UserEventPreferences$Provider;
    }
.end annotation


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
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/google/glass/userevent/UserEventPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 62
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/SharedPreferences;Lcom/google/glass/userevent/UserEventPreferences$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/SharedPreferences;
    .param p2, "x1"    # Lcom/google/glass/userevent/UserEventPreferences$1;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/google/glass/userevent/UserEventPreferences;-><init>(Landroid/content/SharedPreferences;)V

    return-void
.end method


# virtual methods
.method public getBootCount()I
    .locals 3

    .prologue
    .line 111
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
    .line 103
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
    .line 65
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
    .line 95
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
    .line 87
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
    .line 75
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
    .line 79
    iget-object v0, p0, Lcom/google/glass/userevent/UserEventPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "session"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setBootCount(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/glass/userevent/UserEventPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "boot_count"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 116
    return-void
.end method

.method public setBuildFingerprint(Ljava/lang/String;)V
    .locals 2
    .param p1, "softwareVersion"    # Ljava/lang/String;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/glass/userevent/UserEventPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "build_fingerprint"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 108
    return-void
.end method

.method public setLastFlushTime(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/glass/userevent/UserEventPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_flush_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 70
    return-void
.end method

.method public setLastFrameworkEventReadTime(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/glass/userevent/UserEventPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_framework_event_read_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 100
    return-void
.end method

.method public setQueueFullCount(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/glass/userevent/UserEventPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "event_queue_full_count"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 92
    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 2
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/glass/userevent/UserEventPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "session"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 84
    return-void
.end method
