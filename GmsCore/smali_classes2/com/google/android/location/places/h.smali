.class final Lcom/google/android/location/places/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/places/aa;


# instance fields
.field final synthetic a:Lcom/google/android/location/places/b;

.field private final b:Lcom/google/android/location/places/aa;

.field private final c:Ljava/util/List;

.field private d:I

.field private e:Z


# direct methods
.method constructor <init>(Lcom/google/android/location/places/b;ILcom/google/android/location/places/aa;)V
    .locals 1

    .prologue
    .line 286
    iput-object p1, p0, Lcom/google/android/location/places/h;->a:Lcom/google/android/location/places/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    iput p2, p0, Lcom/google/android/location/places/h;->d:I

    .line 288
    iput-object p3, p0, Lcom/google/android/location/places/h;->b:Lcom/google/android/location/places/aa;

    .line 289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/places/h;->c:Ljava/util/List;

    .line 290
    return-void
.end method


# virtual methods
.method public final a(ILjava/util/List;)V
    .locals 4

    .prologue
    const/4 v2, 0x7

    const/4 v3, 0x1

    .line 294
    iget-boolean v0, p0, Lcom/google/android/location/places/h;->e:Z

    if-nez v0, :cond_1

    .line 295
    if-eq p1, v2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/places/h;->b:Lcom/google/android/location/places/aa;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/google/android/location/places/aa;->a(ILjava/util/List;)V

    .line 299
    iput-boolean v3, p0, Lcom/google/android/location/places/h;->e:Z

    .line 304
    :goto_0
    iget v0, p0, Lcom/google/android/location/places/h;->d:I

    if-gtz v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/google/android/location/places/h;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/location/places/h;->b:Lcom/google/android/location/places/aa;

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lcom/google/android/location/places/b;->a(ILjava/util/List;Lcom/google/android/location/places/aa;)V

    .line 307
    iput-boolean v3, p0, Lcom/google/android/location/places/h;->e:Z

    .line 310
    :cond_1
    return-void

    .line 301
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/places/h;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 302
    iget v0, p0, Lcom/google/android/location/places/h;->d:I

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/location/places/h;->d:I

    goto :goto_0
.end method
