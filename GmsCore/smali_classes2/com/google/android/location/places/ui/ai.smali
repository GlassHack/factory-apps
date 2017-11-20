.class final Lcom/google/android/location/places/ui/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[Lcom/google/android/gms/location/places/h;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/location/places/ui/ae;


# direct methods
.method constructor <init>(Lcom/google/android/location/places/ui/ae;[Lcom/google/android/gms/location/places/h;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 477
    iput-object p1, p0, Lcom/google/android/location/places/ui/ai;->c:Lcom/google/android/location/places/ui/ae;

    iput-object p2, p0, Lcom/google/android/location/places/ui/ai;->a:[Lcom/google/android/gms/location/places/h;

    iput-object p3, p0, Lcom/google/android/location/places/ui/ai;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 480
    iget-object v0, p0, Lcom/google/android/location/places/ui/ai;->c:Lcom/google/android/location/places/ui/ae;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/ae;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/places/ui/ai;->c:Lcom/google/android/location/places/ui/ae;

    invoke-static {v0}, Lcom/google/android/location/places/ui/ae;->e(Lcom/google/android/location/places/ui/ae;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 516
    :cond_0
    :goto_0
    return-void

    .line 483
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/places/ui/ai;->c:Lcom/google/android/location/places/ui/ae;

    invoke-static {v0}, Lcom/google/android/location/places/ui/ae;->b(Lcom/google/android/location/places/ui/ae;)Lcom/google/android/location/places/ui/k;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/places/ui/ai;->a:[Lcom/google/android/gms/location/places/h;

    iget-object v2, p0, Lcom/google/android/location/places/ui/ai;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/location/places/ui/k;->a([Lcom/google/android/gms/location/places/h;Ljava/lang/String;)V

    .line 484
    iget-object v0, p0, Lcom/google/android/location/places/ui/ai;->c:Lcom/google/android/location/places/ui/ae;

    invoke-static {v0}, Lcom/google/android/location/places/ui/ae;->f(Lcom/google/android/location/places/ui/ae;)Lcom/google/android/location/places/ui/MarkerMapFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/places/ui/ai;->a:[Lcom/google/android/gms/location/places/h;

    invoke-virtual {v0, v1}, Lcom/google/android/location/places/ui/MarkerMapFragment;->a([Lcom/google/android/gms/location/places/h;)V

    .line 485
    iget-object v0, p0, Lcom/google/android/location/places/ui/ai;->c:Lcom/google/android/location/places/ui/ae;

    invoke-static {v0}, Lcom/google/android/location/places/ui/ae;->g(Lcom/google/android/location/places/ui/ae;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 486
    iget-object v0, p0, Lcom/google/android/location/places/ui/ai;->a:[Lcom/google/android/gms/location/places/h;

    array-length v0, v0

    if-eqz v0, :cond_2

    .line 488
    iget-object v0, p0, Lcom/google/android/location/places/ui/ai;->c:Lcom/google/android/location/places/ui/ae;

    invoke-static {v0}, Lcom/google/android/location/places/ui/ae;->f(Lcom/google/android/location/places/ui/ae;)Lcom/google/android/location/places/ui/MarkerMapFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/places/ui/ai;->a:[Lcom/google/android/gms/location/places/h;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/google/android/location/places/ui/MarkerMapFragment;->a(Lcom/google/android/gms/location/places/h;)V

    .line 489
    iget-object v0, p0, Lcom/google/android/location/places/ui/ai;->c:Lcom/google/android/location/places/ui/ae;

    invoke-static {v0}, Lcom/google/android/location/places/ui/ae;->f(Lcom/google/android/location/places/ui/ae;)Lcom/google/android/location/places/ui/MarkerMapFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/places/ui/ai;->a:[Lcom/google/android/gms/location/places/h;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/google/android/location/places/ui/MarkerMapFragment;->b(Lcom/google/android/gms/location/places/h;)V

    .line 490
    iget-object v0, p0, Lcom/google/android/location/places/ui/ai;->c:Lcom/google/android/location/places/ui/ae;

    invoke-static {v0}, Lcom/google/android/location/places/ui/ae;->b(Lcom/google/android/location/places/ui/ae;)Lcom/google/android/location/places/ui/k;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/places/ui/ai;->a:[Lcom/google/android/gms/location/places/h;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/google/android/location/places/ui/k;->a(Lcom/google/android/gms/location/places/h;)V

    .line 510
    :goto_1
    iget-object v0, p0, Lcom/google/android/location/places/ui/ai;->c:Lcom/google/android/location/places/ui/ae;

    invoke-static {v0}, Lcom/google/android/location/places/ui/ae;->h(Lcom/google/android/location/places/ui/ae;)Lcom/google/android/location/places/ui/r;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/location/places/ui/r;->d:Z

    if-nez v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/google/android/location/places/ui/ai;->c:Lcom/google/android/location/places/ui/ae;

    invoke-static {v0}, Lcom/google/android/location/places/ui/ae;->b(Lcom/google/android/location/places/ui/ae;)Lcom/google/android/location/places/ui/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/k;->P()V

    goto :goto_0

    .line 493
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/places/ui/ai;->c:Lcom/google/android/location/places/ui/ae;

    invoke-static {v0}, Lcom/google/android/location/places/ui/ae;->h(Lcom/google/android/location/places/ui/ae;)Lcom/google/android/location/places/ui/r;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/location/places/ui/r;->d:Z

    if-eqz v0, :cond_3

    .line 494
    iget-object v0, p0, Lcom/google/android/location/places/ui/ai;->c:Lcom/google/android/location/places/ui/ae;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/location/places/ui/ae;->a(Lcom/google/android/location/places/ui/ae;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 496
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/places/ui/ai;->c:Lcom/google/android/location/places/ui/ae;

    new-instance v1, Lcom/google/android/location/places/ui/aj;

    invoke-direct {v1, p0}, Lcom/google/android/location/places/ui/aj;-><init>(Lcom/google/android/location/places/ui/ai;)V

    invoke-static {v0, v1}, Lcom/google/android/location/places/ui/ae;->a(Lcom/google/android/location/places/ui/ae;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 513
    :cond_4
    iget-object v0, p0, Lcom/google/android/location/places/ui/ai;->c:Lcom/google/android/location/places/ui/ae;

    invoke-static {v0}, Lcom/google/android/location/places/ui/ae;->h(Lcom/google/android/location/places/ui/ae;)Lcom/google/android/location/places/ui/r;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/location/places/ui/r;->e:Z

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/google/android/location/places/ui/ai;->c:Lcom/google/android/location/places/ui/ae;

    invoke-static {v0}, Lcom/google/android/location/places/ui/ae;->b(Lcom/google/android/location/places/ui/ae;)Lcom/google/android/location/places/ui/k;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/places/ui/ai;->c:Lcom/google/android/location/places/ui/ae;

    invoke-static {v1}, Lcom/google/android/location/places/ui/ae;->k(Lcom/google/android/location/places/ui/ae;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/location/places/ui/k;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
