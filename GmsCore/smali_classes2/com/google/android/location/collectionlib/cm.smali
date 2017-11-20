.class final Lcom/google/android/location/collectionlib/cm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/collectionlib/ao;


# instance fields
.field final synthetic a:Lcom/google/android/location/collectionlib/cl;


# direct methods
.method constructor <init>(Lcom/google/android/location/collectionlib/cl;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lcom/google/android/location/collectionlib/cm;->a:Lcom/google/android/location/collectionlib/cl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 351
    return-void
.end method

.method public final a(ILcom/google/g/a/b/b/a;)V
    .locals 0

    .prologue
    .line 400
    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 367
    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 371
    return-void
.end method

.method public final a(Lcom/google/android/location/collectionlib/cj;)V
    .locals 0

    .prologue
    .line 375
    return-void
.end method

.method public final a(Lcom/google/g/a/b/b/a;)V
    .locals 2

    .prologue
    .line 386
    if-nez p1, :cond_0

    .line 388
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Prescan duration too long."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/collectionlib/cm;->a:Lcom/google/android/location/collectionlib/cl;

    invoke-static {v0, p1}, Lcom/google/android/location/collectionlib/cl;->a(Lcom/google/android/location/collectionlib/cl;Lcom/google/g/a/b/b/a;)Lcom/google/g/a/b/b/a;

    .line 391
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/google/android/location/collectionlib/cm;->a:Lcom/google/android/location/collectionlib/cl;

    invoke-static {v0}, Lcom/google/android/location/collectionlib/cl;->g(Lcom/google/android/location/collectionlib/cl;)Lcom/google/android/location/collectionlib/ao;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/google/android/location/collectionlib/cm;->a:Lcom/google/android/location/collectionlib/cl;

    invoke-static {v0}, Lcom/google/android/location/collectionlib/cl;->g(Lcom/google/android/location/collectionlib/cl;)Lcom/google/android/location/collectionlib/ao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/location/collectionlib/ao;->a(Ljava/lang/String;)V

    .line 382
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;ILcom/google/g/a/b/b/a;)V
    .locals 0

    .prologue
    .line 355
    return-void
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 359
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 396
    return-void
.end method

.method public final a(ZZ)V
    .locals 0

    .prologue
    .line 408
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 315
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 311
    return-void
.end method

.method public final c_(I)V
    .locals 0

    .prologue
    .line 303
    return-void
.end method

.method public final d()V
    .locals 0

    .prologue
    .line 404
    return-void
.end method

.method public final e()V
    .locals 0

    .prologue
    .line 339
    return-void
.end method

.method public final f()V
    .locals 0

    .prologue
    .line 335
    return-void
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 307
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 343
    return-void
.end method

.method public final i()V
    .locals 0

    .prologue
    .line 347
    return-void
.end method

.method public final j()V
    .locals 0

    .prologue
    .line 363
    return-void
.end method
