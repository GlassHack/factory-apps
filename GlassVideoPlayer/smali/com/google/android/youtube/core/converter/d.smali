.class public final Lcom/google/android/youtube/core/converter/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/d;->a:Ljava/util/HashMap;

    .line 37
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/youtube/core/converter/c;
    .locals 3

    .prologue
    .line 59
    new-instance v0, Lcom/google/android/youtube/core/converter/c;

    iget-object v1, p0, Lcom/google/android/youtube/core/converter/d;->a:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/converter/c;-><init>(Ljava/util/Map;Lcom/google/android/youtube/core/converter/c;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/p;)Lcom/google/android/youtube/core/converter/d;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    return-object p0
.end method
