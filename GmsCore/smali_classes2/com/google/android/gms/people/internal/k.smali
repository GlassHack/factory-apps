.class public final Lcom/google/android/gms/people/internal/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/people/internal/k;


# instance fields
.field private b:[Ljava/util/regex/Pattern;

.field private c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/google/android/gms/people/internal/k;

    invoke-direct {v0}, Lcom/google/android/gms/people/internal/k;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/internal/k;->a:Lcom/google/android/gms/people/internal/k;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-array v0, v1, [Ljava/util/regex/Pattern;

    iput-object v0, p0, Lcom/google/android/gms/people/internal/k;->b:[Ljava/util/regex/Pattern;

    .line 31
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/people/internal/k;->c:[Ljava/lang/String;

    .line 34
    return-void
.end method

.method private declared-synchronized a([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 53
    monitor-enter p0

    :try_start_0
    array-length v1, p1

    array-length v2, p2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/common/internal/aj;->b(Z)V

    .line 55
    array-length v1, p1

    new-array v1, v1, [Ljava/util/regex/Pattern;

    iput-object v1, p0, Lcom/google/android/gms/people/internal/k;->b:[Ljava/util/regex/Pattern;

    .line 56
    iput-object p2, p0, Lcom/google/android/gms/people/internal/k;->c:[Ljava/lang/String;

    .line 58
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 59
    iget-object v1, p0, Lcom/google/android/gms/people/internal/k;->b:[Ljava/util/regex/Pattern;

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    aput-object v2, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    move v1, v0

    .line 53
    goto :goto_0

    .line 61
    :cond_1
    monitor-exit p0

    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 70
    :cond_0
    monitor-exit p0

    return-object v0

    .line 67
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    move-object v0, p1

    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/people/internal/k;->b:[Ljava/util/regex/Pattern;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 68
    iget-object v2, p0, Lcom/google/android/gms/people/internal/k;->b:[Ljava/util/regex/Pattern;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/people/internal/k;->c:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p1

    .line 67
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, p1

    goto :goto_0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 43
    const-string v0, "config.url_uncompress.patterns"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "config.url_uncompress.replacements"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/people/internal/k;->a([Ljava/lang/String;[Ljava/lang/String;)V

    .line 47
    return-void
.end method
