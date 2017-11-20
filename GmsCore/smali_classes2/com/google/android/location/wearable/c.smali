.class final Lcom/google/android/location/wearable/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/ab;


# instance fields
.field final synthetic a:Lcom/google/android/location/wearable/b;


# direct methods
.method constructor <init>(Lcom/google/android/location/wearable/b;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/android/location/wearable/c;->a:Lcom/google/android/location/wearable/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/common/api/aa;)V
    .locals 3

    .prologue
    .line 90
    check-cast p1, Lcom/google/android/gms/wearable/u;

    invoke-interface {p1}, Lcom/google/android/gms/wearable/u;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/s;

    iget-object v2, p0, Lcom/google/android/location/wearable/c;->a:Lcom/google/android/location/wearable/b;

    invoke-virtual {v2, v0}, Lcom/google/android/location/wearable/b;->a(Lcom/google/android/gms/wearable/s;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/location/wearable/c;->a:Lcom/google/android/location/wearable/b;

    invoke-virtual {v0}, Lcom/google/android/location/wearable/b;->a()Z

    return-void
.end method
