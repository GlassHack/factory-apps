.class public final Lcom/google/maps/api/android/lib6/c/cr;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/Map;

.field private final b:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/c/c/gc;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/cr;->a:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/cr;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/c/cj;)V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/cr;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/c/cs;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/cr;->b:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/google/maps/api/android/lib6/c/cj;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/maps/api/android/lib6/c/cs;

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/c/cs;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/cr;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    iget v1, v0, Lcom/google/maps/api/android/lib6/c/cs;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/maps/api/android/lib6/c/cs;->a:I

    goto :goto_0
.end method

.method public final b(Lcom/google/maps/api/android/lib6/c/cj;)Lcom/google/maps/api/android/lib6/c/cs;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/cr;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/c/cs;

    return-object v0
.end method

.method public final c(Lcom/google/maps/api/android/lib6/c/cj;)V
    .locals 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/cr;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/c/cs;

    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    const-string v3, "Released unknown imageData reference"

    invoke-static {v1, v3}, Lcom/google/c/a/cj;->a(ZLjava/lang/Object;)V

    iget v1, v0, Lcom/google/maps/api/android/lib6/c/cs;->a:I

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/cr;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget v1, v0, Lcom/google/maps/api/android/lib6/c/cs;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/google/maps/api/android/lib6/c/cs;->a:I

    goto :goto_1
.end method
