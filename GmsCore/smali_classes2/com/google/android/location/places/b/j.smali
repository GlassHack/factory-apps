.class final Lcom/google/android/location/places/b/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/places/aa;


# instance fields
.field final synthetic a:Lcom/google/android/location/places/b/f;


# direct methods
.method constructor <init>(Lcom/google/android/location/places/b/f;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/google/android/location/places/b/j;->a:Lcom/google/android/location/places/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/util/List;)V
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/google/android/location/places/b/j;->a:Lcom/google/android/location/places/b/f;

    iget-object v0, v0, Lcom/google/android/location/places/b/f;->e:Lcom/google/android/location/places/b/d;

    invoke-static {v0}, Lcom/google/android/location/places/b/d;->c(Lcom/google/android/location/places/b/d;)Lcom/google/android/location/places/bo;

    move-result-object v0

    new-instance v1, Lcom/google/android/location/places/b/k;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/location/places/b/k;-><init>(Lcom/google/android/location/places/b/j;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/google/android/location/places/bo;->a(Ljava/lang/Runnable;)Z

    .line 297
    return-void
.end method
