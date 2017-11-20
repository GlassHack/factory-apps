.class final Lcom/google/android/location/b/j;
.super Lcom/google/android/location/b/ap;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/concurrent/ExecutorService;

.field private final b:Ljava/io/File;


# direct methods
.method constructor <init>(ILjava/util/concurrent/ExecutorService;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 202
    invoke-direct {p0, p1}, Lcom/google/android/location/b/ap;-><init>(I)V

    .line 203
    iput-object p2, p0, Lcom/google/android/location/b/j;->a:Ljava/util/concurrent/ExecutorService;

    .line 204
    iput-object p3, p0, Lcom/google/android/location/b/j;->b:Ljava/io/File;

    .line 205
    return-void
.end method

.method static synthetic a(Lcom/google/android/location/b/j;)Ljava/io/File;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/android/location/b/j;->b:Ljava/io/File;

    return-object v0
.end method


# virtual methods
.method protected final a(Ljava/util/Map$Entry;)V
    .locals 3

    .prologue
    .line 213
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/f/aw;

    .line 214
    iget-object v1, p0, Lcom/google/android/location/b/j;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/google/android/location/b/k;

    invoke-direct {v2, p0, v0}, Lcom/google/android/location/b/k;-><init>(Lcom/google/android/location/b/j;Lcom/google/android/location/f/aw;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 230
    return-void
.end method
