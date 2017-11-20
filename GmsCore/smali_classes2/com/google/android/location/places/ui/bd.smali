.class public final Lcom/google/android/location/places/ui/bd;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/app/Activity;Lcom/google/android/gms/location/places/h;IILcom/google/android/location/places/ui/r;Lcom/google/android/gms/maps/model/LatLngBounds;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 39
    sget-object v0, Lcom/google/android/location/x;->f:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 43
    :cond_0
    const/4 v0, 0x4

    invoke-static {v0, p7, p9}, Lcom/google/android/location/places/au;->a(ILjava/lang/String;I)Lcom/google/c/f/b/n;

    move-result-object v0

    .line 45
    new-instance v1, Lcom/google/c/f/b/l;

    invoke-direct {v1}, Lcom/google/c/f/b/l;-><init>()V

    .line 46
    iput-object v1, v0, Lcom/google/c/f/b/n;->h:Lcom/google/c/f/b/l;

    .line 47
    if-eqz p1, :cond_1

    .line 48
    invoke-virtual {p1}, Lcom/google/android/gms/location/places/h;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/c/f/b/l;->a:Ljava/lang/String;

    .line 50
    :cond_1
    iput-object p8, v1, Lcom/google/c/f/b/l;->b:Ljava/lang/String;

    .line 51
    iget-object v2, p4, Lcom/google/android/location/places/ui/r;->a:Lcom/google/android/gms/location/places/PlaceFilter;

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/google/android/location/places/au;->a(Lcom/google/android/gms/location/places/PlaceFilter;Ljava/lang/String;)Lcom/google/c/f/b/k;

    move-result-object v2

    iput-object v2, v1, Lcom/google/c/f/b/l;->c:Lcom/google/c/f/b/k;

    .line 52
    invoke-static {p5}, Lcom/google/android/location/places/au;->a(Lcom/google/android/gms/maps/model/LatLngBounds;)Lcom/google/c/f/b/h;

    move-result-object v2

    iput-object v2, v1, Lcom/google/c/f/b/l;->d:Lcom/google/c/f/b/h;

    .line 53
    iget v2, p4, Lcom/google/android/location/places/ui/r;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/google/c/f/b/l;->e:Ljava/lang/Integer;

    .line 54
    const/4 v2, 0x3

    if-ne p2, v2, :cond_2

    .line 55
    iput-object p6, v1, Lcom/google/c/f/b/l;->f:Ljava/lang/String;

    .line 57
    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/google/c/f/b/l;->g:Ljava/lang/Integer;

    .line 58
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/google/c/f/b/l;->h:Ljava/lang/Integer;

    .line 61
    invoke-static {p0, v0}, Lcom/google/android/location/places/PlaylogService;->a(Landroid/content/Context;Lcom/google/c/f/b/n;)V

    goto :goto_0
.end method
