.class final Lcom/google/android/youtube/core/cache/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final synthetic a:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/youtube/core/cache/e;->a:Ljava/util/HashMap;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/io/File;Ljava/io/File;)I
    .locals 5

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/e;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 118
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/e;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 119
    cmp-long v0, v1, v3

    if-gez v0, :cond_0

    .line 120
    const/4 v0, -0x1

    .line 124
    :goto_0
    return v0

    .line 121
    :cond_0
    cmp-long v0, v1, v3

    if-lez v0, :cond_1

    .line 122
    const/4 v0, 0x1

    goto :goto_0

    .line 124
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/cache/e;->a(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method
