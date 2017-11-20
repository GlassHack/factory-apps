.class final Lcom/google/android/location/places/c/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/google/android/location/places/c/c;


# direct methods
.method constructor <init>(Lcom/google/android/location/places/c/c;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/android/location/places/c/e;->b:Lcom/google/android/location/places/c/c;

    iput-object p2, p0, Lcom/google/android/location/places/c/e;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/location/places/c/e;->b:Lcom/google/android/location/places/c/c;

    iget-object v0, v0, Lcom/google/android/location/places/c/c;->a:Lcom/google/android/location/places/c/k;

    iget-object v1, p0, Lcom/google/android/location/places/c/e;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/google/android/location/places/c/k;->a(Ljava/lang/Object;)V

    .line 60
    return-void
.end method
