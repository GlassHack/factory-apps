.class final Lcom/google/android/location/places/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/places/aa;


# instance fields
.field final synthetic a:Ljava/util/HashMap;

.field final synthetic b:Lcom/google/android/location/places/ag;


# direct methods
.method constructor <init>(Lcom/google/android/location/places/ag;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Lcom/google/android/location/places/ah;->b:Lcom/google/android/location/places/ag;

    iput-object p2, p0, Lcom/google/android/location/places/ah;->a:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/util/List;)V
    .locals 5

    .prologue
    .line 361
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 363
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/PlaceLikelihood;

    .line 364
    invoke-virtual {v0}, Lcom/google/android/gms/location/places/PlaceLikelihood;->b()Lcom/google/android/gms/location/places/h;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/internal/PlaceImpl;

    .line 365
    iget-object v1, p0, Lcom/google/android/location/places/ah;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/location/places/PlaceLikelihood;->a(Lcom/google/android/gms/location/places/internal/PlaceImpl;F)Lcom/google/android/gms/location/places/PlaceLikelihood;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/places/ah;->b:Lcom/google/android/location/places/ag;

    iget-object v0, v0, Lcom/google/android/location/places/ag;->a:Lcom/google/android/location/places/ae;

    invoke-static {v0, v2}, Lcom/google/android/location/places/ae;->a(Lcom/google/android/location/places/ae;Ljava/util/List;)V

    .line 370
    return-void
.end method
