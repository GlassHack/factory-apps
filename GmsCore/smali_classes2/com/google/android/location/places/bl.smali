.class final Lcom/google/android/location/places/bl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/places/w;


# instance fields
.field final a:Lcom/google/android/location/f/bh;

.field final synthetic b:Lcom/google/android/location/places/bk;


# direct methods
.method constructor <init>(Lcom/google/android/location/places/bk;Lcom/google/android/location/f/bh;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/android/location/places/bl;->b:Lcom/google/android/location/places/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p2, p0, Lcom/google/android/location/places/bl;->a:Lcom/google/android/location/f/bh;

    .line 99
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/location/places/bl;->b:Lcom/google/android/location/places/bk;

    invoke-static {v0}, Lcom/google/android/location/places/bk;->a(Lcom/google/android/location/places/bk;)Lcom/google/android/location/places/bs;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/places/bl;->a:Lcom/google/android/location/f/bh;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/google/android/location/places/bl;->b:Lcom/google/android/location/places/bk;

    invoke-static {v0}, Lcom/google/android/location/places/bk;->a(Lcom/google/android/location/places/bk;)Lcom/google/android/location/places/bs;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/places/bl;->a:Lcom/google/android/location/f/bh;

    invoke-interface {v0, v1, p1}, Lcom/google/android/location/places/bs;->a(Lcom/google/android/location/f/bh;Ljava/util/List;)V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/places/bl;->b:Lcom/google/android/location/places/bk;

    invoke-static {v0}, Lcom/google/android/location/places/bk;->b(Lcom/google/android/location/places/bk;)Lcom/google/android/location/places/w;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/location/places/w;->a(Ljava/util/List;)V

    .line 107
    return-void
.end method
