.class final Lcom/google/android/location/internal/server/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/location/internal/server/o;

.field final b:Lcom/google/android/location/internal/server/o;

.field final synthetic c:Lcom/google/android/location/internal/server/i;


# direct methods
.method private constructor <init>(Lcom/google/android/location/internal/server/i;)V
    .locals 2

    .prologue
    .line 580
    iput-object p1, p0, Lcom/google/android/location/internal/server/k;->c:Lcom/google/android/location/internal/server/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 581
    new-instance v0, Lcom/google/android/location/internal/server/o;

    iget-object v1, p0, Lcom/google/android/location/internal/server/k;->c:Lcom/google/android/location/internal/server/i;

    invoke-static {v1}, Lcom/google/android/location/internal/server/i;->a(Lcom/google/android/location/internal/server/i;)Ljava/util/HashMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/location/internal/server/o;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/android/location/internal/server/k;->a:Lcom/google/android/location/internal/server/o;

    .line 583
    new-instance v0, Lcom/google/android/location/internal/server/o;

    iget-object v1, p0, Lcom/google/android/location/internal/server/k;->c:Lcom/google/android/location/internal/server/i;

    invoke-static {v1}, Lcom/google/android/location/internal/server/i;->a(Lcom/google/android/location/internal/server/i;)Ljava/util/HashMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/location/internal/server/o;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/android/location/internal/server/k;->b:Lcom/google/android/location/internal/server/o;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/location/internal/server/i;B)V
    .locals 0

    .prologue
    .line 580
    invoke-direct {p0, p1}, Lcom/google/android/location/internal/server/k;-><init>(Lcom/google/android/location/internal/server/i;)V

    return-void
.end method
