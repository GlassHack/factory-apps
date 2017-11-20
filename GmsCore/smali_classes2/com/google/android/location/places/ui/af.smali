.class final Lcom/google/android/location/places/ui/af;
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
    .line 320
    iput-object p1, p0, Lcom/google/android/location/places/ui/af;->a:Lcom/google/android/location/places/ui/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/google/android/location/places/ui/af;->a:Lcom/google/android/location/places/ui/ae;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/ae;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/places/ui/af;->a:Lcom/google/android/location/places/ui/ae;

    invoke-static {v0}, Lcom/google/android/location/places/ui/ae;->a(Lcom/google/android/location/places/ui/ae;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/places/ui/af;->a:Lcom/google/android/location/places/ui/ae;

    invoke-static {v0}, Lcom/google/android/location/places/ui/ae;->b(Lcom/google/android/location/places/ui/ae;)Lcom/google/android/location/places/ui/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/k;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/google/android/location/places/ui/af;->a:Lcom/google/android/location/places/ui/ae;

    invoke-static {v0}, Lcom/google/android/location/places/ui/ae;->b(Lcom/google/android/location/places/ui/ae;)Lcom/google/android/location/places/ui/k;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/location/places/ui/k;->a(Lcom/google/android/gms/location/places/h;)V

    goto :goto_0
.end method
