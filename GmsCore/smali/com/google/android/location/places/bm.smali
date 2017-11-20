.class public final Lcom/google/android/location/places/bm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/location/b/af;

.field private final b:I

.field private final c:Lcom/google/android/location/b/aj;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/google/android/location/places/bn;

    invoke-direct {v0, p0}, Lcom/google/android/location/places/bn;-><init>(Lcom/google/android/location/places/bm;)V

    iput-object v0, p0, Lcom/google/android/location/places/bm;->c:Lcom/google/android/location/b/aj;

    .line 34
    iput p2, p0, Lcom/google/android/location/places/bm;->b:I

    .line 35
    new-instance v0, Lcom/google/android/location/b/af;

    const-class v1, Lcom/google/android/location/internal/GoogleLocationManagerService;

    iget-object v2, p0, Lcom/google/android/location/places/bm;->c:Lcom/google/android/location/b/aj;

    iget v3, p0, Lcom/google/android/location/places/bm;->b:I

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/google/android/location/b/af;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/google/android/location/b/aj;I)V

    iput-object v0, p0, Lcom/google/android/location/places/bm;->a:Lcom/google/android/location/b/af;

    .line 40
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/location/places/bm;->a:Lcom/google/android/location/b/af;

    invoke-virtual {v0}, Lcom/google/android/location/b/af;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/location/places/bm;->a:Lcom/google/android/location/b/af;

    invoke-virtual {v0, p1}, Lcom/google/android/location/b/af;->c(Landroid/content/Intent;)V

    .line 85
    return-void
.end method

.method public final a(Lcom/google/android/location/places/Subscription;)V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/location/places/bm;->a:Lcom/google/android/location/b/af;

    invoke-virtual {v0, p1}, Lcom/google/android/location/b/af;->a(Landroid/os/Parcelable;)V

    .line 56
    return-void
.end method

.method public final b(Lcom/google/android/location/places/Subscription;)Lcom/google/android/location/places/Subscription;
    .locals 4

    .prologue
    .line 65
    const/4 v1, 0x0

    .line 66
    invoke-virtual {p0}, Lcom/google/android/location/places/bm;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/places/Subscription;

    .line 67
    iget-object v3, p0, Lcom/google/android/location/places/bm;->c:Lcom/google/android/location/b/aj;

    invoke-interface {v3, v0, p1}, Lcom/google/android/location/b/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 72
    :goto_0
    iget-object v1, p0, Lcom/google/android/location/places/bm;->a:Lcom/google/android/location/b/af;

    invoke-virtual {v1, p1}, Lcom/google/android/location/b/af;->b(Landroid/os/Parcelable;)V

    .line 73
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final b(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 92
    invoke-static {p1}, Lcom/google/android/location/b/af;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/google/android/location/b/af;->b(Landroid/content/Intent;)I

    move-result v0

    iget v1, p0, Lcom/google/android/location/places/bm;->b:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
