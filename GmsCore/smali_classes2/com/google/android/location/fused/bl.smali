.class abstract Lcom/google/android/location/fused/bl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic c:Lcom/google/android/location/fused/bg;


# direct methods
.method private constructor <init>(Lcom/google/android/location/fused/bg;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/google/android/location/fused/bl;->c:Lcom/google/android/location/fused/bg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/location/fused/bg;B)V
    .locals 0

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lcom/google/android/location/fused/bl;-><init>(Lcom/google/android/location/fused/bg;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/location/fused/bl;)Lcom/google/android/location/fused/bl;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/android/location/fused/bl;->c:Lcom/google/android/location/fused/bg;

    iget-object v0, v0, Lcom/google/android/location/fused/bg;->f:Lcom/google/android/location/fused/bl;

    invoke-virtual {v0}, Lcom/google/android/location/fused/bl;->c()V

    .line 265
    iget-object v0, p0, Lcom/google/android/location/fused/bl;->c:Lcom/google/android/location/fused/bg;

    iput-object p1, v0, Lcom/google/android/location/fused/bg;->f:Lcom/google/android/location/fused/bl;

    .line 266
    invoke-virtual {p1}, Lcom/google/android/location/fused/bl;->b()V

    .line 267
    return-object p1
.end method

.method public a()V
    .locals 0

    .prologue
    .line 220
    return-void
.end method

.method public a(Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 256
    return-void
.end method

.method public abstract a(Z)V
.end method

.method public b()V
    .locals 0

    .prologue
    .line 232
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 237
    return-void
.end method

.method public e()J
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/android/location/fused/bl;->c:Lcom/google/android/location/fused/bg;

    iget-object v0, v0, Lcom/google/android/location/fused/bg;->e:Lcom/google/android/location/fused/av;

    iget-wide v0, v0, Lcom/google/android/location/fused/av;->b:J

    return-wide v0
.end method

.method public f()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/android/location/fused/bl;->c:Lcom/google/android/location/fused/bg;

    iget-object v0, v0, Lcom/google/android/location/fused/bg;->e:Lcom/google/android/location/fused/av;

    iget-object v0, v0, Lcom/google/android/location/fused/av;->f:Ljava/util/Collection;

    return-object v0
.end method

.method public final g()V
    .locals 3

    .prologue
    .line 226
    new-instance v0, Lcom/google/android/location/fused/bi;

    iget-object v1, p0, Lcom/google/android/location/fused/bl;->c:Lcom/google/android/location/fused/bg;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/fused/bi;-><init>(Lcom/google/android/location/fused/bg;B)V

    invoke-virtual {p0, v0}, Lcom/google/android/location/fused/bl;->a(Lcom/google/android/location/fused/bl;)Lcom/google/android/location/fused/bl;

    .line 227
    return-void
.end method
