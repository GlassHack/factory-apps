.class Lcom/google/common/base/Randoms$ReadOnlyRandom;
.super Ljava/util/Random;
.source "Randoms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Randoms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReadOnlyRandom"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xc765766f5fa5db6L


# instance fields
.field private initializationComplete:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/base/Randoms$ReadOnlyRandom;->initializationComplete:Z

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/base/Randoms$ReadOnlyRandom;->initializationComplete:Z

    .line 134
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/base/Randoms$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/common/base/Randoms$1;

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/google/common/base/Randoms$ReadOnlyRandom;-><init>()V

    return-void
.end method


# virtual methods
.method public setSeed(J)V
    .locals 3
    .param p1, "seed"    # J

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/google/common/base/Randoms$ReadOnlyRandom;->initializationComplete:Z

    if-eqz v0, :cond_0

    .line 139
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Setting the seed on the shared Random object is not permitted"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/util/Random;->setSeed(J)V

    .line 143
    return-void
.end method
