.class final Lcom/google/android/location/places/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/location/places/e;


# direct methods
.method constructor <init>(Lcom/google/android/location/places/e;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lcom/google/android/location/places/f;->a:Lcom/google/android/location/places/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/google/android/location/places/f;->a:Lcom/google/android/location/places/e;

    iget-object v0, v0, Lcom/google/android/location/places/e;->h:Lcom/google/android/location/places/b;

    iget-object v1, p0, Lcom/google/android/location/places/f;->a:Lcom/google/android/location/places/e;

    invoke-virtual {v0, v1}, Lcom/google/android/location/places/b;->a(Lcom/google/android/location/places/e;)V

    .line 429
    return-void
.end method
