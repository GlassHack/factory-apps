.class public final Lcom/google/android/youtube/core/converter/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 36
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "next"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "previous"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 35
    sput-object v0, Lcom/google/android/youtube/core/converter/e;->a:Ljava/util/Set;

    .line 27
    return-void
.end method

.method public static a()Lcom/google/android/youtube/core/converter/d;
    .locals 1

    .prologue
    .line 42
    const-string v0, "/feed"

    invoke-static {v0}, Lcom/google/android/youtube/core/converter/e;->a(Ljava/lang/String;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/google/android/youtube/core/converter/d;
    .locals 4

    .prologue
    .line 52
    const-string v0, "prefix can\'t be null"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    new-instance v0, Lcom/google/android/youtube/core/converter/d;

    invoke-direct {v0}, Lcom/google/android/youtube/core/converter/d;-><init>()V

    .line 55
    new-instance v1, Lcom/google/android/youtube/core/converter/f;

    invoke-direct {v1}, Lcom/google/android/youtube/core/converter/f;-><init>()V

    invoke-virtual {v0, p0, v1}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/p;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v1

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/openSearch:totalResults"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/android/youtube/core/converter/g;

    invoke-direct {v3}, Lcom/google/android/youtube/core/converter/g;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/p;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v1

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/openSearch:startIndex"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/android/youtube/core/converter/h;

    invoke-direct {v3}, Lcom/google/android/youtube/core/converter/h;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/p;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v1

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/openSearch:itemsPerPage"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/android/youtube/core/converter/i;

    invoke-direct {v3}, Lcom/google/android/youtube/core/converter/i;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/p;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v1

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/link"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/android/youtube/core/converter/j;

    invoke-direct {v3}, Lcom/google/android/youtube/core/converter/j;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/p;)Lcom/google/android/youtube/core/converter/d;

    .line 99
    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lcom/google/android/youtube/core/converter/d;
    .locals 2

    .prologue
    .line 103
    const-string v0, "prefix can\'t be null"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    new-instance v0, Lcom/google/android/youtube/core/converter/d;

    invoke-direct {v0}, Lcom/google/android/youtube/core/converter/d;-><init>()V

    .line 105
    new-instance v1, Lcom/google/android/youtube/core/converter/k;

    invoke-direct {v1}, Lcom/google/android/youtube/core/converter/k;-><init>()V

    invoke-virtual {v0, p0, v1}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/p;)Lcom/google/android/youtube/core/converter/d;

    .line 116
    return-object v0
.end method

.method static synthetic b()Ljava/util/Set;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/google/android/youtube/core/converter/e;->a:Ljava/util/Set;

    return-object v0
.end method
