.class final Lcom/google/android/location/places/ui/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/location/places/ui/ae;


# direct methods
.method constructor <init>(Lcom/google/android/location/places/ui/ae;)V
    .locals 0

    .prologue
    .line 523
    iput-object p1, p0, Lcom/google/android/location/places/ui/ak;->a:Lcom/google/android/location/places/ui/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 526
    iget-object v0, p0, Lcom/google/android/location/places/ui/ak;->a:Lcom/google/android/location/places/ui/ae;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/ae;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/places/ui/ak;->a:Lcom/google/android/location/places/ui/ae;

    invoke-static {v0}, Lcom/google/android/location/places/ui/ae;->e(Lcom/google/android/location/places/ui/ae;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/places/ui/ak;->a:Lcom/google/android/location/places/ui/ae;

    invoke-static {v0}, Lcom/google/android/location/places/ui/ae;->g(Lcom/google/android/location/places/ui/ae;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 529
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/places/ui/ak;->a:Lcom/google/android/location/places/ui/ae;

    new-instance v1, Lcom/google/android/location/places/ui/al;

    invoke-direct {v1, p0}, Lcom/google/android/location/places/ui/al;-><init>(Lcom/google/android/location/places/ui/ak;)V

    invoke-static {v0, v1}, Lcom/google/android/location/places/ui/ae;->b(Lcom/google/android/location/places/ui/ae;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
