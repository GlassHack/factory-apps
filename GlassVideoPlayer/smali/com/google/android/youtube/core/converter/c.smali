.class public final Lcom/google/android/youtube/core/converter/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/Map;


# direct methods
.method private constructor <init>(Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/c;->a:Ljava/util/Map;

    .line 27
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Lcom/google/android/youtube/core/converter/c;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/converter/c;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/google/android/youtube/core/converter/p;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/converter/p;

    return-object v0
.end method
