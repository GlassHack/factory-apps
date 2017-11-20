.class final Lcom/google/android/location/places/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/places/w;


# instance fields
.field final synthetic a:Lcom/google/android/location/places/x;


# direct methods
.method constructor <init>(Lcom/google/android/location/places/x;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/android/location/places/y;->a:Lcom/google/android/location/places/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/location/places/y;->a:Lcom/google/android/location/places/x;

    iget-object v0, v0, Lcom/google/android/location/places/x;->d:Lcom/google/android/location/places/w;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/google/android/location/places/y;->a:Lcom/google/android/location/places/x;

    iget-object v0, v0, Lcom/google/android/location/places/x;->d:Lcom/google/android/location/places/w;

    invoke-interface {v0, p1}, Lcom/google/android/location/places/w;->a(Ljava/util/List;)V

    .line 100
    :cond_0
    return-void
.end method
