.class final Lcom/google/android/location/places/ui/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/location/places/h;

.field final synthetic b:Lcom/google/android/location/places/ui/a;


# direct methods
.method constructor <init>(Lcom/google/android/location/places/ui/a;Lcom/google/android/gms/location/places/h;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/google/android/location/places/ui/c;->b:Lcom/google/android/location/places/ui/a;

    iput-object p2, p0, Lcom/google/android/location/places/ui/c;->a:Lcom/google/android/gms/location/places/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/android/location/places/ui/c;->b:Lcom/google/android/location/places/ui/a;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/a;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/google/android/location/places/ui/c;->b:Lcom/google/android/location/places/ui/a;

    invoke-static {v0}, Lcom/google/android/location/places/ui/a;->c(Lcom/google/android/location/places/ui/a;)Z

    .line 263
    iget-object v0, p0, Lcom/google/android/location/places/ui/c;->b:Lcom/google/android/location/places/ui/a;

    invoke-static {v0}, Lcom/google/android/location/places/ui/a;->b(Lcom/google/android/location/places/ui/a;)Lcom/google/android/location/places/ui/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/s;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/google/android/location/places/ui/c;->b:Lcom/google/android/location/places/ui/a;

    invoke-static {v0}, Lcom/google/android/location/places/ui/a;->b(Lcom/google/android/location/places/ui/a;)Lcom/google/android/location/places/ui/s;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/places/ui/c;->a:Lcom/google/android/gms/location/places/h;

    invoke-virtual {v0, v1}, Lcom/google/android/location/places/ui/s;->a(Lcom/google/android/gms/location/places/h;)V

    .line 267
    :cond_0
    return-void
.end method
