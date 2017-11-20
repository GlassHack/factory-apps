.class Landroid/support/v4/view/cc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/cj;


# instance fields
.field a:Ljava/util/WeakHashMap;

.field b:Ljava/util/WeakHashMap;

.field c:Ljava/util/WeakHashMap;

.field d:Ljava/util/WeakHashMap;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object v0, p0, Landroid/support/v4/view/cc;->a:Ljava/util/WeakHashMap;

    .line 70
    iput-object v0, p0, Landroid/support/v4/view/cc;->b:Ljava/util/WeakHashMap;

    .line 71
    iput-object v0, p0, Landroid/support/v4/view/cc;->c:Ljava/util/WeakHashMap;

    .line 72
    iput-object v0, p0, Landroid/support/v4/view/cc;->d:Ljava/util/WeakHashMap;

    .line 293
    return-void
.end method

.method private d(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 317
    const/4 v0, 0x0

    .line 318
    iget-object v1, p0, Landroid/support/v4/view/cc;->a:Ljava/util/WeakHashMap;

    if-eqz v1, :cond_0

    .line 319
    iget-object v0, p0, Landroid/support/v4/view/cc;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 321
    :cond_0
    if-nez v0, :cond_2

    .line 322
    new-instance v0, Landroid/support/v4/view/cd;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/support/v4/view/cd;-><init>(Landroid/support/v4/view/cc;Landroid/view/View;B)V

    .line 323
    iget-object v1, p0, Landroid/support/v4/view/cc;->a:Ljava/util/WeakHashMap;

    if-nez v1, :cond_1

    .line 324
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Landroid/support/v4/view/cc;->a:Ljava/util/WeakHashMap;

    .line 326
    :cond_1
    iget-object v1, p0, Landroid/support/v4/view/cc;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 329
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 330
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 200
    invoke-direct {p0, p1}, Landroid/support/v4/view/cc;->d(Landroid/view/View;)V

    .line 201
    return-void
.end method

.method public a(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1}, Landroid/support/v4/view/cc;->d(Landroid/view/View;)V

    .line 83
    return-void
.end method

.method public a(Landroid/view/View;J)V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public a(Landroid/view/View;Landroid/support/v4/view/co;)V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Landroid/support/v4/view/cc;->d:Ljava/util/WeakHashMap;

    if-nez v0, :cond_0

    .line 261
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/cc;->d:Ljava/util/WeakHashMap;

    .line 263
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/cc;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    return-void
.end method

.method public a(Landroid/view/View;Landroid/support/v4/view/cq;)V
    .locals 0

    .prologue
    .line 269
    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/animation/Interpolator;)V
    .locals 0

    .prologue
    .line 114
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Landroid/support/v4/view/cc;->a:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/cc;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 242
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v4/view/cc;->c(Landroid/view/View;)V

    .line 243
    return-void
.end method

.method public b(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0, p1}, Landroid/support/v4/view/cc;->d(Landroid/view/View;)V

    .line 89
    return-void
.end method

.method final c(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 272
    iget-object v0, p0, Landroid/support/v4/view/cc;->d:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v4/view/cc;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/co;

    move-object v1, v0

    .line 274
    :goto_0
    iget-object v0, p0, Landroid/support/v4/view/cc;->c:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v4/view/cc;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    move-object v3, v0

    .line 275
    :goto_1
    iget-object v0, p0, Landroid/support/v4/view/cc;->b:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v4/view/cc;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 276
    :goto_2
    if-eqz v3, :cond_0

    .line 277
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 278
    iget-object v2, p0, Landroid/support/v4/view/cc;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    :cond_0
    if-eqz v1, :cond_1

    .line 281
    invoke-interface {v1, p1}, Landroid/support/v4/view/co;->a(Landroid/view/View;)V

    .line 282
    invoke-interface {v1, p1}, Landroid/support/v4/view/co;->b(Landroid/view/View;)V

    .line 284
    :cond_1
    if-eqz v0, :cond_2

    .line 285
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 286
    iget-object v0, p0, Landroid/support/v4/view/cc;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    :cond_2
    iget-object v0, p0, Landroid/support/v4/view/cc;->a:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_3

    .line 289
    iget-object v0, p0, Landroid/support/v4/view/cc;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    :cond_3
    return-void

    :cond_4
    move-object v1, v2

    .line 272
    goto :goto_0

    :cond_5
    move-object v3, v2

    .line 274
    goto :goto_1

    :cond_6
    move-object v0, v2

    .line 275
    goto :goto_2
.end method

.method public c(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1}, Landroid/support/v4/view/cc;->d(Landroid/view/View;)V

    .line 95
    return-void
.end method

.method public d(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0, p1}, Landroid/support/v4/view/cc;->d(Landroid/view/View;)V

    .line 189
    return-void
.end method
