.class public final Lcom/google/android/youtube/core/utils/SafeSearch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/content/SharedPreferences;

.field private c:Ljava/util/concurrent/atomic/AtomicReference;

.field private d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/google/android/youtube/core/utils/SafeSearch;->a:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/google/android/youtube/core/utils/SafeSearch;->b:Landroid/content/SharedPreferences;

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/youtube/core/utils/SafeSearch;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;->STRICT:Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/utils/SafeSearch;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 46
    return-void
.end method

.method private declared-synchronized a(Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;)V
    .locals 3

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/SafeSearch;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 61
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/SafeSearch;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/SafeSearch;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "safe_search"

    invoke-virtual {p1}, Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;->ordinal()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 62
    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/SharedPreferences$Editor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :cond_0
    monitor-exit p0

    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 50
    const-string v0, "checking parental control"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/SafeSearch;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Lcom/google/android/youtube/core/utils/SafeSearch;->a:Landroid/content/Context;

    const-string v2, "youtube"

    invoke-static {v1, v2}, Lcom/google/android/common/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "parental control is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/youtube/core/utils/SafeSearch;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/SafeSearch;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/SafeSearch;->b:Landroid/content/SharedPreferences;

    const-string v1, "safe_search"

    sget-object v2, Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;->MODERATE:Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;->ordinal()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 55
    invoke-static {}, Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;->values()[Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/utils/SafeSearch;->a(Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;)V

    .line 57
    :cond_0
    return-void
.end method
