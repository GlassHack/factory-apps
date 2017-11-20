.class final Lcom/google/android/location/places/ui/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/location/places/ui/ai;


# direct methods
.method constructor <init>(Lcom/google/android/location/places/ui/ai;)V
    .locals 0

    .prologue
    .line 496
    iput-object p1, p0, Lcom/google/android/location/places/ui/aj;->a:Lcom/google/android/location/places/ui/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/google/android/location/places/ui/aj;->a:Lcom/google/android/location/places/ui/ai;

    iget-object v0, v0, Lcom/google/android/location/places/ui/ai;->c:Lcom/google/android/location/places/ui/ae;

    invoke-static {v0}, Lcom/google/android/location/places/ui/ae;->i(Lcom/google/android/location/places/ui/ae;)V

    .line 502
    iget-object v0, p0, Lcom/google/android/location/places/ui/aj;->a:Lcom/google/android/location/places/ui/ai;

    iget-object v0, v0, Lcom/google/android/location/places/ui/ai;->c:Lcom/google/android/location/places/ui/ae;

    invoke-static {v0}, Lcom/google/android/location/places/ui/ae;->j(Lcom/google/android/location/places/ui/ae;)Z

    .line 503
    iget-object v0, p0, Lcom/google/android/location/places/ui/aj;->a:Lcom/google/android/location/places/ui/ai;

    iget-object v0, v0, Lcom/google/android/location/places/ui/ai;->c:Lcom/google/android/location/places/ui/ae;

    invoke-static {v0}, Lcom/google/android/location/places/ui/ae;->d(Lcom/google/android/location/places/ui/ae;)Lcom/google/android/location/places/ui/be;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/be;->P()V

    .line 504
    iget-object v0, p0, Lcom/google/android/location/places/ui/aj;->a:Lcom/google/android/location/places/ui/ai;

    iget-object v0, v0, Lcom/google/android/location/places/ui/ai;->c:Lcom/google/android/location/places/ui/ae;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/ae;->a()V

    .line 505
    return-void
.end method
