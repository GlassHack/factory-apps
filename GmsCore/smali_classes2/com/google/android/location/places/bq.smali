.class final Lcom/google/android/location/places/bq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/location/places/bp;

.field private b:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/google/android/location/places/bp;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/google/android/location/places/bq;->a:Lcom/google/android/location/places/bp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p2, p0, Lcom/google/android/location/places/bq;->b:Ljava/util/List;

    .line 104
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/location/places/bq;->a:Lcom/google/android/location/places/bp;

    invoke-static {v0}, Lcom/google/android/location/places/bp;->c(Lcom/google/android/location/places/bp;)Lcom/google/android/location/places/w;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/google/android/location/places/bq;->a:Lcom/google/android/location/places/bp;

    invoke-static {v0}, Lcom/google/android/location/places/bp;->c(Lcom/google/android/location/places/bp;)Lcom/google/android/location/places/w;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/places/bq;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/google/android/location/places/w;->a(Ljava/util/List;)V

    .line 111
    :cond_0
    return-void
.end method
