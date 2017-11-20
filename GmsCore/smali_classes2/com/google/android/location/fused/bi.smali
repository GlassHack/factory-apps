.class final Lcom/google/android/location/fused/bi;
.super Lcom/google/android/location/fused/bl;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/fused/bg;


# direct methods
.method private constructor <init>(Lcom/google/android/location/fused/bg;)V
    .locals 1

    .prologue
    .line 336
    iput-object p1, p0, Lcom/google/android/location/fused/bi;->a:Lcom/google/android/location/fused/bg;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/location/fused/bl;-><init>(Lcom/google/android/location/fused/bg;B)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/location/fused/bg;B)V
    .locals 0

    .prologue
    .line 336
    invoke-direct {p0, p1}, Lcom/google/android/location/fused/bi;-><init>(Lcom/google/android/location/fused/bg;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 342
    new-instance v0, Lcom/google/android/location/fused/bh;

    iget-object v1, p0, Lcom/google/android/location/fused/bi;->a:Lcom/google/android/location/fused/bg;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/fused/bh;-><init>(Lcom/google/android/location/fused/bg;B)V

    invoke-virtual {p0, v0}, Lcom/google/android/location/fused/bi;->a(Lcom/google/android/location/fused/bl;)Lcom/google/android/location/fused/bl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/location/fused/bl;->a(Z)V

    .line 344
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 338
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/google/android/location/fused/bi;->a:Lcom/google/android/location/fused/bg;

    invoke-virtual {v0}, Lcom/google/android/location/fused/bg;->a()V

    .line 349
    return-void
.end method
