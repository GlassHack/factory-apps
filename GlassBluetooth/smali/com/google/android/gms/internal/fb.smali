.class public Lcom/google/android/gms/internal/fb;
.super Ljava/lang/Object;


# static fields
.field public static final MQ:Lcom/google/android/gms/internal/fb;


# instance fields
.field private MR:[Ljava/util/regex/Pattern;

.field private MS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/fb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fb;->MQ:Lcom/google/android/gms/internal/fb;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [Ljava/util/regex/Pattern;

    iput-object v0, p0, Lcom/google/android/gms/internal/fb;->MR:[Ljava/util/regex/Pattern;

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/fb;->MS:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public declared-synchronized a([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    array-length v1, p1

    array-length v2, p2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/common/internal/l;->j(Z)V

    array-length v1, p1

    new-array v1, v1, [Ljava/util/regex/Pattern;

    iput-object v1, p0, Lcom/google/android/gms/internal/fb;->MR:[Ljava/util/regex/Pattern;

    iput-object p2, p0, Lcom/google/android/gms/internal/fb;->MS:[Ljava/lang/String;

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/fb;->MR:[Ljava/util/regex/Pattern;

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    aput-object v2, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    move v1, v0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized az(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    move-object v0, p1

    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/fb;->MR:[Ljava/util/regex/Pattern;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/fb;->MR:[Ljava/util/regex/Pattern;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/fb;->MS:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "config.url_uncompress.patterns"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "config.url_uncompress.replacements"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/fb;->a([Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
