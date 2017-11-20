.class final Lcom/google/android/location/places/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/location/places/i;


# direct methods
.method constructor <init>(Lcom/google/android/location/places/i;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcom/google/android/location/places/j;->a:Lcom/google/android/location/places/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/google/android/location/places/j;->a:Lcom/google/android/location/places/i;

    iget-object v0, v0, Lcom/google/android/location/places/i;->g:Lcom/google/android/location/places/b;

    iget-object v1, p0, Lcom/google/android/location/places/j;->a:Lcom/google/android/location/places/i;

    invoke-virtual {v0, v1}, Lcom/google/android/location/places/b;->a(Lcom/google/android/location/places/i;)V

    .line 381
    return-void
.end method
