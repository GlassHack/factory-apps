.class Lcom/android/location/fused/FusionEngine$ProviderStats;
.super Ljava/lang/Object;
.source "FusionEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/location/fused/FusionEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProviderStats"
.end annotation


# instance fields
.field public available:Z

.field public minTime:J

.field public requestTime:J

.field public requested:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/location/fused/FusionEngine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/location/fused/FusionEngine$1;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/location/fused/FusionEngine$ProviderStats;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .local v0, "s":Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Lcom/android/location/fused/FusionEngine$ProviderStats;->available:Z

    if-eqz v1, :cond_0

    const-string v1, "AVAILABLE"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget-boolean v1, p0, Lcom/android/location/fused/FusionEngine$ProviderStats;->requested:Z

    if-eqz v1, :cond_1

    const-string v1, " REQUESTED"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 125
    :cond_0
    const-string v1, "UNAVAILABLE"

    goto :goto_0

    .line 126
    :cond_1
    const-string v1, " ---"

    goto :goto_1
.end method
