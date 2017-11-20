.class final Lcom/google/android/location/places/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/places/w;


# instance fields
.field final synthetic a:Lcom/google/android/location/places/ae;


# direct methods
.method constructor <init>(Lcom/google/android/location/places/ae;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcom/google/android/location/places/ag;->a:Lcom/google/android/location/places/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 5

    .prologue
    .line 346
    const-string v0, "Places"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    const-string v0, "Places"

    const-string v1, "Received new place estimation"

    invoke-static {v0, v1}, Lcom/google/android/location/o/x;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 350
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 351
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/places/v;

    .line 352
    iget-object v4, v0, Lcom/google/android/location/places/v;->a:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    iget-object v4, v0, Lcom/google/android/location/places/v;->a:Ljava/lang/String;

    iget v0, v0, Lcom/google/android/location/places/v;->b:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 355
    :cond_1
    new-instance v0, Lcom/google/android/location/places/ah;

    invoke-direct {v0, p0, v2}, Lcom/google/android/location/places/ah;-><init>(Lcom/google/android/location/places/ag;Ljava/util/HashMap;)V

    .line 372
    iget-object v2, p0, Lcom/google/android/location/places/ag;->a:Lcom/google/android/location/places/ae;

    iget-object v2, v2, Lcom/google/android/location/places/ae;->b:Lcom/google/android/location/places/b;

    sget-object v3, Lcom/google/android/location/places/be;->a:Lcom/google/android/gms/location/places/internal/PlacesParams;

    invoke-virtual {v2, v1, v3, v0}, Lcom/google/android/location/places/b;->a(Ljava/util/List;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/location/places/aa;)V

    .line 374
    return-void
.end method
