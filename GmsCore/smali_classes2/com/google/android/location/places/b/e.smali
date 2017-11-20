.class final Lcom/google/android/location/places/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/location/places/Subscription;

.field final synthetic b:Lcom/google/android/location/places/b/d;


# direct methods
.method constructor <init>(Lcom/google/android/location/places/b/d;Lcom/google/android/location/places/Subscription;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/google/android/location/places/b/e;->b:Lcom/google/android/location/places/b/d;

    iput-object p2, p0, Lcom/google/android/location/places/b/e;->a:Lcom/google/android/location/places/Subscription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/location/places/b/e;->b:Lcom/google/android/location/places/b/d;

    iget-object v1, p0, Lcom/google/android/location/places/b/e;->a:Lcom/google/android/location/places/Subscription;

    invoke-static {v0, v1}, Lcom/google/android/location/places/b/d;->a(Lcom/google/android/location/places/b/d;Lcom/google/android/location/places/Subscription;)V

    .line 132
    return-void
.end method
