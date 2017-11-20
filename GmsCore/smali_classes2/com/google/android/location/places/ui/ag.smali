.class final Lcom/google/android/location/places/ui/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/location/places/h;

.field final synthetic b:Lcom/google/android/location/places/ui/ae;


# direct methods
.method constructor <init>(Lcom/google/android/location/places/ui/ae;Lcom/google/android/gms/location/places/h;)V
    .locals 0

    .prologue
    .line 449
    iput-object p1, p0, Lcom/google/android/location/places/ui/ag;->b:Lcom/google/android/location/places/ui/ae;

    iput-object p2, p0, Lcom/google/android/location/places/ui/ag;->a:Lcom/google/android/gms/location/places/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 452
    iget-object v0, p0, Lcom/google/android/location/places/ui/ag;->b:Lcom/google/android/location/places/ui/ae;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/ae;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/google/android/location/places/ui/ag;->b:Lcom/google/android/location/places/ui/ae;

    invoke-static {v0}, Lcom/google/android/location/places/ui/ae;->c(Lcom/google/android/location/places/ui/ae;)Z

    .line 454
    iget-object v0, p0, Lcom/google/android/location/places/ui/ag;->b:Lcom/google/android/location/places/ui/ae;

    invoke-static {v0}, Lcom/google/android/location/places/ui/ae;->b(Lcom/google/android/location/places/ui/ae;)Lcom/google/android/location/places/ui/k;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/places/ui/ag;->a:Lcom/google/android/gms/location/places/h;

    invoke-virtual {v0, v1}, Lcom/google/android/location/places/ui/k;->a(Lcom/google/android/gms/location/places/h;)V

    .line 456
    :cond_0
    return-void
.end method
