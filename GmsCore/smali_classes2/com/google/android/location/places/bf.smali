.class final Lcom/google/android/location/places/bf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/places/aa;


# instance fields
.field private final a:Lcom/google/android/location/places/w;


# direct methods
.method constructor <init>(Lcom/google/android/location/places/w;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/google/android/location/places/bf;->a:Lcom/google/android/location/places/w;

    .line 45
    return-void
.end method


# virtual methods
.method public final a(ILjava/util/List;)V
    .locals 5

    .prologue
    .line 49
    if-nez p1, :cond_1

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 51
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/PlaceLikelihood;

    .line 52
    new-instance v3, Lcom/google/android/location/places/v;

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/PlaceLikelihood;->b()Lcom/google/android/gms/location/places/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/location/places/h;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/PlaceLikelihood;->a()F

    move-result v0

    invoke-direct {v3, v4, v0}, Lcom/google/android/location/places/v;-><init>(Ljava/lang/String;F)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/places/bf;->a:Lcom/google/android/location/places/w;

    invoke-interface {v0, v1}, Lcom/google/android/location/places/w;->a(Ljava/util/List;)V

    .line 59
    :cond_1
    return-void
.end method
