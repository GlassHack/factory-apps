.class final Lcom/google/android/location/internal/server/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/location/internal/server/o;

.field final synthetic b:Lcom/google/android/location/internal/server/b;


# direct methods
.method private constructor <init>(Lcom/google/android/location/internal/server/b;)V
    .locals 2

    .prologue
    .line 300
    iput-object p1, p0, Lcom/google/android/location/internal/server/d;->b:Lcom/google/android/location/internal/server/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    new-instance v0, Lcom/google/android/location/internal/server/o;

    iget-object v1, p0, Lcom/google/android/location/internal/server/d;->b:Lcom/google/android/location/internal/server/b;

    iget-object v1, v1, Lcom/google/android/location/internal/server/b;->b:Ljava/util/Map;

    invoke-direct {v0, v1}, Lcom/google/android/location/internal/server/o;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/android/location/internal/server/d;->a:Lcom/google/android/location/internal/server/o;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/location/internal/server/b;B)V
    .locals 0

    .prologue
    .line 300
    invoke-direct {p0, p1}, Lcom/google/android/location/internal/server/d;-><init>(Lcom/google/android/location/internal/server/b;)V

    return-void
.end method
