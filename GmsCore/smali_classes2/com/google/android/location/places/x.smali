.class public final Lcom/google/android/location/places/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/Set;

.field final b:Lcom/google/android/location/places/bk;

.field final c:Lcom/google/android/location/places/bp;

.field d:Lcom/google/android/location/places/w;

.field final e:Lcom/google/android/location/places/w;


# direct methods
.method public constructor <init>(Lcom/google/android/location/places/bp;Lcom/google/android/location/places/bk;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Lcom/google/android/location/places/y;

    invoke-direct {v0, p0}, Lcom/google/android/location/places/y;-><init>(Lcom/google/android/location/places/x;)V

    iput-object v0, p0, Lcom/google/android/location/places/x;->e:Lcom/google/android/location/places/w;

    .line 34
    iput-object p1, p0, Lcom/google/android/location/places/x;->c:Lcom/google/android/location/places/bp;

    .line 35
    iput-object p2, p0, Lcom/google/android/location/places/x;->b:Lcom/google/android/location/places/bk;

    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/places/x;->a:Ljava/util/Set;

    .line 44
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/location/f/ak;)V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/location/places/x;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/places/z;

    .line 72
    invoke-virtual {v0, p1}, Lcom/google/android/location/places/z;->a(Lcom/google/android/location/f/ak;)V

    goto :goto_0

    .line 74
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/location/f/bh;)V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/location/places/x;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/places/z;

    .line 78
    invoke-virtual {v0, p1}, Lcom/google/android/location/places/z;->a(Lcom/google/android/location/f/bh;)V

    goto :goto_0

    .line 80
    :cond_0
    return-void
.end method
