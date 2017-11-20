.class final Lcom/google/android/location/places/d/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/places/c/k;


# instance fields
.field final synthetic a:Lcom/google/android/location/places/d/e;


# direct methods
.method constructor <init>(Lcom/google/android/location/places/d/e;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/google/android/location/places/d/f;->a:Lcom/google/android/location/places/d/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 235
    check-cast p1, Lcom/google/android/location/places/c/g;

    iget-object v0, p0, Lcom/google/android/location/places/d/f;->a:Lcom/google/android/location/places/d/e;

    iget-object v1, p0, Lcom/google/android/location/places/d/f;->a:Lcom/google/android/location/places/d/e;

    invoke-static {v1}, Lcom/google/android/location/places/d/e;->a(Lcom/google/android/location/places/d/e;)Lcom/google/android/location/places/Subscription;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/location/places/d/e;->a(Lcom/google/android/location/places/Subscription;Lcom/google/android/location/places/c/g;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/android/location/places/d/f;->a:Lcom/google/android/location/places/d/e;

    invoke-virtual {v0, p1}, Lcom/google/android/location/places/d/e;->a(Ljava/lang/Throwable;)V

    .line 244
    return-void
.end method
