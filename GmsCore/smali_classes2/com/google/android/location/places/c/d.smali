.class final Lcom/google/android/location/places/c/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Throwable;

.field final synthetic b:Lcom/google/android/location/places/c/c;


# direct methods
.method constructor <init>(Lcom/google/android/location/places/c/c;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/android/location/places/c/d;->b:Lcom/google/android/location/places/c/c;

    iput-object p2, p0, Lcom/google/android/location/places/c/d;->a:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/location/places/c/d;->b:Lcom/google/android/location/places/c/c;

    iget-object v0, v0, Lcom/google/android/location/places/c/c;->a:Lcom/google/android/location/places/c/k;

    iget-object v1, p0, Lcom/google/android/location/places/c/d;->a:Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lcom/google/android/location/places/c/k;->a(Ljava/lang/Throwable;)V

    .line 51
    return-void
.end method
