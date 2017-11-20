.class final Lcom/google/android/location/places/ui/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/location/places/ui/a;


# direct methods
.method constructor <init>(Lcom/google/android/location/places/ui/a;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/google/android/location/places/ui/b;->a:Lcom/google/android/location/places/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/android/location/places/ui/b;->a:Lcom/google/android/location/places/ui/a;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/a;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/places/ui/b;->a:Lcom/google/android/location/places/ui/a;

    invoke-static {v0}, Lcom/google/android/location/places/ui/a;->a(Lcom/google/android/location/places/ui/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/places/ui/b;->a:Lcom/google/android/location/places/ui/a;

    invoke-static {v0}, Lcom/google/android/location/places/ui/a;->b(Lcom/google/android/location/places/ui/a;)Lcom/google/android/location/places/ui/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/s;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/google/android/location/places/ui/b;->a:Lcom/google/android/location/places/ui/a;

    invoke-static {v0}, Lcom/google/android/location/places/ui/a;->b(Lcom/google/android/location/places/ui/a;)Lcom/google/android/location/places/ui/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/s;->a()V

    goto :goto_0
.end method
