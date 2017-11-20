.class public Lcom/google/android/location/places/bp;
.super Lcom/google/android/location/places/z;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/location/h/q;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Ljava/util/concurrent/Executor;

.field private d:Lcom/google/android/location/places/w;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/google/android/location/h/s;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/location/places/z;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/android/location/places/bp;->b:Ljava/util/concurrent/Executor;

    .line 33
    iput-object p2, p0, Lcom/google/android/location/places/bp;->c:Ljava/util/concurrent/Executor;

    .line 34
    new-instance v0, Lcom/google/android/location/h/q;

    invoke-direct {v0, p3}, Lcom/google/android/location/h/q;-><init>(Lcom/google/android/location/h/s;)V

    iput-object v0, p0, Lcom/google/android/location/places/bp;->a:Lcom/google/android/location/h/q;

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/google/android/location/places/bp;)Lcom/google/android/location/h/q;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/location/places/bp;->a:Lcom/google/android/location/h/q;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/location/places/bp;)Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/location/places/bp;->b:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/location/places/bp;)Lcom/google/android/location/places/w;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/location/places/bp;->d:Lcom/google/android/location/places/w;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/location/f/bh;)V
    .locals 2

    .prologue
    .line 44
    if-eqz p1, :cond_0

    .line 45
    iget-object v0, p0, Lcom/google/android/location/places/bp;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/location/places/br;

    invoke-direct {v1, p0, p1}, Lcom/google/android/location/places/br;-><init>(Lcom/google/android/location/places/bp;Lcom/google/android/location/f/bh;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 47
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/location/places/w;)V
    .locals 1

    .prologue
    .line 39
    invoke-static {p1}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/places/w;

    iput-object v0, p0, Lcom/google/android/location/places/bp;->d:Lcom/google/android/location/places/w;

    .line 40
    return-void
.end method
